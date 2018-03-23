<?php
    require_once "chat-important-configs.php";
    if($pewSide){
        require_once "../pew-system-config.php";
        $other_side_chat_table = $pew_custom_db->tabela_chat_users;
        $imagesDIR = "../chat/imagens/usuarios";
    }else{
        require_once "../@pew/pew-system-config.php";
        $other_side_chat_table = $pew_custom_db->tabela_pew_chat_users;
        $imagesDIR = "chat/imagens/usuarios";
    }
    $tabela_chat_messages = $pew_custom_db->tabela_pew_chat_messages;
    /*$generatedUniqId = md5(uniqid());
    $sessionId = "cew-message-ref-".substr($generatedUniqId, 0, 6);*/
    if(!function_exists("contarResultados")){
        function contarResultados($table, $condition){
            global $conexao;
            $contar = mysqli_query($conexao, "select count(id) as total from $table $condition");
            $contagem = mysqli_fetch_assoc($contar);
            $totalContagem = $contagem["total"];
            return $totalContagem;
        }
    }
    if(!function_exists("buscarChats")){
        function buscarChats($condition, $toCompany){
            global $conexao, $other_side_chat_table, $tabela_chat_messages;
            $queryUtilizingUsers = mysqli_query($conexao, "select * from $other_side_chat_table $condition");
            while($utlizingUsers = mysqli_fetch_array($queryUtilizingUsers)){
                $destinataryMessageRef = $utlizingUsers["message_ref"];
                $userName = $utlizingUsers["nome"];
                $userCompany = $utlizingUsers["cargo"];
                $userImg = $utlizingUsers["imagem"];
                $status = $utlizingUsers["status"] == 1 ? "Online" : "Offline";
                $userChatImage = $userImg != "" ? "$imagesDIR/$userImg" : "";
                $standardUserIcon = "<i class='fa fa-user-circle' aria-hidden='true'></i>";
                $toCompany = $toCompany == true ? "true" : "false";
                echo "<div class='box-chat' pew-message-ref='$destinataryMessageRef' pew-user-nome='$userName' pew-user-cargo='$userCompany' pew-user-img='$userChatImage' pew-to-company-message='$toCompany'>";
                    if($userChatImage != ""){
                        echo "<img src='$userChatImage' class='box-chat-img'>";
                    }else{
                        echo "<div class='box-chat-user-icon'>$standardUserIcon</div>";
                    }
                    echo "<h3 class='box-chat-name'>$userName</h3>";
                    echo "<h6 class='box-chat-status'><i class='fa fa-dot-circle-o' aria-hidden='true'></i> $status</h6>";
                    $newMessage = "false";
                    if(isset($_POST["sender_message_ref"])){
                        $senderMessageRef = $_POST["sender_message_ref"];
                        $contagem = contarResultados($tabela_chat_messages, "where message_to = '$senderMessageRef' and message_from = '$destinataryMessageRef' and status = 0");
                        if($contagem > 0){
                            $newMessage = "true";
                            echo "<h6 class='box-chat-pending-message' title='Nova mensagem'><i class='fa fa-envelope-o' aria-hidden='true'></i></h6>";
                        }
                    }
                    echo "<input type='hidden' value='$newMessage'>";
                echo "</div>";
            }
        }
    }
    if($pewSide){
        echo "<div class='chat-list-buttons'>";
            echo "<div pew-acao='active_chats' title='Chats ativos'>Ativos</div>";
            echo "<div pew-acao='offline_chats' title='Mensagens enviadas enquanto não tinha ninguém online'>Offline</div>";
            echo "<div pew-acao='finalized_chats' title='Chats já finalizados'>Finalizados</div>";
        echo "</div>";
    }
    $condition = isset($_POST["condition"]) ? $_POST["condition"] : "where status = 1";
    if($condition != "where message_to = 'to_company_message'"){
        $totalUtilizingUsers = contarResultados($other_side_chat_table, $condition);
        if($totalUtilizingUsers > 0){
            buscarChats($condition, false);
        }else{
            if($pewSide){
                echo "<h3 class='mensagem-padrao'>Não foi encontrado nenhum usuário.</h3>";
            }else{
                echo "<h3 class='mensagem-padrao'>Parece que não tem ninguém ativo agora. Mas deixe uma mensagem. Logo entraremos em contato.<br><br> <a class='link-padrao' id='btnOfflineMessage'><i class='fa fa-share-square-o' aria-hidden='true'></i> Enviar mensagem</a></h3>";
            }
        }
    }else{
        $totalCompanyMessages = contarResultados($tabela_chat_messages, $condition);
        if($totalCompanyMessages > 0){
            $queryMessages = mysqli_query($conexao, "select message_from from $tabela_chat_messages $condition group by message_from");
            while($infoMessages = mysqli_fetch_array($queryMessages)){
                $messageFrom = $infoMessages["message_from"];
                $newCondition = "where message_ref = '$messageFrom'";
                $totalUtilizingUsers = contarResultados($other_side_chat_table, $newCondition);
                if($totalUtilizingUsers > 0){
                    buscarChats($newCondition, true);
                }else{
                    echo "<h3 class='mensagem-padrao'>Nenhuma mensagem foi enviada ainda.</h3>";
                }
            }
        }else{
            echo "<h3 class='mensagem-padrao'>Nenhuma mensagem foi enviada ainda.</h3>";
        }
    }
?>