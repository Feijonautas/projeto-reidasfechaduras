<?php
    session_start();
    $post_fileds = array("type", "content");
    $invalid_fileds = array();
    $update = true;
    $i = 0;
    foreach($post_fileds as $post_name){
        if(!isset($_POST[$post_name])){
            $update = false;
            $i++;
            $invalid_fileds[$i] = $post_name;
        }
    }
    if($update){
        require_once "chat-important-configs.php";
        if($pewSide){
            require_once "../pew-system-config.php";
            $other_side_chat_table = $pew_custom_db->tabela_chat_users;
            $utilizing_chat_table = $pew_custom_db->tabela_pew_chat_users;
        }else{
            require_once "../@pew/pew-system-config.php";
            $other_side_chat_table = $pew_custom_db->tabela_pew_chat_users;
            $utilizing_chat_table = $pew_custom_db->tabela_chat_users;
        }
        $type = $_POST["type"];
        $content = $_POST["content"];
        function contarResultados($table, $condition){
            global $conexao;
            $contar = mysqli_query($conexao, "select count(id) as total from $table $condition");
            $contagem = mysqli_fetch_assoc($contar);
            $totalContagem = $contagem["total"];
            return $totalContagem;
        }
        if($type == "db" && isset($_POST["main_session_ref"])){
            $mainSessionRef = $_POST["main_session_ref"];
            $total = contarResultados($utilizing_chat_table, "where message_ref = '$mainSessionRef'");
            $segundos = $content / 1000;
            if($total == 1){
                mysqli_query($conexao, "update $utilizing_chat_table set tempo_ativo = '$segundos' where message_ref = '$mainSessionRef'");
            }
        }else if($type == "session"){
            $_SESSION["chat_activity"] = $content;
        }else if($type == "status"){
            $contagemUsuarios = contarResultados($other_side_chat_table, "where message_ref = '$content'");
            if($contagemUsuarios > 0){
                $queryStatus = mysqli_query($conexao, "select status from $other_side_chat_table where message_ref = '$content'");
                $array = mysqli_fetch_array($queryStatus);
                $status = $array["status"] == 1 ? "Online" : "Offline";
                echo $status;
            }else{
                echo "Offline";
            }
        }else if($type == "chatList"){
            $_POST["sender_message_ref"] = $_POST["content"];
            require_once "chat-list.php";
        }
    }
?>