<?php
    session_start();
    
    require_once "@classe-paginas.php";

    $cls_paginas->set_titulo("Esqueci minha senha");
    $cls_paginas->set_descricao("DESCRIÇÃO MODELO ATUALIZAR...");
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
        <meta name="HandheldFriendly" content="true">
        <meta name="description" content="<?php echo $cls_paginas->descricao;?>">
        <meta name="author" content="Efectus Web">
        <title><?php echo $cls_paginas->titulo;?></title>
        <link type="image/png" rel="icon" href="imagens/identidadeVisual/logo-icon.png">
        <!--DEFAULT LINKS-->
        <?php
            require_once "@link-standard-styles.php";
            require_once "@link-standard-scripts.php";
            require_once "@link-important-functions.php";
        ?>
        <!--END DEFAULT LINKS-->
        <!--PAGE CSS-->
        <style>
            .main-content{
                width: 80%;
                margin: 80px auto 80px auto;
                min-height: 300px;
            }
            .main-content article{
                text-align: justify;
            }
            .main-content .form-forgotPassword{
                text-align: center;
                width: 30%;
                margin: 0 auto;
                padding: 15px 15px;
                border: 1px solid #f3f3f3;
                background-color: #f8f8f8;
            }
            .main-content .form-forgotPassword .box-input{
                display: flex;
                align-items: center;
                justify-content: space-between;
                width: 80%;
                margin: 20px auto;
            }
            .main-content .form-forgotPassword .box-input input{
                width: 70%;
                transition: .1s;
            }
            .main-content .form-forgotPassword .box-input input:focus{
                width: 75%;
            }
            .main-content .form-forgotPassword button{
                cursor: pointer;
                width: 100px;
            }
        </style>
        <!--END PAGE CSS-->
        <!--PAGE JS-->
        <script>
            $(document).ready(function(){
                console.log("Página carregada");
                
                var btnSubmit = $('#btn-js-submit');
                btnSubmit.click(function(){
                    var valEmail = $('#recover_password');
                    $.ajax({
                        method: 'POST',
                        url: '@envia-link-recover.php',
                        data: {
                            email: valEmail
                        },
                        success
                    });
                });
                
            });
        </script>
        <!--END PAGE JS-->
    </head>
    <body>
        <!--REQUIRES PADRAO-->
        <?php
            require_once "@link-body-scripts.php";
            require_once "@classe-system-functions.php";
            require_once "@include-header-principal.php";
            require_once "@include-interatividade.php";
        ?>
        <!--THIS PAGE CONTENT-->
        <div class="main-content">
            <form class="form-forgotPassword">
                <h1 align=center>ESQUECI MINHA SENHA</h1>
                <article>Para redefinir sua senha, digite e-mail no campo abaixo:</article>
                <div class="box-input">
                    <label>E-mail:</label>
                    <input type="email" name="recover_password[email]" id="recover_password">
                </div>
                <button type="submit" id="btn-js-submit">Validar</button>
            </form>
        </div>
        <!--END THIS PAGE CONTENT-->
        <?php
            require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>