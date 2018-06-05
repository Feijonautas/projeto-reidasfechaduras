<?php
    session_start();
    
    require_once "@classe-paginas.php";

    $cls_paginas->set_titulo("Entrega e Devolução");
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
                margin: 0 auto;
                min-height: 300px;
            }
            .main-content h4{
                font-weight: 400;
            }
        </style>
        <!--END PAGE CSS-->
        <!--PAGE JS-->
        <script>
            $(document).ready(function(){
                console.log("Página carregada");
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
            <h1 align=center>ENTREGA E DEVOLUÇÃO</h1>
            <h2>Envio:</h2>
            <h4>A entrega de sua(s) mercadoria(s) será providenciada a partir da confirmação do pagamento feita pela rede bancária ou, em caso de compra por cartão de crédito, após análise do cadastro do cliente. Se necessário solicitaremos o envio, por e-mail, de alguns documentos.</h4>
            <h2>Correios:</h2>
            <h4>Para todo Brasil.
            Somente os produtos que são aceitos ser transportados pelo mesmo.
            Para saber mais acesse Proibições e Restrições dos Correios.</h4>
            <h2>Prazos:</h2>
            <h4>A entrega de sua(s) mercadoria(s) será providenciada a partir da confirmação do pagamento feita pela rede bancária ou, em caso de compra por cartão de crédito, após análise do cadastro do cliente. Se necessário solicitaremos o envio, por e-mail, de alguns documentos.
            Os prazos de entrega do correio são contados a partir do primeiro dia útil seguinte ao da postagem e variam de acordo com as localidades de origem e destino da postagem.</h4>
        </div>
        <!--END THIS PAGE CONTENT-->
        <?php
            require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>