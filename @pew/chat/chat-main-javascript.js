$(document).ready(function(){
    /*INITIALIZATION VAR*/
    var chatReady = false;
    var chatOpen = false;
    var objSectionChat = $(".efectus-web-chat");
    var objIconChat = $(".efectus-web-chat .icon-chat");
    var objDisplayChat = $(".efectus-web-chat .display-chat");
    var objLoginField = $(".efectus-web-chat .login-field");
    var startDelay = 100;
    var animationDelay = 200;
    var chatSessionSet = $("#cewSessionEmail").val() != "null" ? true : false;
    var activeTime = $("#cewSessionActivity").val();
    var mainSessionRef = $("#cewSessionRef").val();
    var pewSide = $("#pewSide").val();
    var viewingMessage = false;
    var to_company_message = false;
    /*END INITIALIZATION VAR*/

    /*SCREENS VARS*/
    var conversationScreenOpen = false;
    var chatListScreenOpen = false;
    var moreOptionToolOpen = false;
    /*END SCREENS VARS*/

    function startChatSettings(){/*EVERY VERIFICATION BEFORE THE CHAT START*/
        /*ANIMATION BLOCK*/
        objSectionChat.css({
            width: "20px",
            height: "20px",
            transform: "rotate(210deg)"
        });
        setTimeout(function(){
            objSectionChat.css({
                height: "60px",
                transform: "rotate(200deg)"
            });
            setTimeout(function(){
                objSectionChat.css({
                    height: "80px",
                    width: "50px",
                    transform: "rotate(280deg)"
                });
                objIconChat.css({
                    fontSize: "2em",
                    color: "rgba(255, 255, 255, .3)",
                    lineHeight: "80px"
                });
                setTimeout(function(){
                    objSectionChat.css({
                        width: "80px",
                        transform: "rotate(0deg)"
                    });
                    objIconChat.css({
                        fontSize: "3em",
                        color: "rgba(255, 255, 255, 1)",
                        lineHeight: "75px"
                    });
                    chatReady = true;
                }, animationDelay);
            }, animationDelay);
        }, animationDelay);
        /*END ANIMATION BLOCK*/
        if(chatSessionSet){
            chatActivityStart();
        }
    }
    setTimeout(function(){
        startChatSettings();
    }, startDelay);

    /*DEFAULT FUNCTIONS*/
    function chatSessionStart(){
        var objLoginName = $(".efectus-web-chat .login-field #chatLoginName");
        var objLoginEmail = $(".efectus-web-chat .login-field #chatLoginEmail");
        var objLoginCompany = $(".efectus-web-chat .login-field #chatLoginCompany");
        var btnEntrar = $(".efectus-web-chat .login-field #btnEntrar");
        function validateFields(){
            var userName = null;
            var userEmail = null;
            var userCompany = null;
            function resetErrorMessage(){
                $(".error-message").each(function(){
                    $(this).remove();
                });
            }
            function validarEmail(email){
                usuario = email.substring(0, email.indexOf("@"));
                dominio = email.substring(email.indexOf("@")+ 1, email.length);
                if((usuario.length >=1) && (dominio.length >=3) && (usuario.search("@")==-1) && (dominio.search("@")==-1) && (usuario.search(" ")==-1) && (dominio.search(" ")==-1) && (dominio.search(".")!=-1) && (dominio.indexOf(".") >=1) && (dominio.lastIndexOf(".")     < dominio.length - 1)){
                    return true;
                }
                else{
                    return false;
                }
            }
            function validarCampos(focus){
                if(pewSide != "true"){
                    userName = objLoginName.val().trim();
                    userEmail = objLoginEmail.val().trim();
                    userCompany = objLoginCompany.val().trim();
                    resetErrorMessage();
                    if(userName.length < 3){
                        objLoginName.after("<h4 class='error-message'>O Campo nome deve conter no mínimo 3 caracteres.</h4>");
                        if(focus){
                            objLoginName.focus();
                        }
                        objLoginName.blur(function(){
                            validarCampos(false);
                        });
                        return false;
                    }
                    resetErrorMessage();
                    if(validarEmail(userEmail) == false){
                        objLoginEmail.after("<h4 class='error-message'>O Campo e-mail deve ser preenchido corretamente.</h4>");
                        if(focus){
                            objLoginEmail.focus();
                        }
                        objLoginEmail.blur(function(){
                            validarCampos(false);
                        });
                        return false;
                    }
                    resetErrorMessage();
                    return true;
                }else{
                    return true;
                }
            }
            function enviarDados(){
                if(validarCampos(true) == true){
                    btnEntrar.after("<br><br><h4 class='error-message'><i class='fa fa-spinner fa-pulse fa-3x fa-fw'></i></h4>");

                    var urlStartSession = "chat/chat-session-start.php";
                    $.ajax({
                        type: "POST",
                        url: urlStartSession,
                        data: {main_session_ref: mainSessionRef, user_name: userName, user_email: userEmail, user_company: userCompany},
                        error: function(){
                            $(".error-message").text("Ocorreu um erro ao iniciar o chat. Por favor recarregue a página e tente novamente.");
                        },
                        success: function(response){
                            if(response == "true"){
                                chatSessionSet = true;
                                $("#cewSessionRef").val(mainSessionRef);
                                chatListScreen(false, false);
                                chatActivityStart();
                                objLoginField.hide();
                            }else{
                                $(".error-message").text("Ocorreu um erro ao iniciar o chat. Por favor recarregue a página e tente novamente.");
                            }
                        }
                    });
                }   
            }
            enviarDados();
        }
        btnEntrar.off().on("click", function(){
            validateFields();
        });
    }

    /*THIS FUNCTION CHECKS IF THERE ARE UNREAD MESSAGES*/
    var originalTitle = document.title;
    var lastQuantPending = 0;
    var firstLoadPage = true;
    var reloadActiveConversation = false;
    var chatListMD5Info = null;
    function verifyPendingMessages(destinataryMessageRef){
        var urlMessagesPending = "chat/chat-pending-messages.php";
        function titleNotification(count){
            var notificationSound = new Audio("chat/sound/chat_sound_effect.ogg");
            if(count > 0){
                if(lastQuantPending != count && !firstLoadPage){
                    if(!viewingMessage){
                        notificationSound.play();
                    }
                    if(chatListScreenOpen){
                        chatListScreen(false, false);
                    }
                }
                lastQuantPending = count;
                var newTitle = "(" + count + ") " + originalTitle;
                document.title = newTitle;
                if(!chatOpen){
                    $(".icon-chat .pending-messages-count").show().text(count);   
                }
            }else{
                lastQuantPending = 0;
                document.title = originalTitle;
                $(".icon-chat .pending-messages-count").hide().text("0");   
            }
            firstLoadPage = false;
        }
        if(destinataryMessageRef == false){
            $.ajax({
                type: "POST",
                url: urlMessagesPending,
                data: {main_session_ref: mainSessionRef},
                error: function(){
                    console.log("Não foi possível atualizar as mensagens pendentes.");
                },
                success: function(response){
                    titleNotification(response);
                }
            });   
        }else{
            $.ajax({
                type: "POST",
                url: urlMessagesPending,
                data: {main_session_ref: mainSessionRef, destinatary_ref: destinataryMessageRef},
                error: function(){
                    console.log("Não foi possível atualizar as mensagens pendentes.");
                },
                success: function(response){
                    if(response > 0){
                        reloadActiveConversation = true;
                    }else{
                        reloadActiveConversation = false;
                    }
                }
            });
        }
    }

    /*THIS FUNCTION CONTROL THE ONLINE ACTIVE TIME AND ALSO CHECK THE STATUS OF ACTIVE CHATS*/
    /*NEED TO START WHEN THE PAGE LOADS OR WHEN THE USER MAKE THE LOGIN ON THE CHAT*/
    function chatActivityStart(){
        var refreshTime = 2500;
        var dbRefresh = false;
        setInterval(function(){
            activeTime = parseFloat(activeTime) + parseFloat(refreshTime);
            dbRefresh = parseFloat(activeTime) % 5000 == 0 ? true : false;
            var dbUpdate = "chat/chat-activity.php";
            if(dbRefresh){
                $.ajax({
                    type: "POST",
                    url: dbUpdate,
                    data: {type: "db", content: activeTime, main_session_ref: mainSessionRef},
                    error: function(){
                        console.log("Não foi possível atualizar o tempo de atividade.");
                    }
                });
            }
            $.ajax({
                type: "POST",
                url: dbUpdate,
                data: {type: "session", content: activeTime},
                error: function(){
                    console.log("Não foi possível atualizar o tempo de atividade da sessão.");
                }
            });
            verifyPendingMessages(false);
            if(conversationScreenOpen){
                var activeChatRef = activeConversation.messageDestinatary;
                $.ajax({
                    type: "POST",
                    url: dbUpdate,
                    data: {type: "status", content: activeChatRef},
                    error: function(){
                        console.log("Não foi possível atualizar o status da conversa ativa.");
                    },
                    success: function(getStatus){
                        if(activeConversation.status != getStatus){
                            activeConversation.status = getStatus;
                            var statusIcon = "<i class='fa fa-dot-circle-o' aria-hidden='true'></i> " + getStatus;
                            $(".chating-header-info .status").html(statusIcon);
                        }
                    }
                });
            }
            if(chatListScreenOpen){
                $.ajax({
                    type: "POST",
                    url: dbUpdate,
                    data: {type: "chatList", content: mainSessionRef},
                    error: function(){
                        console.log("Não foi possível atualizar a lista de chat.");
                    },
                    success: function(response){
                        var md5Response = MD5(response);
                        chatListMD5Info = chatListMD5Info == null ? md5Response : chatListMD5Info;
                        if(md5Response != chatListMD5Info){
                            chatListMD5Info = md5Response;
                            chatListScreen(true, false);
                        }
                    }
                });
            }
        }, refreshTime);
    }

    function openChat(){
        var chatHeight = screen.width <= 480 ? "450px" : "500px";
        /*ANIMATION BLOCK*/
        objSectionChat.css({
            width: "300px",
            height: chatHeight,
            borderRadius: "0px",
            transform: "rotate(0deg)",
        });
        objIconChat.css({
            transform: "rotate(0deg)",
            opacity: "0",
            visibility: "hidden"
        });
        /*ANIMATION BLOCK*/
        setTimeout(function(){
            chatOpen = true;
            objDisplayChat.css({
                visibility: "visible",
                opacity: "1"
            });
            if(!conversationScreenOpen){
                chatListScreen(false, false);
            }
            if(chatSessionSet){
                objLoginField.hide();
            }else{
                chatSessionStart();
            }
        }, animationDelay);
    }

    function minimizeChat(){
        /*ANIMATION BLOCK*/
        objDisplayChat.css({
            visibility: "hidden",
            opacity: "0"
        });
        objSectionChat.css({
            width: "80px",
            height: "80px",
            borderRadius: "50%",
            transform: "rotate(0deg)",
        });
        objIconChat.css({
            transform: "rotate(5deg)",
            opacity: "1",
            visibility: "visible"
        });
        /*ANIMATION BLOCK*/
        chatOpen = false;
    }

    /*NEXT FUNCTIONS USAGE VARS*/
    var websiteCompanyName = "Efectus Web";
    var websiteCompanyOccupation = "Desenvolvimento de Sites e Plataformas Web";/*maximo de 42 caracteres*/
    var objStandardInfo = $(".standard-header-info");
    var objHeaderInfo = $(".chating-header-info");
    var objChatList = $(".scrolling-field .chat-list");
    var objDisplayMessages = $(".scrolling-field .display-messages");
    var objWritingField = $(".efectus-web-chat .writing-field");
    var objMessageInput = $(".writing-field .message-input");
    var objBottomInfo = $(".efectus-web-chat .bottom-info");
    var objUserImg = $(".chating-header-info .display-user-img");
    var objUserName = $(".chating-header-info .informacoes .nome-usuario");
    var objUserCompany = $(".chating-header-info .informacoes .descricao-usuario");
    var viewCompanyIcon = "<i class='fa fa-briefcase' aria-hidden='true'></i>";
    var loadPendingMessages = false;
    var activeConversation = new Object();
    activeConversation.senderRef = mainSessionRef;
    activeConversation.messageDestinatary = null;
    activeConversation.messageUser = null;
    activeConversation.messageCompany = null;
    activeConversation.messageImg = null;
    activeConversation.status = null;
    /*END NEXT FUNCTIONS USAGE VARS*/

    function resetActiveConversation(){
        activeConversation.messageDestinatary = null;
        activeConversation.messageUser = null;
        activeConversation.messageCompany = null;
        activeConversation.messageImg = null;
        activeConversation.status = null;
    }

    function chatScrollBottom(){
        var loadedImages = false;
        var scrollAnimation = 100;
        function scroll(){
            var scrollField = $(".scrolling-field");
            scrollField.animate({
                scrollTop: 1E10,
            }, scrollAnimation);
        }
        scroll();
        /*IF THE CHAT HAS IMAGES IS NECESSARY TO LOAD ALL OF THEM TO SCROLL TO BOTTOM*/
        var ctrlQtdImages = 0;
        var ctrlLoadedImages = 0;
        $(".scrolling-field .display-messages img").each(function(){
            ctrlQtdImages++;
            $(this).on("load", function(){
                ctrlLoadedImages++;
            });
        });
        function verifyLoadedImages(){
            if(!loadedImages){
                setTimeout(function(){
                    loadedImages = ctrlQtdImages == ctrlLoadedImages ? true : false;
                    if(!loadedImages){
                        verifyLoadedImages();
                    }else{
                        scroll();
                    }
                }, 500);
            }
        }
        verifyLoadedImages();
    }

    function openConversation(detinatary_message_ref, user_name, user_company, user_img, sending_message, to_company){
        conversationScreenOpen = true;
        var conversationOpenDelay = 200;
        var urlChatMessages = "chat/messages-load.php";
        var ready = false;
        user_img = typeof user_img != "undefined" ? user_img : "";
        sending_message = typeof sending_message != "undefined" ? sending_message : false;
        to_company = typeof to_company != "undefined" ? to_company : false;
        activeConversation.messageDestinatary = detinatary_message_ref;
        activeConversation.messageUser = user_name;
        activeConversation.messageCompany = user_company;
        activeConversation.messageImg = user_img;
        loadPendingMessages = true; /*THE FUNCTION chatActivity() WILL CHECK THE PENDING MESSAGES FOR THIS CHAT*/

        /*IMAGE ZOOM TOOL*/
        function listImageZoom(){
            var displayImageZoom = $(".chat-image-zoom");
            var displayImageZoomImg = $(".chat-image-zoom img");
            $(".scrolling-field .display-messages img").each(function(){
                var objImg = $(this);
                var srcImg = objImg.prop("src");
                objImg.off().on("click", function(){
                    if(srcImg != ""){
                        displayImageZoomImg.prop("src", srcImg)
                        displayImageZoom.css({
                            visibility: "visible",
                            opacity: "1"
                        });
                        displayImageZoom.off().on("click", function(){
                            displayImageZoom.css({
                                visibility: "hidden",
                                opacity: "0"
                            });
                        });
                    }
                });
            });   
        }
        /*END IMAGE ZOOM TOOL*/
        function openAnimation(){
            objUserName.html(user_name);
            if(user_company.trim() != ""){
                var userCompanyInfo = viewCompanyIcon+" "+user_company;
                objUserCompany.html(userCompanyInfo);
            }else{
                objUserCompany.html("");
            }
            if(user_img != ""){
                objUserImg.html("<img src='"+user_img+"' class='user-img'>");
            }else{
                objUserImg.html("<div class='user-icon'><i class='fa fa-user-circle' aria-hidden='true'></i></div>");
            }
            chatScrollBottom();
            objHeaderInfo.css("display", "block");
            objWritingField.css("visibility", "visible");
            closeChatListScreen();
            setTimeout(function(){
                objMessageInput.focus();
                objHeaderInfo.css("opacity", "1");
                viewingMessage = true;
                setTimeout(function(){
                    viewingMessage = false;
                }, 300);
            }, conversationOpenDelay);
        }
        closeChatListScreen();
        objDisplayMessages.show();
        if(sending_message == false){//ONLY IF WAS CLICKED TO OPEN THE CONVERSATION
            objDisplayMessages.html("<h3 class='loading-message' align='center'><i class='fa fa-spinner fa-pulse fa-3x fa-fw'></i> Carregando...</h3>");
        }
        var messageFrom = to_company == true || to_company == "to_company_message" ? "to_company_message" : activeConversation.senderRef;
        if(to_company){
            to_company_message = true;
        }else{
            to_company_message = false;
        }
        objDisplayMessages.load(urlChatMessages, {destinatary_ref: detinatary_message_ref, destinatary_name: user_name, sender_ref: messageFrom}, function(){
            listImageZoom();/*LIST THE IMAGES OF THE CHAT TO BE ABLE TO ZOOM*/
            openAnimation();
            var thisConversationDestinataryRef = activeConversation.messageDestinatary;
            var reloadMessagesDelay = 2500;
            setInterval(function(){
                if(loadPendingMessages && activeConversation.messageDestinatary == thisConversationDestinataryRef){
                    verifyPendingMessages(thisConversationDestinataryRef);
                    if(reloadActiveConversation){
                        reloadConversationActive = false;
                        reloadConversation(messageFrom);
                    }
                }
            }, reloadMessagesDelay);
        });

        function sendMessage(){
            var messageTextContent = objMessageInput.val();
            objMessageInput.val("");
            if(messageTextContent.length > 0){
                $.ajax({
                    type: "POST",
                    url: "chat/message-send.php",
                    data: {message_from: messageFrom, message_to: detinatary_message_ref, message_type: "text", message_content: messageTextContent},
                    error: function(){
                        alert("Não foi possível enviar a mensagem. Recarregue a página e tente novamente.");
                    },
                    success: function(response){
                        reloadConversation(messageFrom);
                        chatScrollBottom();
                    },
                    beforeSend: function(){
                        objDisplayMessages.append("<div class='sender'>"+messageTextContent+"<div class='sending-message-loading'><i class='fa fa-spinner fa-pulse fa-3x fa-fw'></i></div></div>");
                    }
                });
            }else{
                objMessageInput.focus();
            }
        }

        /*SEND MESSAGE TRIGGERS*/
        $(".btn-enviar").off().on("click", function(){
            sendMessage();
        });
        objMessageInput.keypress(function(e){
            if(e.which == 13){
                sendMessage();
            }
        });
        /*END SEND MESSAGE TRIGGERS*/
    }

    function reloadConversation(message_to_company){
        var ref = activeConversation.messageDestinatary;
        var user = activeConversation.messageUser;
        var cargo = activeConversation.messageCompany;
        var img = activeConversation.messageImg;
        openConversation(ref, user, cargo, img, true, message_to_company);
    }

    function closeConversation(){
        var closeDelay = 200;
        loadPendingMessages = false;
        function closeAnimation(){
            objHeaderInfo.css("opacity", "0");
            setTimeout(function(){
                objHeaderInfo.css("display", "none");
                objWritingField.css("visibility", "hidden");
            }, closeDelay);
            objDisplayMessages.html("");
            objDisplayMessages.hide();
        }
        if(conversationScreenOpen){
            resetActiveConversation();
            closeAnimation();
        }
    }

    function chatListScreen(reload, especialCondition){
        var urlChatList = "chat/chat-list.php";
        var openDelay = 10;
        function openAnimation(){
            chatListScreenOpen = true;
            objStandardInfo.css("display", "block");
            objHeaderInfo.css("opacity", "0");
            setTimeout(function(){
                objStandardInfo.css("opacity", "1");
                objChatList.html("<br><br><h3 class='loading' align='center'><i class='fa fa-spinner fa-pulse fa-3x fa-fw'></i>");
                if(especialCondition != false){
                    objChatList.load(urlChatList, {sender_message_ref: mainSessionRef, condition: especialCondition});
                }else{
                    objChatList.load(urlChatList, {sender_message_ref: mainSessionRef});
                }
                objChatList.show();
                objBottomInfo.show();
            }, openDelay);
        }
        if(chatSessionSet && !chatListScreenOpen || reload || especialCondition != false){
            if(moreOptionToolOpen){
                moreOptionTool();
            }
            openAnimation();
            closeConversation();
        }
    }

    function closeChatListScreen(){
        var closeDelay = 200;
        function closeAnimation(){
            chatListScreenOpen = false;
            objStandardInfo.css("opacity", "0");
            objChatList.hide();
            objBottomInfo.hide();
            setTimeout(function(){
                objStandardInfo.css("display", "none");
            }, closeDelay);
        }
        if(chatListScreenOpen){
            closeAnimation();
        }
    }
    /*END DEFAULT FUNCTIONS*/

    /*TRIGGER OPEN CHAT*/
    objIconChat.off().on("click", function(){
        if(chatReady && !chatOpen){
            openChat();
        }
    });
    /*END TRIGGER OPEN CHAT*/

    /*CHAT LIST TRIGGERS*/
    var selectedChatButton = null;
    setInterval(function(){
        $(".display-chat .scrolling-field .box-chat").each(function(){
            var objBox = $(this); 
            var boxIdMessage = objBox.attr("pew-message-ref");
            var boxUserNome = objBox.attr("pew-user-nome");
            var boxUserCargo = objBox.attr("pew-user-cargo");
            var boxUserImg = objBox.attr("pew-user-img");
            var toCompany = objBox.attr("pew-to-company-message");
            objBox.off().on("click", function(){
                if(chatSessionSet){
                    toCompany = toCompany == "true" ? true : false;
                    openConversation(boxIdMessage, boxUserNome, boxUserCargo, boxUserImg, false, toCompany); 
                }else{
                    alert("Você precisa fazer login para utilizar o chat. Recarregue a página e faça login para continuar.");
                }
            });
        });
        $("#btnOfflineMessage").off().on("click", function(){
            openConversation("to_company_message", websiteCompanyName, websiteCompanyOccupation);
        });
        
        /*CHAT LIST BUTTONS*/
        var pewChatListButtons = $(".display-chat .chat-list-buttons div");
        function resetSelectedButton(action){
            pewChatListButtons.each(function(){
                var botao = $(this);
                var thisButtonAction = botao.attr("pew-acao");
                if(thisButtonAction != action){
                    botao.removeClass("selected-button");
                }else{
                    selectedChatButton = action;
                }
            });
        }
        pewChatListButtons.each(function(){
            var botao = $(this);
            var acao = botao.attr("pew-acao");
            if(selectedChatButton == acao){
                if(!botao.hasClass("selected-button")){
                    botao.addClass("selected-button");
                }
            }else if(selectedChatButton == null){
                selectedChatButton = acao;
                botao.addClass("selected-button");
            }
            botao.off().on("click", function(){
                resetSelectedButton(acao);
                if(chatOpen){
                    switch(acao){
                        case "active_chats":
                            chatListScreen(false, "where status = 1");
                            break;
                        case "offline_chats":
                            chatListScreen(false, "where message_to = 'to_company_message'");
                            break;
                        case "finalized_chats":
                            chatListScreen(false, "where status = 0");
                            break;
                    }
                }
            });
        });
        /*END CHAT LIST BUTTONS*/
        
    }, 500);
    /*END CHAT LIST TRIGGERS*/
    
    /*CHAT TOP BUTTONS*/
    $(".display-chat .header-navigation .chat-button").each(function(){
        var botao = $(this);
        var acao = botao.attr("pew-acao");
        botao.off().on("click", function(){
            if(chatOpen){
                switch(acao){
                    case "minimizar":
                        minimizeChat();
                        break;
                    case "voltar":
                        switch(selectedChatButton){
                            case "active_chats":
                                chatListScreen(false, "where status = 1");
                                break;
                            case "offline_chats":
                                chatListScreen(false, "where message_to = 'to_company_message'");
                                break;
                            case "finalized_chats":
                                chatListScreen(false, "where status = 0");
                                break;
                            default:
                                chatListScreen(false, "where status = 1");
                        }
                        break;
                }
            }
        });
    });
    /*END CHAT TOP BUTTONS*/

    /*MORE OPTION TOOL*/
    var formFileSender = $("#formFileSender");
    var inputFileSender = $("#formFileSender #inputFileSender");
    var btnMoreOption = $(".message-options .btn-option");
    var objDivMoreOption = $(".message-options");
    var objFilePreview = $(".file-preview");
    var objImagePreview = $(".file-preview .image-preview");
    var displayMoreOption = $(".message-options .display-options");
    var classMoreOptionActive = "display-options-active";
    var classMessageOptionActive = "message-options-active";
    var backgrounOption = $(".display-messages .background");

    function moreOptionTool(){
        backgrounOption = $(".display-messages .background");
        if(moreOptionToolOpen){
            moreOptionToolOpen = false;
            displayMoreOption.removeClass(classMoreOptionActive);
            objDivMoreOption.removeClass(classMessageOptionActive);
            backgrounOption.css({
                opacity: "0",
                visibility: "hidden"
            });
        }else{
            moreOptionToolOpen = true;
            displayMoreOption.addClass(classMoreOptionActive);
            objDivMoreOption.addClass(classMessageOptionActive);
            backgrounOption.css({
                opacity: ".5",
                visibility: "visible"
            });
            backgrounOption.off().on("click", function(){
                moreOptionTool();
            });
        }
    }
    function previewFile(input){/*THIS IS A THE LOAD OF THE PREVIEW IMAGE TO SEND*/
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function (e) {
                var dir = e.target.result;
                objImagePreview.prop("src", dir);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    $(".message-options .display-options .option").each(function(){
        var option = $(this);
        var acao = option.attr("pew-function");
        var inputFile = $("#inputFileSender");
        var progressBar = $("#progressBar");
        var progressBarView = $("#progressBar .loading-view");
        var objFormFileSender = $("#formFileSender");
        var enviandoFormulario = false;
        option.off().on("click", function(){
            switch(acao){
                case "file":
                    function fileProgress(val){
                        var width = val+"%";
                        progressBarView.css("width", width);
                    }
                    function finishFileSend(){
                        enviandoFormulario = false;
                        inputFile.val("");
                        objFilePreview.css({
                            visibility: "hidden",
                            opacity: "0"
                        });
                        fileProgress(0);
                        moreOptionTool();/*closing*/
                        reloadConversation(to_company_message);
                    }

                    inputFile.click();
                    inputFile.off().on("change", function(){
                        var objInput = this;
                        var imgValue = inputFile.val();
                        if(imgValue.length > 0){
                            function openPreview(){
                                previewFile(objInput);
                                objFilePreview.css({
                                    visibility: "visible",
                                    opacity: "1"
                                });   
                            }
                            openPreview();
                            function closePreview(){
                                previewFile(objInput);
                                objFilePreview.css({
                                    visibility: "hidden",
                                    opacity: "0"
                                });
                            }
                            $(".btn-file-cancelar").off().on("click", function(){
                                finishFileSend();
                            });
                            $(".btn-file-enviar").off().on("click", function(){
                                objFormFileSender.submit(function(event){
                                    event.preventDefault();
                                    var valImagem = inputFile.val();
                                    var receiverMessageRef = activeConversation.messageDestinatary;
                                    var senderMessageRef = activeConversation.senderRef;
                                    $("#receiverMessageRef").val(receiverMessageRef);
                                    $("#senderMessageRef").val(senderMessageRef);
                                    var formFileSender = new FormData($(this)[0]);
                                    if(valImagem != "" && receiverMessageRef != null){
                                        var urlSendImage = "chat/media-message-send.php";
                                        if(!enviandoFormulario){
                                            enviandoFormulario = true;
                                            $.ajax({
                                                method: 'POST',
                                                url: urlSendImage,
                                                data: formFileSender,
                                                cache: false,
                                                contentType: false,
                                                processData: false,
                                                error: function(){
                                                    alert("Não foi possível enviar a imagem. Recarregue a página e tente novamente.");
                                                    closePreview();
                                                    finishFileSend();
                                                },
                                                success: function(response){
                                                    console.log(response);
                                                    closePreview();
                                                    finishFileSend();
                                                },
                                                xhr: function(){
                                                    var myXhr = $.ajaxSettings.xhr();
                                                    if(myXhr.upload){
                                                        myXhr.upload.addEventListener('progress', function(progressValue){
                                                            if(progressValue.lengthComputable){
                                                                var percentComplete = parseInt((progressValue.loaded / progressValue.total) * 100);
                                                                fileProgress(percentComplete);
                                                              }
                                                        }, false);
                                                    }
                                                return myXhr;
                                                }
                                            });
                                        }
                                    }
                                });
                                objFormFileSender.submit();
                            });
                        }
                    });
            }
        });
    });
    btnMoreOption.off().on("click", function(){
        moreOptionTool();
    });
    /*END MORE OPTION TOOL*/
});