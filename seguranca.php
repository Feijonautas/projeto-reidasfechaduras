<?php
session_start();
$nomeEmpresa = "Rei das Fechaduras";
$descricaoPagina = "DESCRIÇÃO MODELO ATUALIZAR...";
$tituloPagina = "Segurança - $nomeEmpresa";
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
            .main-content{
                width: 80%;
                margin: 0 auto;
                min-height: 300px;
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
            <h1 align=center>SEGURANÇA</h1>
            <h2><b>Compra Segura</b></h2>
            <article>
                O Rei das Fechaduras tem um especial compromisso com você, nosso cliente, quanto à segurança e privacidade de seus dados. O respeito ao cliente e o sigilo de suas informações é muito importante para nós. Por isso, você, cliente do Rei das Fechaduras, tem a garantia que sua compra é segura.O Rei das Fechaduras elaborou um conjunto de ações para garantir a segurança de todas as compras feitas em nossa loja, através de um certificado digital Rapid SSL, independentemente da forma de pagamento escolhida. Todas as informações que você fornecer no processo de compra são totalmente criptografadas.
            </article>
            <h2><b>Criptografia</b></h2>
            <article>
                Todas as informações que passam pelo nosso processo de compra são automaticamente codificadas por um sistema de criptografia próprio. Assim, seus dados pessoais, a forma de pagamento escolhida e toda e qualquer outra informação fornecida ao Rei das Fechaduras, será mantida em sigilo. O ícone 'cadeado fechado' - na parte inferior do seu monitor - durante o pedido é um símbolo da criptografia das informações. 
            </article>                      
            <h2><b>Compras com Cartão de Crédito</b></h2>
            <article>
                Além da criptografia, outro fator de segurança é a automática destruição dos dados relativos ao número do cartão de crédito. O Rei das Fechaduras utiliza o número do cartão somente no processamento da compra e, tão logo ocorra a confirmação pela administradora do cartão, o número é automaticamente destruído, não sendo, de nenhuma forma, guardado na base de dados do Rei das Fechaduras.   
            </article>                                    
            <h2><b>Utilização de Informações</b></h2>
            <article>
                O Rei das Fechaduras não comercializará suas informações pessoais. Tais informações poderão, entretanto, ser agrupadas conforme determinados critérios e utilizadas como estatísticas genéricas objetivando um melhor entendimento do perfil do consumidor.  
            </article>                              
            <h2><b>Em caso de dúvidas, entre em contato.</b></h2>
            <article>
                Favor entrar em contato diretamente com os administradores desses sites se você tiver alguma dúvida sobre suas políticas de privacidade.Para maiores informações, envie e-mail para atendimento@reidasfechaduras.com.br
            </article>
        </div>
        <br>
        <!--END THIS PAGE CONTENT-->
        <?php
        require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>