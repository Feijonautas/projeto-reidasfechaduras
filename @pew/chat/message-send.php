<?php
    if(isset($_POST["message_from"]) && isset($_POST["message_to"]) && isset($_POST["message_type"]) && isset($_POST["message_content"])){
        require_once "chat-important-configs.php";
        $messageFrom = $_POST["message_from"];
        $messageTo = $_POST["message_to"];
        $messageType = $_POST["message_type"];
        $messageContent =  addslashes($_POST["message_content"]);
        $messageContent =  strip_tags(trim($messageContent));
        if($pewSide){
            require_once "../pew-system-config.php";
            $chatRef = md5($messageTo.$messageFrom);
        }else{
            require_once "../@pew/pew-system-config.php";
            $chatRef = md5($messageFrom.$messageTo);
        }
        $tabela_chat_messages = $pew_custom_db->tabela_pew_chat_messages;
        $chatSessionID = "cew_chat_session_".substr($chatRef, 0, 10);
        function contarResultados($table, $condition){
            global $conexao;
            $contar = mysqli_query($conexao, "select count(id) as total from $table $condition");
            $contagem = mysqli_fetch_assoc($contar);
            $totalContagem = $contagem["total"];
            return $totalContagem;
        }
        $data = date("Y-m-d h:i:s");
        if($messageContent != ""){
            mysqli_query($conexao, "insert into $tabela_chat_messages (chat_session_id, message_from, message_to, message_content, message_type, data_controle, status) values ('$chatSessionID', '$messageFrom', '$messageTo', '$messageContent', '$messageType', '$data', 0)");
        }
        echo "true";
    }else{
        echo "false";
    }
?>