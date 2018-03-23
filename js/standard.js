function mensagemAlerta(mensagem, focus, color, redirect){
    if(mensagem != ""){
        var msgAlerta = $(".msg-alerta");
        var msgTexto = $(".msg-alerta .texto-alerta");
        var botao = $(".msg-alerta #btnOk");
        var bg = $(".background-interatividade");
        var delayAnimation = 300;
        function abrir(){
            msgTexto.html(mensagem);
            msgAlerta.css("display", "block");
            bg.css("display", "block");
            if(color != "" && typeof color != "undefined"){
                botao.css({
                    backgroundColor: color,
                });
            }else{
                color = "#ea5959";
                botao.css({
                    backgroundColor: color,
                });
            }
            setTimeout(function(){
                bg.css("opacity", "0.3");
                msgAlerta.css({
                    opacity: "1",
                    paddingTop: "15px",
                    paddingBottom: "15px",
                });
                setTimeout(function(){
                    msgAlerta.css({
                        paddingTop: "10px",
                        paddingBottom: "10px",
                    });
                }, delayAnimation);
            }, 10);   
        }
        abrir();

        function fechar(){
            msgAlerta.css({
                opacity: "0",
                padding: "0px",
                paddingTop: "0px",
                paddingBottom: "0px",
            });
            bg.css("opacity", "0");
            setTimeout(function(){
                bg.css("display", "none");
                msgAlerta.css("display", "none"); 
            }, delayAnimation);
        }
        botao.mouseover(function(){
            botao.css("background-color", "#111"); 
        });
        botao.mouseout(function(){
            botao.css("background-color", color);
        });
        botao.click(function(){
            fechar();
            if(focus != "" && typeof focus == "object" && focus != false){
                focus.focus();
            }else if(focus != "" && typeof focus != "undefined" && focus != false){
                $(focus).focus();
            }

            if(redirect != "" && redirect != false && typeof redirect != "undefined"){
                window.location.href = redirect;
            }
        });
        bg.click(function(){
            fechar();
            if(focus != "" && typeof focus != "object" && focus != false){
                focus.focus();
            }else if(focus != "" && typeof focus != "undefined" && focus != false){
                $(focus).focus();
            }

            if(redirect != "" && redirect != false && typeof redirect != "undefined"){
                window.location.href = redirect;
            }
        });
    }
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
$(document).ready(function(){
    var menuMobileAtivo = false;
    var logoPrincipal = $(".header-principal .logo-principal");
    var botaoMenuMobile = $(".header-principal .botao-menu-mobile");
    var botaoFecharMobile = $(".header-principal .botao-fechar-mobile");
    var linksMenuMobile = $(".header-principal .menu-principal");
    var backgroundBlack = $(".interatividade .background-black");
    
    function acaoMenu(acao){
        var animationBotao = 250;
        if(menuMobileAtivo == false && acao == "abrir"){
            menuMobileAtivo = true;
            function abrir(){
                botaoMenuMobile.css({
                    backgroundColor: "#102a83",
                    color: "#fff",
                    left: "-32px"
                });
                backgroundBlack.css("display", "block");
                setTimeout(function(){
                    backgroundBlack.css("opacity", ".3");
                    linksMenuMobile.css({
                        width: "60%",
                        left: "0px",
                    });
                    logoPrincipal.css({
                        marginLeft: "68%",
                        width: "30%"
                    });
                }, animationBotao);
            }
            abrir();
        }else if(menuMobileAtivo == true && acao == "fechar"){
            function fechar(){
                linksMenuMobile.css({
                    width: "40%",
                    left: "-100%",

                });
                logoPrincipal.css({
                    marginLeft: "50%",
                    width: "45%"
                });
                backgroundBlack.css("opacity", "0");
                setTimeout(function(){
                    botaoMenuMobile.css({
                        backgroundColor: "transparent",
                        color: "#102a83",
                        left: "5%"
                    });
                    backgroundBlack.css("display", "none");
                    menuMobileAtivo = false;
                }, animationBotao);
            }
            fechar();
        }
    }
    botaoMenuMobile.off().on("click", function(){
        acaoMenu("abrir");
    });
    botaoFecharMobile.off().on("click", function(){
        acaoMenu("fechar");
    });
    backgroundBlack.off().on("click", function(){
        acaoMenu("fechar");
    });
});