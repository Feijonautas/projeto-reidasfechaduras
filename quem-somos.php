<?php
    session_start();
    
    require_once "@classe-paginas.php";

    $cls_paginas->set_titulo("Quem Somos");
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
			.banner{
				width: 100%;
			}
			.banner img{
				width: 100%;
			}
			.row-reverse{
				flex-direction: row-reverse;
			}
            .main-content{
				position: relative;
				top: -200px;
                width: 80%;
				background-color: #fff;
				z-index: 1;
                margin: 0 auto;
                min-height: 300px;
            }
			.box-titulo{
				display: flex;
				align-items: center;
				flex-direction: column;
				width: 80%;
				margin: 0 auto;
				height: 200px;
			}
			.display-loja{
				display: flex;
				width: 100%;
				margin-top: 60px;
			}
			.display-loja .box-image{
				display: flex;
				align-items: center;
				justify-content: center;
				width: 50%;
			}
			.display-loja .box-image img{
				width: 80%;
				height: 400px;
			}
			.display-loja .box-desc{
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				width: 50%;
			}
			.display-loja .box-desc a{
				padding: 6px 10px 6px;
				border: 1px solid #002686;
				text-decoration: none;
				background-color: #FFB800;
				color: #fff;
				transition: .2s;
			}
			.display-loja .box-desc a:hover{
				background-color: #002686;
				color: #fff;
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
        <div class="banner">
        	<img src="imagens/estrutura/banner-quemsomos.PNG">
        </div>
        <div class="main-content">
           	<div class="box-titulo">
            	<h1 align=center>Quem Somos</h1>
            	<p>Empresa fundada em 1978, conta em sua equipe de colaboradores, vendedores tecnicamente preparados para oferecer as melhores soluções, adequadas as necessidades de clientes consumidores, empresas comerciais, indústrias e prestadores de serviços, colégios, hospitais e outras.</p>
            </div>
            <div class="display-loja">
            	<div class="box-image">
            		<img src="imagens/estrutura/loja-fisica-1.png">
            	</div>
            	<div class="box-desc">
            		<p>Empresa fundada em 1978, conta em sua equipe de colaboradores, vendedores tecnicamente preparados para oferecer as melhores soluções, adequadas as necessidades de clientes consumidores, empresas comerciais, indústrias e prestadores de serviços, colégios, hospitais e outras.</p>
            		<a href="contato.php">Entre em Contato</a>
            	</div>
            </div>
            <div class="display-loja row-reverse">
            	<div class="box-image">
            		<img src="imagens/estrutura/loja-fisica-2.png">
            	</div>
            	<div class="box-desc">
            		<p>Cofres, Fechaduras eletrônicas e com senha, Fechaduras digitais , Barras Anti pânico, Molas Hidráulicas para porta de vidro e madeira, Dobradiças, Cadeados, Puxadores para portas, Puxadores e acessórios para móveis, Controle de Acesso, Barra de apoio, Fechaduras em geral, Ferragens de acabamento, e muitos outros produtos. Somos revendedores autorizados de diversas marcas como La Fonte, Pado, Papaiz, Dorma, Imab, Arouca, Stam, Amelco, Fermax, Hafele, Isero, Keso, Volper, Soprano e outras. Estoque e variedade.</p>
            		<a href="contato.php">Entre em Contato</a>
            	</div>
            </div>
        </div>
        <!--END THIS PAGE CONTENT-->
        <?php
            require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>