<?php
    $pewSide = true;
    if($pewSide){
        $mainSessionName = "pew_chat_session";
        $userSessionName = "pew_chat_name";
        $emailSessionName = "pew_chat_email";
        $activitySessionName = "pew_chat_activity";
    }else{
        $mainSessionName = "chat_session";
        $userSessionName = "chat_name";
        $emailSessionName = "chat_email";
        $activitySessionName = "chat_activity";   
    }
?>