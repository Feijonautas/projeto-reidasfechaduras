<?php
    session_start();
    $post_fileds = array("main_session_ref");
    $invalid_fileds = array();
    $updateMessages = true;
    $i = 0;
    foreach($post_fileds as $post_name){
        if(!isset($_POST[$post_name])){
            $updateMessages = false;
            $i++;
            $invalid_fileds[$i] = $post_name;
        }
    }
    if($updateMessages){
        $mainSessionRef = $_POST["main_session_ref"];
        require_once "chat-important-configs.php";
        if($pewSide){
            require_once "../pew-system-config.php";
        }else{
            require_once "../@pew/pew-system-config.php";
        }
        $tabela_chat_messages = $pew_custom_db->tabela_pew_chat_messages;
        $condition = "where message_to = '$mainSessionRef' and status = 0";
        if(isset($_POST["sender_ref"])){
            $senderRef = $_POST["sender_ref"];
            $condition = "where message_to = '$mainSessionRef' and message_from = '$senderRef' and status = 0";   
        }
        $contar = mysqli_query($conexao, "select count(id) as total from $tabela_chat_messages $condition");
        $contagem = mysqli_fetch_assoc($contar);
        $totalUnreadMessages = $contagem["total"];
        echo $totalUnreadMessages;
    }
?>