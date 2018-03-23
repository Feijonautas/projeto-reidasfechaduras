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
    <body>
        <?php
            require_once "header.php";
            require_once "interatividade.php";
            require_once "banner.php";
            require_once "include-lojas.php";
            require_once "include-categorias.php";
            require_once "include-orcamento.php";
            require_once "footer.php";
            require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>