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
        <style type="text/css">
            .display-empresa{
                width: 70%;
                margin-bottom: 5%;
                margin-left: 15%;
            }
            .display-empresa .box-empresa img{
                margin-top: 5%;
                margin-bottom: 5%;
                width: 100%;
            }
            .display-empresa .box-empresa article{
                text-align: justify;
            }
            
        </style>
    </head>
    <body>
        <?php
            require_once "header.php";
            require_once "interatividade.php";
        ?>
        <section class="display-empresa">
            <div class="titulo-padrao">
                <h2 class="titulo">Empresa</h2>
                <div class="border"></div>
            </div>
            <div class="box-empresa">
                <img src="imagens/estrutura/loja-externa-rei-das-fechaduras.PNG" title="Foto externa da loja - Rei das Fechaduras" alt="Foto externa - Rei das Fechaduras">
                <article>Empresa fundada em 1978, conta em sua equipe de colaboradores, vendedores tecnicamente preparados para oferecer as melhores soluções, adequadas as necessidades de clientes consumidores, empresas comerciais, indústrias e prestadores de serviços, colégios, hospitais e outras.<br><br>Cofres, Fechaduras eletrônicas e com senha, Fechaduras digitais , Barras Anti pânico, Molas Hidráulicas para porta de vidro e madeira, Dobradiças, Cadeados, Puxadores para portas, Puxadores e acessórios para móveis, Controle de Acesso, Barra de apoio, Fechaduras em geral, Ferragens de acabamento, e muitos outros produtos. Somos revendedores autorizados de diversas marcas como La Fonte, Pado, Papaiz, Dorma, Imab, Arouca, Stam, Amelco, Fermax, Hafele, Isero, Keso, Volper, Soprano e outras. Estoque e variedade.


                </article>
            </div>
        </section>
        <?php
            require_once "footer.php";
            require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>