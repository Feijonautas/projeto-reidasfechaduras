<?php
    session_start();
    $post_fileds = array("main_session_ref", "user_name", "user_email", "user_company");
    $invalid_fileds = array();
    $validatePostField = true;
    $startSession = true;
    $i = 0;
    foreach($post_fileds as $post_name){
        if(!isset($_POST[$post_name])){
            $validatePostField = false;
            $i++;
            $invalid_fileds[$i] = $post_name;
        }
    }
    if($startSession){
        require_once "chat-important-configs.php";
        $mainSessionRef = null;
        $userName = null;
        $userEmail = null;
        $userCompany = null;
        if($pewSide){
            require_once "../pew-system-config.php";
            $utilizing_chat_table = $pew_custom_db->tabela_pew_chat_users;
            $tabela_usuarios_administrativos = $pew_db->tabela_usuarios_administrativos;
            $pew_session_user = isset($_SESSION["efectusweb_usuario_administrativo"]) ? $_SESSION["efectusweb_usuario_administrativo"] : false;
            if($pew_session_user != false){
                $sessionUserPew = $_SESSION["efectusweb_usuario_administrativo"];
                $queryUsuario = mysqli_query($conexao, "select email, empresa from $tabela_usuarios_administrativos where usuario = '$pew_session_user'");
                $infoUser = mysqli_fetch_array($queryUsuario);
                $mainSessionRef = "cew_employer_".substr(md5($pew_session_user), 0, 10);
                $userName = $pew_session_user;
                $userEmail = $infoUser["email"];
                $userCompany = $infoUser["empresa"];
            }else{
                $startSession = false;
            }
        }else if($validatePostField){
            require_once "../@pew/pew-system-config.php";
            $utilizing_chat_table = $pew_custom_db->tabela_chat_users;
            $mainSessionRef = addslashes($_POST["main_session_ref"]);
            $userName = addslashes($_POST["user_name"]);
            $userEmail = addslashes($_POST["user_email"]);
            $userCompany = addslashes($_POST["user_company"]);
        }else{
            $startSession = false;
        }
        if($startSession){
            $_SESSION[$mainSessionName] = $mainSessionRef;
            $_SESSION[$userSessionName] = $userName;
            $_SESSION[$emailSessionName] = $userEmail;
            $_SESSION[$activitySessionName] = 0;
            $data = date("Y-m-d h:i:s");
            $contar = mysqli_query($conexao, "select count(id) as total from $utilizing_chat_table where message_ref = '$mainSessionRef'");
            $contagem = mysqli_fetch_assoc($contar);
            if($contagem["total"] > 0){
                $update = mysqli_query($conexao, "update $utilizing_chat_table set message_ref = '$mainSessionRef', nome = '$userName', email = '$userEmail', cargo = '$userCompany', tempo_ativo = 0, data = '$data', status = 1");
            }else{
                $save = mysqli_query($conexao, "insert into $utilizing_chat_table (message_ref, nome, email, cargo, imagem, tempo_ativo, data, status) values ('$mainSessionRef', '$userName', '$userEmail', '$userCompany', '', 0, '$data', 1)");
            }
            echo "true";
        }else{
            echo "false"; 
        }
    }else{
        echo "false";
    }
?>