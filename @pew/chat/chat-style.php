<style>
    <?php
        /*EDITABLE CHAT CSS COLORS*/
        $backgroundColor = "#f6f6f6";
        $decorationColor1 = "#ef7124";
        $decorationColor2 = "#df2321";
        $decorationColor3 = "#eee";
        $decorationColor4 = "#dedede";
        $textColor = "#333";
        $textColor2 = "#666";
        /*END EDITABLE CHAT CSS COLORS*/
    ?>
    /*GENERAL CHAT CSS*/
    @font-face{
        font-family: helvetica;
        src: url(chat/fontes/Montserrat-Regular.otf);
    }
    /*FIRST LAYER CHAT*/
    .efectus-web-chat{
        font-family: helvetica;
        position: fixed;
        width: 0px;/*300px*/
        height: 0px;/*500px*/
        border-radius: 50%;/*0px*/
        bottom: 20px;
        right: 20px;
        background-color: <?php echo $backgroundColor;?>;
        z-index: 100;
        overflow: hidden;
        border: 1px solid #ccc;
        transform: rotate(30deg);
        transition: .2s linear;
    }
    .efectus-web-chat .icon-chat{
        position: absolute;
        font-size: 1em;/*3em*/
        width: 100%;
        height: 100%;
        line-height: 30px;
        margin: 0 auto;
        left: 0px;
        right: 0px;
        top: 0px;
        text-align: center;
        color: transparent;
        transform: rotate(5deg);
        background-color: <?php echo $decorationColor1;?>;
        cursor: pointer;
        transition: .3s;
    }
    .efectus-web-chat .icon-chat:hover{
        font-size: 3.4em;
        background-color: <?php echo $decorationColor2;?>;
    }
    .efectus-web-chat .icon-chat .pending-messages-count{
        position: absolute;
        top: 25px;
        right: 28px;
        border-radius: 50%;
        color: #fff;
        width: 16px;
        height: 16px;
        text-align: center;
        font-size: 14px;
        line-height: 16px;
        display: none;
    }
    .efectus-web-chat .display-chat{
        opacity: 0;
        visibility: hidden;
        transition: .2s;
        position: relative;
        z-index: 10;
    }
    .efectus-web-chat .display-chat-active{
        opacity: 1;
        background-color: <?php echo $backgroundColor;?>;
    }
    /*END FIRST LAYER CHAT*/
    /*HEADER CHAT*/
    .efectus-web-chat header{
        position: relative;
        text-align: center;
        height: 100px;
        transition: color .1s, background-color .2s;
        color: <?php echo $decorationColor1;?>;
        -webkit-box-shadow: 0px 18px 30px -8px rgba(0, 0, 0, .08);
        -moz-box-shadow: 0px 18px 30px -8px rgba(0, 0, 0, .08);
        box-shadow: 0px 18px 30px -8px rgba(0, 0, 0, .08);
        position: relative;
        z-index: 2;
        text-overflow: ellipsis;
    }
    /*.efectus-web-chat:hover header{
        background-color: <?php echo $decorationColor1;?>;
        color: #fff;
    }*/
    /*CHAT HEADER LAYOUT*/
    .efectus-web-chat header .titulo-chat{
        font-weight: normal;
        font-size: 24px;
        margin: 0px;
        padding-top: 0px;
        padding-bottom: 5px;
    }
    .efectus-web-chat header .descricao-chat{
        font-weight: normal;
        margin: 0px;
        padding-bottom: 10px;
    }
    .efectus-web-chat header .header-navigation{
        width: 100%;
        height: 20px;
        background-color: <?php echo $decorationColor3;?>;
    }
    .efectus-web-chat header .header-navigation .chat-button{
        text-align: right;
        width: auto;
        padding: 0px;
        padding-left: 10px;
        padding-right: 10px;
        margin-left: 2px;
        font-size: 16px;
        line-height: 16px;
        cursor: pointer;
        border: none;
        border-left: 1px solid <?php echo $decorationColor4;?>;
        border-right: 1px solid <?php echo $decorationColor4;?>;
        background-color: <?php echo $decorationColor3;?>;
        float: right;
        color: <?php echo $decorationColor1;?>;
        outline: none;
    }
    .efectus-web-chat:hover header .header-navigation .chat-button{
        color: <?php echo $decorationColor1;?>;
    }
    .efectus-web-chat header .header-navigation .chat-button:hover{
        background-color: <?php echo $decorationColor4;?>;
        color: <?php echo $decorationColor2;?>;
    }
    .efectus-web-chat header .standard-header-info{
        display: block;
        position: relative;
        transition: .2s;
    }
    .efectus-web-chat header .chating-header-info{
        position: absolute;
        top: 20px;
        margin: 0 auto;
        left: 0px;
        right: 0px;
        text-align: left;
        display: none;
        opacity: 0;
    }
    .efectus-web-chat header .chating-header-info .informacoes{
        position: absolute;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 100%;
    }
    .efectus-web-chat header .chating-header-info .user-img{
        width: 60px;
        border-radius: 50%;
        float: left;
        margin-right: 5px;
        margin-left: 10px;
        margin-top: 5px;
    }
    .efectus-web-chat header .chating-header-info .user-icon{
        width: 60px;
        border-radius: 50%;
        float: left;
        margin-right: 5px;
        margin-left: 10px;
        margin-top: 10px;
        font-size: 54px;
        line-height: 54px;
    }
    .efectus-web-chat header .chating-header-info .nome-usuario{
        font-weight: normal;
        font-size: 18px;
        line-height: 18px;
        margin: 0px;
        padding-top: 10px;
        padding-bottom: 5px;
        width: 210px;
        position: absolute;
        top: 0px;
        right: 10px;
    }
    .efectus-web-chat header .chating-header-info .nome-usuario::-webkit-scrollbar-button:hover{ 
        background-color: #AAA; 
    } 
    .efectus-web-chat header .chating-header-info .nome-usuario::-webkit-scrollbar-thumb{ 
        background-color: #ddd;
    } 
    .efectus-web-chat header .chating-header-info .nome-usuario::-webkit-scrollbar-thumb:hover{ 
        background-color: #CCC; 
    } 
    .efectus-web-chat header .chating-header-info .nome-usuario::-webkit-scrollbar-track{
        background-color: #efefef;
    } 
    .efectus-web-chat header .chating-header-info .nome-usuario::-webkit-scrollbar-track:hover{ 
        background-color: #efefef;
    } 
    .efectus-web-chat header .chating-header-info .nome-usuario::-webkit-scrollbar{ 
        width: 3px;
        height: 3px;
    }
    .efectus-web-chat header .chating-header-info .descricao-usuario{
        font-weight: normal;
        margin: 0px;
        padding: 5px;
        font-size: 12px;
        line-height: 12px;
        position: absolute;
        width: 210px;
        top: 50px;
        left: 75px;
        white-space: normal;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        transition: .2s;
    }
    .efectus-web-chat header .chating-header-info .descricao-usuario:hover{
        overflow: hidden;
        background-color: <?php echo $backgroundColor;?>;
        width: 100%;
        left: 0px;
    }
    .efectus-web-chat header .chating-header-info .status{
        position: absolute;
        top: -42px;
        width: 100%;
        text-align: left;  
        left: 10px;
        width: 210px;
    }
    /*END CHAT HEADER LAYOUT*/
    /*END HEADER CHAT*/
    
    /*SCROLL FIELD*/
    .efectus-web-chat .scrolling-field{
        width: 100%;
        height: 350px;
        overflow-x: hidden;
        overflow-y: auto;
        color: <?php echo $textColor;?>;
        font-size: 14px;
        position: relative;
        z-index: 1;
    }
    /*STANDARD CSS*/
    .efectus-web-chat .scrolling-field .chat-list{
        display: none;
    }
    .efectus-web-chat .scrolling-field .chat-list .chat-list-buttons{
        position: relative;
        width: 100%;
        height: 30px;
        line-height: 30px;
        background-color: <?php echo $decorationColor3;?>;
    }
    .efectus-web-chat .scrolling-field .chat-list .chat-list-buttons div{
        width: 98px;
        height: 29px;
        border-left: 1px solid <?php echo $decorationColor4;?>;
        border-right: 1px solid <?php echo $decorationColor4;?>;
        border-bottom: 1px solid transparent;
        display: inline-block;
        text-align: center;
        cursor: pointer;
    }
    .efectus-web-chat .scrolling-field .chat-list .chat-list-buttons .selected-button{
        border-bottom: 1px solid <?php echo $decorationColor1;?>;   
    }
    .efectus-web-chat .scrolling-field .chat-list .chat-list-buttons div:hover{
        background-color: <?php echo $decorationColor4;?>;
    }
    .efectus-web-chat .scrolling-field .loading{
        color:  <?php echo $decorationColor1;?>;
    }
    .efectus-web-chat .scrolling-field .login-field{
        width: 100%;
        height: 330px;
        position: absolute;
        z-index: 10;
        top: 0px;
        left: 0px;
        background-color: <?php echo $backgroundColor;?>;
        text-align: center;
    }
    .efectus-web-chat .scrolling-field .login-field h3{
        color: <?php echo $textColor2;?>;
        font-weight: normal;
    }
    .efectus-web-chat .scrolling-field .login-field input{
        padding: 2.5%;
        width: 75%;
        padding-left: 10px;
        padding-right: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        outline: none;
    }
    .efectus-web-chat .scrolling-field .login-field input:focus{
        border-color: <?php echo $decorationColor1;?>;
        color: <?php echo $decorationColor1;?>;
    }
    .efectus-web-chat .scrolling-field .login-field #btnEntrar{
        background-color: <?php echo $decorationColor1;?>; 
        color: #fff;
        width: 100px;
        border-radius: 5px;
        cursor: pointer;
    }
    .efectus-web-chat .scrolling-field .login-field #btnEntrar:hover{
        background-color: <?php echo $decorationColor2;?>; 
    }
    .efectus-web-chat .scrolling-field .login-field .error-message{
        color: <?php echo $decorationColor1;?>; 
        font-weight: normal;
        margin: 0px;    
        margin-bottom: 15px;
        font-size: 10px;
    }
    .efectus-web-chat .scrolling-field .mensagem-padrao{
        padding: 10px;
        text-align: center;
        font-weight: normal;
        color: <?php echo $textColor2;?>;
        font-size: 14px;
    }
    .efectus-web-chat .scrolling-field .link-padrao{
        color: <?php echo $decorationColor1;?>;
        text-decoration: none;
        border-bottom: 1px solid <?php echo $decorationColor1;?>;
        padding: 1px;
        cursor: pointer;
    }
    .efectus-web-chat .scrolling-field .link-padrao:hover{
        color: <?php echo $decorationColor2;?>;
        border-bottom: 1px solid <?php echo $decorationColor2;?>;
    }
    /*END STANDARD CSS*/
    /*CONTACTS LIST CSS*/
    .efectus-web-chat .scrolling-field .box-chat{
        position: relative;
        border-bottom: 2px solid <?php echo $decorationColor4;?>;
        width: 100%;
        height: 50px;
        margin-bottom: 0px;
        cursor: pointer;
        transition: .1s;
    }
    .efectus-web-chat .scrolling-field .box-chat:hover{
        background-color: <?php echo $decorationColor4;?>;
    }
    .efectus-web-chat .scrolling-field .box-chat .box-chat-img{
        height: 40px;
        border-radius: 50%;
        float: left;
        margin-right: 15px;
        margin-left: 10px;
        margin-top: 5px;
    }
    .efectus-web-chat .scrolling-field .box-chat .box-chat-user-icon{
        width: 60px;
        border-radius: 50%;
        float: left;
        margin-left: 10px;
        margin-right: -5px;
        margin-top: 10px;
        font-size: 38px;
        line-height: 38px;
    }
    .efectus-web-chat .scrolling-field .box-chat .box-chat-name{
        font-weight: normal;
        line-height: 20px;
        font-size: 16px;
        padding-top: 10px;
        margin: 0px;
    }
    .efectus-web-chat .scrolling-field .box-chat .box-chat-status{
        position: absolute;
        bottom: -15px;
        left: 67px;
    }
    .efectus-web-chat .scrolling-field .box-chat .box-chat-pending-message{
        position: absolute;
        right: 0px;
        top: 0px;
        width: 35px;
        height: 50px;
        color: <?php echo $decorationColor1;?>;
        padding: 0px;
        margin: 0px;
        text-align: center;
        font-size: 18px;
        line-height: 50px;
    }
    /*END CONTACTS LIST CSS*/
    /*CONVERSATION CSS*/
    .efectus-web-chat .scrolling-field .sender{
        position: relative;
        margin-left: 80px;
        margin-top: 10px;
        margin-bottom: 15px;
        padding: 10px;
        max-width: 200px;
        background-color: <?php echo $decorationColor4;?>;
        border-top-left-radius: 10px;
        border-bottom-right-radius: 10px;
        border-bottom-left-radius: 10px;
        text-align: right;
    }
    .efectus-web-chat .scrolling-field .sender img{
        width: 100%;
        text-align: center;
        border-radius: 4px;
        cursor: pointer;
    }
    .efectus-web-chat .scrolling-field .sender .time{
        position: absolute;
        bottom: -15px;
        opacity: 0;
        transition: .2s;
        font-size: 10px;
    }
    .efectus-web-chat .scrolling-field .sender:hover .time{
        opacity: 1;
    }
    .efectus-web-chat .scrolling-field .sender .sending-message-loading{
        position: absolute;
        left: 0px;
        bottom: 4px;
        font-size: 6px;
    }
    .efectus-web-chat .scrolling-field .recent-sender .time{
        opacity: 1;
    }
    .efectus-web-chat .scrolling-field .receiver{
        position: relative;
        margin-top: 10px;
        margin-bottom: 15px;
        padding: 10px;
        max-width: 200px;
        background-color: <?php echo $decorationColor4;?>;
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
        border-bottom-left-radius: 10px;
    }
    .efectus-web-chat .scrolling-field .receiver img{
        width: 100%;
        text-align: center;
        border-radius: 4px;
        cursor: pointer;
    }
    .efectus-web-chat .scrolling-field .receiver .time{
        position: absolute;
        bottom: -15px;
        right: 10px;
        opacity: 0;
        transition: .2s;
        font-size: 10px;
    }
    .efectus-web-chat .scrolling-field .recent-receiver .time{
        opacity: 1;
    }
    .efectus-web-chat .scrolling-field .receiver:hover .time{
        opacity: 1;
    }
    /*END CONVERSATION CSS*/
    /*SCROLL BAR CSS*/
    .efectus-web-chat .scrolling-field::-webkit-scrollbar-button{ 
        display: none;
        height: 13px; 
        border-radius: 0px; 
        background-color: #AAA;
    } 
    .efectus-web-chat .scrolling-field::-webkit-scrollbar-button:hover{ 
        background-color: #AAA;
    } 
    .efectus-web-chat .scrolling-field::-webkit-scrollbar-thumb{ 
        background-color: #ddd;
    } 
    .efectus-web-chat .scrolling-field::-webkit-scrollbar-thumb:hover{ 
        background-color: #CCC;
    } 
    .efectus-web-chat .scrolling-field::-webkit-scrollbar-track{
        background-color: #efefef;
    } 
    .efectus-web-chat .scrolling-field::-webkit-scrollbar-track:hover{ 
        background-color: #efefef;
    } 
    .efectus-web-chat .scrolling-field::-webkit-scrollbar{ 
        width: 8px; 
    }
    .efectus-web-chat .scrolling-field .display-messages{
        position: absolute;
        width: 100%;
        height: 100%;
        display: none;
        top: 0px;
        left: 0px;
    }
    .efectus-web-chat .scrolling-field .display-messages .background{
        position: absolute;
        background-color: #000;
        width: 300px;
        height: 100%;
        min-height: 335px;
        top: -10px;
        left: 0px;
        transition: 0s z-index, .3s opacity;
        z-index: 5;
        visibility: hidden;
        opacity: 0;
    }
    .efectus-web-chat .scrolling-field .loading-message{
        text-align: center;
        top: 10px;
        font-weight: normal;
        color: <?php echo $textColor;?>;
        font-size: 14px; 
    }
    .efectus-web-chat .scrolling-field .loading-message i{
        font-size: 12px;
    }
    /*END SCROLL BAR CSS*/
    .chat-image-zoom{
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0px;
        left: 0px;
        background-color: rgba(0, 0, 0, .5);
        z-index: 101;
        visibility: hidden;
        opacity: 0;
        transition: .2s;
        overflow: hidden;
        overflow-x: auto;
        cursor: pointer;
    }
    .chat-image-zoom img{
        position: fixed;
        height: 80vh;
        top: 10vh;
        margin: 0 auto;
        left: 0;
        right: 0;
    }
    .chat-image-zoom .back-zoom{
        position: absolute;
        top: 92vh;
        text-align: center;
        margin: 0 auto;
        left: 0;
        right: 0;
        cursor: pointer;
        font-weight: bold;
        color: #fff;
    }
    /*END SCROLL FIELD*/
    
    /*CHAT BOTTOM FIELD*/
    /*STANDARD BOTTOM*/
    .efectus-web-chat .bottom-info{
        width: 100%;
        height: 50px;
        background-color: <?php echo $decorationColor4;?>;
        position: absolute;
        bottom: 0px;
        text-align: center;
    }
    .efectus-web-chat .bottom-info .logo-bottom{
        height: 20px;
        margin-top: 14px;
    }
    /*END STANDARD BOTTOM*/
    /*WRITING FIELD*/
    .efectus-web-chat .writing-field{
        width: 100%;
        height: 50px;
        background-color: <?php echo $decorationColor3;?>;
        visibility: hidden;
    }
    .efectus-web-chat .writing-field .message-options{
        width: 20px;
        height: 50px;
        text-align: center;
        float: left;
        font-size: 24px;
        line-height: 50px;
        color: #999;
        background-color: <?php echo $decorationColor3;?>;
        position: relative;
    }
    .efectus-web-chat .writing-field .message-options .btn-option{
        transition: .2s;
        position: relative;
        width: 20px;
        height: 50px;
    }
    .efectus-web-chat .writing-field .message-options .btn-option:hover{
        background-color: <?php echo $decorationColor4;?>;
        cursor: pointer;
    }
    .efectus-web-chat .writing-field .message-options .btn-option:hover .message-options{
        display: none;
    }
    .efectus-web-chat .writing-field .message-options .btn-option:active{
        color: <?php echo $decorationColor2;?>;
    }
    .efectus-web-chat .writing-field .message-options .display-options{
        position: absolute;
        width: 300px;
        text-align: left;
        background-color: <?php echo $decorationColor4;?>;
        bottom: 100%;
        left: -300px;
        transition: .3s linear;
        z-index: -1;
        opacity: 0;
    }
    .efectus-web-chat .writing-field .message-options .display-options-active{
        left: 0px;
        opacity: 1;
        z-index: 1;
    }
    .efectus-web-chat .writing-field .message-options .display-options .option{
        font-size: 14px;   
        color: <?php echo $decorationColor2;?>;
        line-height: 30px;
        width: 95%;
        border-bottom: 1px solid #ccc;
        padding-left: 5%;
        cursor: pointer;
    }
    .efectus-web-chat .writing-field .message-options .display-options .option:hover{
        background-color: #ccc;
    }
    .efectus-web-chat .writing-field .message-input{
        width: 220px;
        height: 46px;
        padding: 10px;
        padding-top: 0px;
        padding-bottom: 0px;
        outline: none;
        font-size: 16px;
        line-height: 50px;
        border: 2px solid <?php echo $decorationColor4;?>;
        color: <?php echo $textColor;?>;
        margin: 0px;
        float: left;
    }
    .efectus-web-chat .writing-field .message-input:focus{
        color: <?php echo $decorationColor1;?>;
        border-bottom-color: <?php echo $decorationColor1;?>;
        box-shadow: none;
    }
    .efectus-web-chat .writing-field .btn-enviar{
        background-color: <?php echo $decorationColor3;?>;
        text-align: center;
        border: none;
        width: 36px;
        height: 50px;
        padding: 0px;
        margin: 0px;
        line-height: 50px;
        color: <?php echo $decorationColor1;?>;
        cursor: pointer;
        font-size: 24px;
        outline: none;
    }
    .efectus-web-chat .writing-field .btn-enviar:hover{
        background-color: <?php echo $decorationColor4;?>;
    }
    .efectus-web-chat .writing-field .btn-enviar:active{
        color: #666;   
    }
    .efectus-web-chat .file-preview{
        position: absolute;
        max-width: 280px;
        padding: 10px;
        height: 320px;
        top: 120px;
        margin: 0 auto;
        left: 0;
        right: 0;
        background-color: <?php echo $decorationColor3;?>;
        color: <?php echo $textColor;?>;
        z-index: 3;
        text-align: center;
        visibility: hidden;
        opacity: 0;
    }
    .efectus-web-chat .display-image{
        width: 80%;
        margin-left: 10%;
        max-height: 200px;
        overflow-x: auto;
    }
    .efectus-web-chat .display-image::-webkit-scrollbar-button:hover{ 
        background-color: #AAA; 
    } 
    .efectus-web-chat .display-image::-webkit-scrollbar-thumb{ 
        background-color: #ddd;
    } 
    .efectus-web-chat .display-image::-webkit-scrollbar-thumb:hover{ 
        background-color: #CCC; 
    } 
    .efectus-web-chat .display-image::-webkit-scrollbar-track{
        background-color: #efefef;
    } 
    .efectus-web-chat .display-image::-webkit-scrollbar-track:hover{ 
        background-color: #efefef;
    } 
    .efectus-web-chat .display-image::-webkit-scrollbar{ 
        width: 8px; 
    }
    .efectus-web-chat .image-preview{
        width: 100%;
        background-color: <?php echo $decorationColor4;?>;
    }
    .efectus-web-chat .loading-background{
        position: relative;
        width: 80%;
        margin-left: 10%;
        border-radius: 5px;
        height: 5px;
        background-color: <?php echo $decorationColor4;?>;
        margin-top: 10px;
        margin-bottom: 20px;
        overflow: hidden;
    }
    .efectus-web-chat .loading-background .loading-view{
        position: absolute;
        height: 5px;
        top: 0;
        left: 0;
        width: 0%;
        background-color: <?php echo $decorationColor1;?>;
    }
    .efectus-web-chat a{
        text-decoration: none;
    }
    .efectus-web-chat .btn-file-cancelar{
        cursor: pointer;
        padding: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .efectus-web-chat .btn-file-enviar{
        cursor: pointer;
        padding: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
        background-color: <?php echo $decorationColor1;?>;
        color: #fff;
        border-radius: 5px;
    }
    .efectus-web-chat .btn-file-enviar:hover{
        background-color: <?php echo $decorationColor2;?>;
    }
    .efectus-web-chat .btn-file-enviar:active{
        background-color: <?php echo $textColor;?>;   
    }
    /*END WRITING FIELD*/
    /*END CHAT BOTTOM FIELD*/
    @media screen and (min-width: 0px) and (max-width: 480px){
        .efectus-web-chat .scrolling-field{
            height: 300px;   
        }
        .efectus-web-chat .scrolling-field .login-field{
            height: 300px;   
        }
    }
    /*END GENERAL CHAT CSS*/
</style>