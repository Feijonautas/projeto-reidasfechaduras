<?php
    function inverterData($data){
        if(count(explode("-",$data)) > 1){
            return implode("/",array_reverse(explode("-",$data)));
        }elseif(count(explode("/",$data)) > 1){
            return implode("-",array_reverse(explode("/",$data)));
        }
    }
    if(isset($_POST["destinatary_ref"]) && isset($_POST["destinatary_name"]) && isset($_POST["sender_ref"])){
        require_once "chat-important-configs.php";
        $messageFrom = $_POST["sender_ref"];
        $messageTo = $_POST["destinatary_ref"];
        if($pewSide){
            require_once "../pew-system-config.php";
            $other_side_chat_table = $pew_custom_db->tabela_chat_users;
            $createChatRef = md5($messageTo.$messageFrom);
            $imagesDIR = "../chat/conversations/media/images";
        }else{
            require_once "../@pew/pew-system-config.php";
            $other_side_chat_table = $pew_custom_db->tabela_pew_chat_users;
            $createChatRef = md5($messageFrom.$messageTo);
            $imagesDIR = "chat/conversations/media/images";
        }
        $chatSessionID = "cew_chat_session_".substr($createChatRef, 0, 10);
        $destinataryName = $_POST["destinatary_name"];
        $tabela_chat_messages = $pew_custom_db->tabela_pew_chat_messages;
        function contarResultados($table, $condition){
            global $conexao;
            $contar = mysqli_query($conexao, "select count(id) as total from $table $condition");
            $contagem = mysqli_fetch_assoc($contar);
            $totalContagem = $contagem["total"];
            return $totalContagem;
        }
        $totalUsers = contarResultados($other_side_chat_table, "where message_ref = '$messageTo' and nome = '$destinataryName'");
        if($messageTo == "to_company_message"){
            $totalUsers = 1;
        }
        if($totalUsers > 0){
            $totalMessages = contarResultados($tabela_chat_messages, "where chat_session_id = '$chatSessionID'");
            if($totalMessages > 0){
                echo "<div class='background'></div>";
                $ctrlMessages = 0;
                $queryMessages = mysqli_query($conexao, "select * from $tabela_chat_messages where chat_session_id = '$chatSessionID' order by id");
                while($messagesInfo = mysqli_fetch_array($queryMessages)){
                    $ctrlMessages++;
                    $idMessage = $messagesInfo["id"];
                    $from = $messagesInfo["message_from"];
                    $to = $messagesInfo["message_to"];
                    $content = $messagesInfo["message_content"];
                    $content = strip_tags($content);
                    $type = $messagesInfo["message_type"];
                    $data = $messagesInfo["data_controle"];
                    $dataAno = inverterData(substr($data, 4, 6));
                    $dataAno = substr($dataAno, 0, 5);
                    $hora = substr($data, 11, 5);
                    $class = $from == $messageFrom ? "sender" : "receiver";
                    $recent = $ctrlMessages == $totalMessages ? "recent-$class" : "";
                    echo "<div class='$class $recent'>";
                    if($type == "text"){
                        echo $content;
                        echo "<div class='time'>$dataAno $hora</div>";
                    }else{
                        echo "<img src='$imagesDIR/$content'>";
                        echo "<div class='time'>$dataAno $hora</div>";
                    }
                    echo "</div>";
                    if($from != $messageFrom){//Quando a mensagem é para o destinatário atualizar status da mensagem para vizualizada
                        mysqli_query($conexao, "update $tabela_chat_messages set status = 1 where id = '$idMessage'");
                    }
                }
            }else if($messageTo == "to_company_message"){
                echo "<h4 class='mensagem-padrao'>Envie sua mensagem. Logo entraremos em contato.</h4>";
            }else{
                echo "<h4 class='mensagem-padrao'>Nenhuma mensagem foi enviada ainda. Seja o primeiro a iniciar a conversa.</h4>";
            }
        }else{
            echo "<h4 class='mensagem-padrao'>Nenhum resultado encontrado. Recarregue a página e tente novamente.</h4>";
        }
    }
?>