<?php
session_start();
$nomeEmpresa = "Rei das Fechaduras";
$descricaoPagina = "DESCRIÇÃO MODELO ATUALIZAR...";
$tituloPagina = "Como Comprar - $nomeEmpresa";
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
            <h1 align=center>COMO COMPRAR</h1>
            <h3><b>Veja como comprar no Rei das Fechaduras é simples e fácil!</b></h3>
            
            <h3><b>Passo 1: Localize o produto que deseja comprar</b></h3>
            <article>
            Localize a página de detalhes do produto que deseja comprar.
            <h3><b>Passo 2: Coloque o produto no carrinho de compras:</b></h3>
            </article>
            <article>
            Clique no botão COMPRAR localizado na página de detalhes do produto. Imediatamente, você será transferido para o Meu Carrinho.Você também tem a opção de continuar comprando, isto é, você retorna ao site para localizar outros produtos e adicionar ao seu pedido. Saiba que a qualquer momento, você pode consultar os itens selecionados utilizando a opção meu carrinho, localizado no topo em todas as página do site. Saiba que os itens no seu carrinho de compras estão reservados para você enquanto você estiver navegando em nosso site. Navegue com tranqüilidade!
            <h3><b>Passo 3: Feche seu pedido com atenção:</b></h3>
            </article>
            <article>
            Verifique todos os produtos que você adicionou ao seu carrinho de compras. Caso você desista de algum deles, clique no ícone X, disponível ao lado de cada item, para removê-lo. Sugerimos que você informe o cep onde você gostaria de receber sua compra, para que você seja informado do valor do frete que será acrescido a sua compra. Selecione  a forma e valor de entrega. O valor do frete é calculado de acordo com a região de entrega e o peso das mercadorias. Assim que você estiver certo da sua compra, clique em finalizar.
            <h3><b>Passo 4: Cadastro:</b></h3>
            </article>
            <article>
            Caso você seja um cliente novo, informe seu e-mail e preencha todos os itens com atenção! Todos os campos sinalizados com um asterisco ao lado são de preenchimento obrigatório.
            <h3><b>Atenção!</b></h3>
            </article>
            <article>
            As informações contidas no campo endereço de cobrança devem conferir com o endereço onde você recebe correspondências como faturas de cartão de crédito, contas de água, luz, telefone, entre outras.O Rei das Fechaduras identifica sua rua, bairro, cidade e estado baseado no CEP informado na tela anterior. Por favor, valide essa informação com atenção e preencha os demais dados solicitados. Preencha seus dados com atenção e evite atrasos: dados incorretos ou incompletos podem gerar um atraso desnecessário a sua entrega.Agilize suas compras futuras e salve seu cadastro: cadastre uma senha (de no mínimo 6 dígitos) no campo apropriado ao final da tela de cadastro. Esses dados serão sua chave de acesso numa compra futura e você não precisará preencher este formulário novamente. Ainda, este será o único e-mail que poderemos enviar informações sobre a evolução do seu pedido. Portanto, escolha um endereço de e-mail que é acessado com freqüência. Clique em Cadastrar.Caso você já seja um cliente cadastrado, informe seu e-mail de cadastro e senha. IMPORTANTE: caso tenha esquecido sua senha, não se preocupe, ao lado do campo para informar sua senha clique no link  “ esqueci minha senha?”. Você será levado a página receba sua senha. Siga as instruções solicitadas, informando seu e-mail, que você receberá sua senha no e-mail cadastrado logo em seguida.
            <h3><b>Passo 5: Informe o endereço de entrega:</b></h3>
            </article>
            <article>
            Caso o endereço onde deseja receber as suas mercadorias, não seja o mesmo endereço de cobrança, desmarque o quadrado onde diz: enviar para o mesmo endereço, e preencha os dados de endereço de envio. As informações que serão inseridas no campo endereço de envio, corresponderão com o endereço do local onde você deseja que o Rei das Fechaduras entregue seu pedido.
            <h3><b>Passo 6: Escolha como pagar:</b></h3>
            </article>
            <article>
            Sugerimos que você faça uma última validação nos dados do seu pedido. Confira os produtos adquiridos, endereço de cobrança e entrega, valores. Altere se necessário. Caso todas as informações estejam corretas, escolha a forma de pagamento desejada. O pagamento é realizado através do sistema Rede Card. Aceitamos Cartões de Crédito e Boleto Bancário.
            <h3><b>Passo 7: Valide seu pedido e finalize a sua compra:</b></h3>
            </article>
            <article>
            Clique em FINALIZAR COMPRA. Feito isso, você visualizará o número do seu pedido. Guarde este número com você para futuras consultas.
            <h3><b>Passo 8: Acompanhe seu pedido:</b></h3>
            </article>
            <article>
            Além dos e-mails automáticos enviados ao seu endereço de e-mail, você pode a qualquer momento acompanhar seu pedido em nosso site. Para isso, selecione a opção ¨minha conta¨ localizado no canto superior direito da página do nosso site e consulte ¨meus pedidos¨.
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