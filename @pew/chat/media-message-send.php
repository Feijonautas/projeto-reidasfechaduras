<?php
    $post_fields = array("destinatary_message_ref", "sender_message_ref");
    $file_fields = array("image_file");
    $invalid_fields = array();
    $gravar = true;
    $i = 0;
    foreach($post_fields as $post_name){
        /*Validação se todos campos foram enviados*/
        if(!isset($_POST[$post_name])){
            $gravar = false;
            $i++;
            $invalid_fields[$i] = $post_name;
        }
    }
    foreach($file_fields as $file_name){
        /*Validação se todos campos foram enviados*/
        if(!isset($_FILES[$file_name])){
            $gravar = false;
            $i++;
            $invalid_fields[$i] = $file_name;
        }
    }

    if($gravar){
        $destinataryRef = $_POST["destinatary_message_ref"];
        $mainSessionRef = $_POST["sender_message_ref"];
        $imagem = $_FILES["image_file"]["name"];
        require_once "chat-important-configs.php";
        if($pewSide){
            $imagesDIR = "../../chat/conversations/media/images/";
        }else{
            $imagesDIR = "conversations/media/images/";
        }
        if($imagem != ""){
            $ext = pathinfo($imagem, PATHINFO_EXTENSION);
            $imageName = md5(uniqid()).".".$ext;
            move_uploaded_file($_FILES["image_file"]["tmp_name"], $imagesDIR.$imageName);
            /*SAVING DATA ON DB*/
            $_POST["message_from"] = $mainSessionRef;
            $_POST["message_to"] = $destinataryRef;
            $_POST["message_type"] = "image";
            $_POST["message_content"] = $imageName;
            $url_send_message = "message-send.php";
            require_once $url_send_message;
            /*SAVING DATA ON DB*/
        }else{
            echo "EMPTY IMAGE";
        }
    }else{
        print_r($invalid_fields);
        echo "false";
    }
?>