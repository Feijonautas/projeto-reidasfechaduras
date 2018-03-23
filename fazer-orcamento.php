<?php
    $titulo = "Rei das Fechaduras - Loja";
    $descricao = "Descrição do site";
    require_once "chat-efectus-web.php";
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="<?php echo $descricao;?>">
        <meta name="author" content="Efectus Web Masters">
        <title><?php echo $titulo;?></title>
        <link type="text/css" rel="stylesheet" href="css/estilo.css">
        <link type="text/css" rel="stylesheet" href="css/index.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/standard.js"></script>
    </head>
    <style>
        .display-orcamento{
        }
        .display-orcamento .titulo-principal{
            font-size: 40px;
            margin: 0 auto;
        }
        .display-orcamento hr{
            margin-top: 0px;
            height: 5px;
            width: 100px;
            border: none;
            background-color: #ffb600;
        }
        .formulario{
            text-align: center;
            width: 20%;
            margin-left: 40%;
        }
        .formulario .input, .formulario .textarea{
            text-align: left;
            margin: 2%;
        }
        .formulario .input label, .formulario .textarea label{
            margin: 1%;
            width: 100%;
        }
        .formulario .input input, .formulario textarea{
            border: 2px solid #102a83;
            border-radius: 10px;
            padding: 7px;
            outline: none;
            color: #ffb600;
            resize: none;
        }
        .formulario .input input[type="text"]{
            width: 100%;
        }
        .formulario .textarea{
            text-align: left;
        }
        .formulario textarea{
            height: 80px;
            width: 100%;
        }
        @media screen  and (max-width: 1366px){
            .formulario {
                width: 33.33%;
                margin-left: 33.33%;
            }
            @media screen and (max-width: 980px){
                .formulario {
                    width: 50%;
                    margin-left: 25%;
                }   
                @media screen and (max-width: 480px){
                    .display-orcamento .titulo-principal {
                        font-size: 30px;
                        margin: 0 auto;
                    }
                    .formulario {
                        width: 100%;
                        margin-left: 0%;
                    } 
                    .formulario .input input, .formulario textarea{
                        width: 90%;
                    }
                }
            }
        }
    </style>
    <script>
        $(document).ready(function(){
            var cadastrando = false;
            var objFormulario = $("#formOrcamento");
            objFormulario.off().on("submit", function(){
                event.preventDefault();
                if(!cadastrando){
                    cadastrando = true;
                    var objNome = $("#formOrcamento #nome");
                    var nome = objNome.val();
                    var objTelefone = $("#formOrcamento #telefone");
                    var telefone = objTelefone.val();
                    var objEmail = $("#formOrcamento #email");
                    var email = objEmail.val();
                    var objProduto = $("#formOrcamento #produto");
                    var produto = objProduto.val();
                    var objMensagem = $("#formOrcamento #mensagem");
                    var mensagem = objMensagem.val();
                    if(nome.length < 3){
                        mensagemAlerta("O campo Nome deve conter no mínimo 3 caracteres.", objNome);
                        return false;
                    }
                    if(telefone.length < 9){
                        mensagemAlerta("O campo telefone deve conter no mínimo 9 dígitos.", objTelefone);
                        return false;
                    }
                    if(validarEmail(email) == false){
                        mensagemAlerta("O campo e-mail deve ser preenchido corretamente.", objEmail);
                        return false;
                    }
                    if(mensagem.length < 3){
                        mensagemAlerta("O campo Mensagem deve conter no mínimo 24 caracteres.", objMensagem);
                        return false;
                    }

                    objFormulario.submit();
                }
            });
        });
    </script>
    <body>
        <?php
            require_once "@pew/pew-system-config.php";
            require_once "header.php";
            require_once "interatividade.php";
        
            $tabela_categorias = $pew_db->tabela_categorias;
            $tabela_produtos = $pew_custom_db->tabela_produtos;
            $tabela_imagens_produtos = $pew_custom_db->tabela_imagens_produtos;
            $tabela_marcas = $pew_custom_db->tabela_marcas;
        ?>
        <section class="display-orcamento">
            <form class="formulario" id="formOrcamento" action="grava-orcamento.php" method="POST">
            <h1 class="titulo-principal">ORÇAMENTO</h1>
            <hr>
                <div class="input">
                    <label for="nome">Nome</label>
                    <input id="nome" type="text" name="nome">
                </div>
                <div class="input">
                    <label for="telefone">Telefone/Celular</label>
                    <input id="telefone" type="text" name="telefone">
                </div>
                <div class="input">
                    <label for="email">Email</label>
                    <input id="email" type="text" name="email">
                </div>
                <div class="input">
                    <?php
                        include "include-fazer-orcamento.php";
                    ?>
                </div>
                <div class="textarea">
                    <label for="mensagem">Mensagem</label>
                    <textarea id="mensagem" name="mensagem"></textarea>
                </div>
                <input type="submit" class="botao-padrao" value="Enviar">
            </form>
        </section>
        <br style="clear:both;">
        <?php
            require_once "footer.php";
            require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>