<?php
session_start();
$nomeEmpresa = "Rei das Fechaduras";
$descricaoPagina = "DESCRIÇÃO MODELO ATUALIZAR...";
$tituloPagina = "Formas de pagamento - $nomeEmpresa";
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
            <h1 align=center>FORMAS DE PAGAMENTO E DE ENVIO</h1>
            <h4><b>Trabalhamos com diversas formas de pagamento.</b></h4>
            Assim que finalizar sua compra, você poderá escolher qual a forma que mais lhe agrada. Demais instruções serão passadas após a escolha da forma de pagamento.
            <h4><b>Boleto bancário:</b></h4>
            O boleto bancário é válido somente para compra à vista, não sendo possível, portanto, o parcelamento.
            Finalizado o pedido, o sistema gera o boleto e também envia um link para seu email, o mesmo deverá ser impresso e pago em qualquer banco em até 03 dias corridos. Após esta data, o pedido será cancelado. O(s) produto(s) escolhido(s) terá(ão) sua reserva feita após confirmação de pagamento fornecida pela instituição financeira, o que se dá somente após compensação do valor pago, que pode ocorrer em até 3 dias úteis.
            <h4><b>Cartões de Crédito:  </b></h4>
            Aceitamos os seguintes cartões de crédito: MasterCard, Visa e Diners.
            • MasterCard – Este cartão oferece parcelamento em até 04 vezes sem juros.
            • Visa – Este cartão oferece parcelamento em até 04 vezes sem juros.
            • Diners – Este cartão oferece parcelamento em até 04 vezes sem juros.
            Os preços praticados não incluem a instalação dos produtos, que pode ser feita em qualquer loja especializada.
            Aceitamos somente cartões de crédito emitidos no Brasil. Caso a compra seja via cartão de crédito, o CPF e o número do cartão devem ser da mesma pessoa, necessariamente.
            Se você optar por pagar com boleto deverá imprimi-lo após a confirmação da compra.
            <h4><b>Envio:</b></h4>
            A entrega de sua(s) mercadoria(s) será providenciada a partir da confirmação do pagamento feita pela rede bancária ou, em caso de compra por cartão de crédito, após análise do cadastro do cliente. Se necessário solicitaremos o envio, por e-mail, de alguns documentos.
            <h4><b>Correios:</b></h4>
            Para todo Brasil.
            Somente os produtos que são aceitos ser transportados pelo mesmo.
            Para saber mais acesse Proibições e Restrições dos Correios.
            <h4><b>Prazos:</b></h4>
            A entrega de sua(s) mercadoria(s) será providenciada a partir da confirmação do pagamento feita pela rede bancária ou, em caso de compra por cartão de crédito, após análise do cadastro do cliente. Se necessário solicitaremos o envio, por e-mail, de alguns documentos.
            Os prazos de entrega do correio são contados a partir do primeiro dia útil seguinte ao da postagem e variam de acordo com as localidades de origem e destino da postagem.
            Para postagens em sábados, domingos e feriados, considerar o dia útil seguinte como o dia da postagem.
        </div>
        <br>
        <br>
        <!--END THIS PAGE CONTENT-->
        <?php
        require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>