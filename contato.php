<?php
    session_start();
    $nomeEmpresa = "Rei das Fechaduras";
    $descricaoPagina = "DESCRIÇÃO MODELO ATUALIZAR...";
    $tituloPagina = "MUDAR TITULO - $nomeEmpresa";
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
        <meta name="HandheldFriendly" content="true">
        <meta name="description" content="<?php echo $descricaoPagina;?>">
        <meta name="author" content="Efectus Web">
        <title><?php echo $tituloPagina;?></title>
        <!--DEFAULT LINKS-->
        <?php
            require_once "@link-standard-styles.php";
            require_once "@link-standard-scripts.php";
            require_once "@link-important-functions.php";
        ?>
        <!--END DEFAULT LINKS-->
        <!--PAGE CSS-->
        <style>
			.flex-reverse{
				flex-direction: row-reverse;
			}
            .main-content{
                width: 100%;
            }
			.display-lojas{
				width: 80%;
				margin: 0 auto;
			}
			.box-loja{
				display: flex;
				justify-content: center;
				margin: 100px 0 100px 0;
			}
			.box-loja .item-contato{
				width: 50%;
				height: 300px;
				padding-left: 50px;
			}
			.box-loja .item-contato .border{
				width: 200px;
				height: 1px;
				background-color: #002586;
			}
			.box-loja .item-contato .border1{
				width: 100px;
				height: 1px;
				background-color: #002586;
			}
			.box-loja .item-contato h1{
				margin: 0;
				padding: 0;
			}
			.box-loja .item-contato h2{
				margin: 0;
				padding: 0;
			}
			.box-loja .item-mapa{
				width: 50%;
				height: 300px;
			}
			.box-loja .item-mapa iframe{
				width: 100%;
				height: 300px;
			}
			.display-form{
				display: flex;
				flex-direction: column;	
				align-items: center;
				width: 25%;
				margin: 0 auto;
				background-color: #ccc;
				margin-bottom: 100px;
				-webkit-box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
				-moz-box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
				box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
			}
			.display-form .form{
				width: 80%;
				display: flex;
				flex-direction: column;
				margin: 0 10px 0 10px;
			}
			.display-form .form input{
				border-radius: 3px;
				border: none;
				height: 25px;
			}
			.display-form .form textarea{
				border-radius: 3px;
				border: none;
				height: 100px;
				resize: none;
			}
			.display-form .form .btn-contato{
				align-self: center;
				margin: 10px 0 10px 0;
				width: 60px;
				height: 30px;
				font-size: 15px;
				background-color: #fff;
				color: #002586;
				transition: .2s;
				cursor: pointer;
			}
			.display-form .form .btn-contato:hover{
				background-color: #FFB800;
				color: #fff;
			}
			.display-form .form h1{
				margin: 0;
				margin-top: 10px;
				font-size: 20px;
				font-weight: normal;
				color: #002586;
			}
			.display-form .box-titulo{
				display: flex;
				justify-content: center;
				align-items: center;
				width: 100%;
				height: 100px;
				background-color: #FFB800;
			}
			.display-form .box-titulo h1{
				color: #FFF;
				font-size: 25px;
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
			<div class="display-lojas">
				<div class="box-loja">
					<div class="item-contato">
						<h1>LOJA CABRAL - AHÚ</h1>
						<div class="border"></div>
						<p>Endereço : Av.Anita Garibaldi, 1854, loja 05, Ahú</p>
						<p>Curitiba, PR</p>
						<p>Fone : (41)3016-1414</p>
						<h2>Horário</h2>
						<div class="border1"></div>
						<p>Segunda a Sexta das 8:30 às 18:30h</p>
						<p>Sábado das 8:30 às 17:00h</p>
					</div>
					<div class="item-mapa">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3604.26710949123!2d-49.258939784908655!3d-25.395868037764814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dce6908411881d%3A0xefb46c4deeeb37d4!2sAv.+Anita+Garibaldi%2C+1854+-+05+-+Ahu%2C+Curitiba+-+PR%2C+80540-180!5e0!3m2!1spt-BR!2sbr!4v1523907053682" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
       		<div class="display-lojas">
				<div class="box-loja flex-reverse">
					<div class="item-contato">
						<h1>LOJA VISCONDE</h1>
						<div class="border"></div>
						<p>Endereço : Av.Visconde de Guarapuava, 1915, Centro</p>
						<p>Curitiba, PR</p>
						<p>Fone : (41)3016-8008</p>
						<h2>Horário</h2>
						<div class="border1"></div>
						<p>Segunda a Sexta das 8:30 às 18:30h</p>
						<p>Sábado das 8:30 às 17:00h</p>
					</div>
					<div class="item-mapa">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3603.1380996678486!2d-49.26253368490777!3d-25.433646139265445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dce443a4bcaffd%3A0x1e37bf2224e97a5b!2sAv.+Visc.+de+Guarapuava%2C+1915+-+Centro%2C+Curitiba+-+PR%2C+80060-060!5e0!3m2!1spt-BR!2sbr!4v1523906946567" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
       		<div class="display-form">
       			<div class="box-titulo">
       				<h1>Entre em Contato</h1>
       			</div>
       			<form  class="form" method="post">
       				<h1>Nome</h1>
       				<input type="text" name="nome">
       				<h1>E-mail</h1>
       				<input type="text" name="email">
       				<h1>Telefone</h1>
       				<input type="text" name="telefone">
       				<h1>Assunto</h1>
       				<input type="text" name="assunto">
       				<h1>Dúvida</h1>
       				<textarea></textarea>
       				<input class="btn-contato" type="submit" value="Enviar">
       			</form>
       		</div>
        </div>
        <!--END THIS PAGE CONTENT-->
        <?php
            require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>