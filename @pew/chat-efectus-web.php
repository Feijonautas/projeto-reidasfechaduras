<?php
    $cew_session = null;
    $cew_session_nome = null;
    $cew_session_email = null;
    $cew_session_activity = 0;
    $pewSide = null;
    function cew_session_start(){
        global $cew_session, $cew_session_nome, $cew_session_email, $cew_session_activity, $pewSide;
        require_once "chat/chat-important-configs.php";
        if($pewSide){
            $pew_session_user = $_SESSION["efectusweb_usuario_administrativo"];
            $refSession = "cew_employer_".substr(md5($pew_session_user), 0, 10);
        }else{
            $refSession = "cew_client_".substr(md5(uniqid()), 0, 10);
        }
        $pewSide = $pewSide == true ? "true" : "false";
        if(isset($_SESSION[$mainSessionName])){
            /*
            print_r($_SESSION[$mainSessionName]);
            echo "<br>";
            print_r($_SESSION[$userSessionName]);
            echo "<br>";
            print_r($_SESSION[$emailSessionName]);
            echo "<br>Atividade: ";
            print_r($_SESSION[$activitySessionName]);
            */
        }else{
            $_SESSION[$mainSessionName] = $refSession;
            $_SESSION[$userSessionName] = "null";
            $_SESSION[$emailSessionName] = "null";
            $_SESSION[$activitySessionName] = 0;
            /*
            print_r($_SESSION[$mainSessionName]);
            echo "<br>"; 
            print_r($_SESSION[$userSessionName]);
            echo "<br>";
            print_r($_SESSION[$emailSessionName]);
            echo "<br>Atividade: ";
            print_r($_SESSION[$activitySessionName]);
            */
        }
        $cew_session = $_SESSION[$mainSessionName];
        $cew_session_nome = $_SESSION[$userSessionName];
        $cew_session_email = $_SESSION[$emailSessionName];
        $cew_session_activity = $_SESSION[$activitySessionName];
        //session_destroy(); //Apenas para reset da sessao
    }
    if(isset($_SESSION)){
        cew_session_start();
    }else{
        session_start();
        cew_session_start();
    }
?>
<link type="text/css" rel="stylesheet" href="chat/fontes/font-awesome-4.7.0/css/font-awesome.min.css">
<?php
    require_once "chat/chat-style.php";
?>
<section class="efectus-web-chat">
    <div class="icon-chat"><i class="fa fa-comments-o fa-flip-horizontal" aria-hidden="true"></i><div class="pending-messages-count">0</div></div>
    <div class="display-chat">
        <header>
            <div class="header-navigation">
                <button class="chat-button" pew-acao="minimizar" title="Minimizar chat">
                    <i class="fa fa-minus" aria-hidden="true"></i>
                </button>
                <button class="chat-button" pew-acao="voltar" title="Voltar">
                    <i class="fa fa-angle-double-left" aria-hidden="true"></i>
                </button>
            </div>
            <div class="standard-header-info">
                <h3 class="titulo-chat"><i class="fa fa-comments-o" aria-hidden="true"></i> Chat</h3>
                <h5 class="descricao-chat">Tem alguma dúvida ou sugestão? Converse com a gente.</h5>
            </div>
            <div class="chating-header-info">
                <div class="display-user-img">
                    <div class='user-icon'><i class='fa fa-user-circle' aria-hidden='true'></i></div>
                </div>
                <div class="informacoes">
                    <h3 class="nome-usuario"> Nome do usuário</h3>
                    <h5 class="descricao-usuario"><i class="fa fa-briefcase" aria-hidden="true"></i> Cargo/Empresa</h5>
                    <h6 class="status"><i class="fa fa-dot-circle-o" aria-hidden="true"></i> Status</h6>
                </div>
            </div>
        </header>
        <div class="scrolling-field">
            <div class="login-field">
                <?php
                    if($pewSide == "true"){
                        echo "<h3>Inicie a sessão do chat</h3>";
                        echo "<input type='button' value='Entrar' id='btnEntrar'>";
                    }else{
                        echo "<h3>Faça login para entra no chat</h3>";
                        echo "<input type='text' placeholder='Nome' id='chatLoginName'>";
                        echo "<input type='text' placeholder='E-mail' id='chatLoginEmail'>";
                        echo "<input type='text' placeholder='Empresa (opcional)' id='chatLoginCompany'><br>";
                        echo "<input type='button' value='Entrar' id='btnEntrar'>";
                    }
                ?>
            </div>
            <div class="chat-list"></div>
            <div class="display-messages">
                <div class="background"></div>
            </div>
        </div>
        <div class="writing-field">
            <div class="message-options">
                <div class="btn-option" title="Mais opções">
                    <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                </div>
                <div class="display-options">
                    <!--action="media-message-send" method="post" enctype="multipart/form-data"-->
                    <form id="formFileSender" enctype="multipart/form-data">
                        <input type="hidden" name="destinatary_message_ref" id="receiverMessageRef">
                        <input type="hidden" name="sender_message_ref" id="senderMessageRef">
                        <input type="file" style="display: none;" id="inputFileSender" accept="image/*" name="image_file">
                    </form>
                    <div class="option" pew-function='file'><i class="fa fa-file" aria-hidden="true"></i> Enviar arquivos</div>
                </div>
            </div>
            <input type="text" name="message_input" id="messageInput" class="message-input" placeholder="Sua mensagem...">
            <button class="btn-enviar" title="Enviar mensagem"><i class="fa fa-share" aria-hidden="true"></i></button>
        </div>
        <div class="file-preview">
            <h3>Arquivo Selecionado:</h3>
            <div class="display-image">
                <img src="" class="image-preview">
            </div>
            <div class="loading-background" id="progressBar"><div class="loading-view"></div></div>
            <a class="btn-file-cancelar">Cancelar</a>
            <a class="btn-file-enviar">Enviar</a>
        </div>
        <div class="bottom-info">
            <img src="chat/imagens/sistema/logo-efectus-web-small.png" class="logo-bottom">
        </div>
        <input type="hidden" id="cewSessionRef" value="<?php echo $cew_session; ?>">
        <input type="hidden" id="cewSessionNome" value="<?php echo $cew_session_nome; ?>">
        <input type="hidden" id="cewSessionEmail" value="<?php echo $cew_session_email; ?>">
        <input type="hidden" id="cewSessionActivity" value="<?php echo $cew_session_activity; ?>">
        <input type="hidden" id="pewSide" value="<?php echo $pewSide; ?>">
    </div>
</section>
<div class="chat-image-zoom">
    <img>
    <a class="back-zoom">Voltar</a>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="chat/md5-function.js"></script>
<script type="text/javascript" src="chat/chat-main-javascript.js"></script>