<?php
    $titulo = "Rei das Fechaduras - Loja";
    $descricao = "Descrição do site";
    require_once "chat-efectus-web.php";
    /*DEFAULT FUNCTIONS*/
    if(!function_exists("stringFormat")){
        function stringFormat($string){
            $string = str_replace("Ç", "c", $string);
            $string = str_replace("ç", "c", $string);
            $string = preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/"),explode(" ","a A e E i I o O u U n N"), $string);
            $string = strtolower($string);
            $string = str_replace("/", "-", $string);
            $string = str_replace("|", "-", $string);
            $string = str_replace(" ", "-", $string);
            $string = str_replace(",", "", $string);
            return $string;
        }
    }
    /*END DEFAULT FUNCTIONS*/
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
        <script type="application/javascript">
            $(document).ready(function(){
                $('.imgMiniatura').click(function(){
                    var src = $(this).attr('src');
                    var imgPrincipal = $('#imgPrincipal');
                    $(imgPrincipal).fadeOut();
                    setTimeout(function(){
                        $(imgPrincipal).attr('src', src);
                        $(imgPrincipal).fadeIn();
                    }, 500);
                });
            });
        </script>
    </head>
    <?php
        require_once "chat-efectus-web.php";
    ?>
    <style>
        .display-produto{
            width: 80%;
            margin: 0 auto;
            margin-top: 40px;
            margin-bottom: 80px;
        }
        .display-produto img{
            width: 100%;
        }
        .imagens-left{
            width: 10%;
            float: left;
        }
        .imagens-left .box-imagem{
            width: 100%;
            margin-bottom: 20px;
            border: 2px solid #dedede;
            cursor: pointer;
        }
        .imagens-left .box-imagem img{
            transition: .2s;
            padding: 1.5%;
            width: 97%;
        }
        .imagens-left .box-imagem:hover img{
            width: 100%;
            padding: 0px;
        }
        .box-produto{
            width: 80%;
            margin-left: 20%;
        }
        .box-produto .imagem-produto{
            width: 45%;
            margin-right: 5%;
            float: left;
        }
        .box-produto .descricao-produto{
            margin-left: 50%;
        }
        .box-produto .descricao-produto h4{
            font-weight: normal;
            color: #333;
        }
        .box-produto .descricao-produto article{
            font-family: montserratLight;
            font-size: 15px;
            color: #333;
            margin-bottom: 30px;
            text-align: justify;
        }
        .box-produto .descricao-produto article strong{
            font-family: montserrat;
        }
        .box-produto .descricao-produto .display-categorias a{
            text-align: center;
            font-weight: normal;
            text-decoration: none;
            background-color: #eee;
            padding: 5px;
            margin-right: 10px;
            white-space: nowrap;
        }
        .box-produto .botao-orcamento{
            margin-bottom: 20px;
            text-decoration: none;
            background-color: #FFB600;
            padding: 15px;
            padding-top: 10px;
            padding-bottom: 10px;
            color: #102A83;
            transition: .2s;
        }
        .box-produto .botao-orcamento:hover{
            background-color: #102A83;
            color: #FFB600;
        }
        .preco-produto{
            font-size: .7em;
            color: #666;
            margin: 10px 0px 10px 0px;
        }
        .preco-produto span{
            white-space: nowrap;
        }
        .preco-produto .price{
            color: #6abd45;
            font-size: 1.3em;
        }
        .preco-produto .promo-price{
            text-decoration: line-through;
            font-size: 1.2em;
        }
        .tabela-tecnica{
            margin-top: 2.5%;
            text-align: center;
            padding: 10px;
            width: 40%;
        }
        .tabela-tecnica tr{
            color: #555555;
            background-color: #ededed;
        }
        .tabela-tecnica tr td{
            text-align: left;
            border: 1px solid #ddd;
            margin: 0 auto;
            padding: 10px 10px;
        }
        .tabela-tecnica p{
            margin: 0 auto;
        }
        .display-banners{
            width: 80%;
            margin: 0 auto;
            margin-top: 40px;
            margin-bottom: 80px;
        }
        .display-banners h3{
            color: #102A83;
            font-weight: normal;
        }
        .display-banners .box-banner{
            width: 18%;
            margin: 0px 1%;
            height: 350px;
            background-color: transparent;
            display: inline-block;
            position: relative;
            cursor: pointer;
        }
        .display-banners .box-banner img{
            width: 100%;   
        }
        .display-banners .box-banner .imagem-produto img{
            width: 100%;   
        }
        .display-banners .titulo-banner{
            margin: 0 auto;
            width: 100%;
            background-color: #f1f1f1;
            position: absolute;
            text-align: center;
            bottom: 20px;
            left: 0;
            right: 0;
        }
        .display-banners .titulo-banner a{
            text-decoration: none;
            color: #102A83;
        }
        .display-banners .titulo-banner a h4{
            font-weight: normal;
        }
        @media screen and (max-width: 1024px){
            .tabela-tecnica{
                margin: 4% auto;
                width: 60%;
                -webkit-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
                -moz-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
                box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            }
            .tabela-tecnica table{
                margin: 0 auto;
                width: 100%;
            } 
            .display-produto{
                width: 90%;
                margin: 0 auto;
            }
            @media screen and (max-width: 800px){
                .box-produto .descricao-produto{
                    margin: 0 auto;
                }
                @media screen and (max-width: 600px){
                    .imagens-left{
                        float: none;
                        width: 100%;
                    }
                    .box-produto{
                        width: 100%;
                        margin: 0 auto;
                    }
                    .imagens-left .box-imagem {
                        width: 20%;
                        margin: 2%;
                        display: inline-block;
                    }
                    .box-produto .imagem-produto{
                        float: none;
                        width: 70%;
                        margin: 0 auto;
                    }
                    .tabela-tecnica{
                        width: 96%;
                    }
                    .display-banners .box-banner{
                        width: 31%;
                    }
                }
            }
        }
    </style>
    <body>
        <?php
            require_once "header.php";
            require_once "interatividade.php";
        ?>
        <?php
            echo "<section class='display-produto'>";
            require_once "@pew/pew-system-config.php";
            $tabela_categorias = $pew_db->tabela_categorias;
            $tabela_produtos = $pew_custom_db->tabela_produtos;
            $tabela_imagens_produtos = $pew_custom_db->tabela_imagens_produtos;
            $tabela_categorias_produtos = $pew_custom_db->tabela_categorias_produtos;
            $tabela_especificacoes_produtos = $pew_custom_db->tabela_especificacoes_produtos;
            $tabela_especificacoes = $pew_custom_db->tabela_especificacoes;
            $tabela_produtos_relacionados = $pew_custom_db->tabela_produtos_relacionados;
        
            $idProduto = pew_string_format($_GET["id_produto"]);
            $contarProduto = mysqli_query($conexao, "select count(id) as total_produtos from $tabela_produtos where id = '$idProduto' and status = 1");
            $contagem = mysqli_fetch_assoc($contarProduto);
            $totalProdutos = $contagem["total_produtos"];
            $dirImagem = "imagens/produtos/produto-padrao.png";
            if($totalProdutos > 0){
                $queryProduto = mysqli_query($conexao, "select * from $tabela_produtos where id = '$idProduto'");
                while($produtos = mysqli_fetch_array($queryProduto)){
                    $skuProduto = $produtos["sku"];
                    $nomeProduto = $produtos["nome"];
                    $marcaProduto = $produtos["marca"];
                    
                    $precoProduto = $produtos["preco"];
                    $precoPromocaoProduto = $produtos["preco_promocao"];
                    $status_promocao = $produtos["promocao_ativa"];
                    $promoAtiva = $precoPromocaoProduto > 0 && $precoPromocaoProduto < $precoProduto ? true : false;
                    $priceField = $promoAtiva == true ? "<span class='view-preco'>De <span class='promo-price'>R$".number_format($precoProduto, 2, ",", ".")."</span></span> por <span class='view-preco'><span class='price'>R$".number_format($precoPromocaoProduto, 2, ",", ".")."</span></span>" : "<span class='view-preco'><span class='price'>R$ ". number_format($precoProduto, 2, ",", ".")."</span></span>";
                    
                    $descricaoLongaProduto = $produtos["descricao_longa"];
                    $descricaoCurtaProduto = $produtos["descricao_curta"];
                    $pesoProduto = $produtos["peso"];
                    $comprimentoProduto = $produtos["comprimento"];
                    $larguraProduto = $produtos["largura"];
                    $alturaProduto = $produtos["altura"];
                    $urlOrcamento = str_replace(" ", "-", $nomeProduto);
                    $selectedCategorias = array();
                    $ctrlCategorias = 0;
                    $queryCategoriasProduto = mysqli_query($conexao, "select * from $tabela_categorias_produtos where id_produto = '$idProduto' order by titulo_categoria");
                    while($infoCategorias = mysqli_fetch_array($queryCategoriasProduto)){
                        $tituloCategoria = $infoCategorias["titulo_categoria"];
                        $idCategoria = $infoCategorias["id_categoria"];
                        $queryRefCategoria = mysqli_query($conexao, "select ref from $tabela_categorias where id = '$idCategoria'");
                        $infoRefCategoria = mysqli_fetch_array($queryRefCategoria);
                        $refCategoria = $infoRefCategoria["ref"];
                        $selectedCategorias[$ctrlCategorias] = array();
                        $selectedCategorias[$ctrlCategorias]["titulo"] = $tituloCategoria;
                        $selectedCategorias[$ctrlCategorias]["ref"] = $refCategoria;
                        $ctrlCategorias++;
                    }
                    echo "<aside class='imagens-left'>";
                        $contarImagem = mysqli_query($conexao, "select count(id) as total from $tabela_imagens_produtos where id_produto = '$idProduto'");
                        $contagem = mysqli_fetch_assoc($contarImagem);
                        $totalImagens = $contagem["total"];
                        if($totalImagens){
                            $queryImagem = mysqli_query($conexao, "select imagem, posicao from $tabela_imagens_produtos where id_produto = '$idProduto'");
                            while($infoImagem = mysqli_fetch_array($queryImagem)){
                                $imagemProduto = $infoImagem["imagem"];
                                $posicaoProduto = $infoImagem["posicao"];
                                if($posicaoProduto == 0){
                                    $imagemPrincipalProduto = $imagemProduto;
                                    $dirImagemPrincipal = "imagens/produtos/$imagemProduto";
                                    if(!file_exists($dirImagemPrincipal)){
                                        $dirImagemPrincipal = "imagens/produtos/produto-padrao.png";
                                    }
                                }
                                $dirImagem = "imagens/produtos/$imagemProduto";
                                if(!file_exists($dirImagem)){
                                    $dirImagem = "imagens/produtos/produto-padrao.png";
                                }
                                echo "<div class='box-imagem'><img src='$dirImagem' tile='$nomeProduto' alt='Imagem do $nomeProduto da $marcaProduto' class='imgMiniatura'></div>";
                            }
                        }
                    echo "</aside>";
                    echo "<div class='box-produto'>";
                        echo "<div class='imagem-produto'>";
                            echo "<img src='$dirImagemPrincipal' tile='$nomeProduto' alt='Imagem do $nomeProduto da $marcaProduto' title='$descricaoCurtaProduto' id='imgPrincipal'>";
                        echo "</div>";
                        echo "<div class='descricao-produto'>";
                            echo "<h3>$nomeProduto</h3>";
                            echo "<h4 class='preco-produto'>$priceField</h4>";
                            echo "<article>";
                                echo $descricaoLongaProduto;
                            echo "</article>";
                            echo "<div class='display-categorias'>";
                            if($ctrlCategorias > 0){
                                echo "<font size=2>Categorias do produto:</font><br><br>";
                            }
                            foreach($selectedCategorias as $indice => $array){
                                $infoCategoria = $array;
                                $tituloCategoria = $array["titulo"];
                                $refCategoria = $array["ref"];
                                echo "<a href='vitrine-produtos.php?categoria=$refCategoria'>$tituloCategoria</a>";
                            }
                            echo "</div>";
                            $urlOrcamento = "fazer-orcamento.php?produto=".str_replace(" ", "-", $nomeProduto);
                            echo "<br><br><a href='$urlOrcamento' class='botao-orcamento'>Fazer orçamento</a>";
                        echo "</div>";  
                        echo "<br style='clear: both;'>";
                    echo "</div>";
                }
            }
            echo "<div class='tabela-tecnica'>";
                echo "<table cellspacing='0'>";
                    echo "<tbody>";
                        echo "<tr><td colspan='2' style='text-align:center;'><h3>TABELA TÉCNICA</h3></td></tr>";
                        echo "<tr><td><strong>Produto:</strong></td><td><span>$nomeProduto</span></td></tr>";
                        echo "<tr><td><strong>Marca:</strong></td><td><span>$marcaProduto</span></td></tr>";
                        echo "<tr><td><strong>SKU:</strong></td><td><span>$skuProduto</span></td></tr>";
        
                        $contar = mysqli_query($conexao, "select count(id) as total from $tabela_especificacoes_produtos where id_produto = '$idProduto'");
                        $contagem = mysqli_fetch_assoc($contar);
                        $total = $contagem["total"];
                        if($total > 0){
                            $queryEspecProduto = mysqli_query($conexao, "select * from $tabela_especificacoes_produtos where id_produto = '$idProduto'");
                            while($infoEspec = mysqli_fetch_array($queryEspecProduto)){
                                $idEspec = $infoEspec["id_especificacao"];
                                $descricao = $infoEspec["descricao"];
                                $queryTituloEspec = mysqli_query($conexao, "select titulo from $tabela_especificacoes where id = '$idEspec'");
                                $infoTitulo = mysqli_fetch_array($queryTituloEspec);
                                $titulo = $infoTitulo["titulo"];
                                echo "<tr><td><strong>$titulo:</strong></td><td><span>$descricao</span></td></tr>";
                            }
                        }
                    echo "</tbody>";
                echo "</table>";
            echo "</div>";
            echo "</section>";
            echo "<br style='clear: both;'>";
                
            $condicaoProdutoRelacionado = "id_produto = '$idProduto'";
            $contarProdutosRelacionado = mysqli_query($conexao, "select count(id) as total from $tabela_produtos_relacionados where $condicaoProdutoRelacionado");
            $contagem = mysqli_fetch_assoc($contarProdutosRelacionado);
            $totalProdutosRelacionados = $contagem["total"];
            if($totalProdutosRelacionados > 0){
            echo "<section class='display-banners'>";
                echo "<h2>Produtos recomendados</h2>";
                $queryProdutoRelacionado = mysqli_query($conexao, "select * from $tabela_produtos_relacionados where $condicaoProdutoRelacionado");
                while($infoRelacionado = mysqli_fetch_array($queryProdutoRelacionado)){
                    $idRelacionado = $infoRelacionado["id_relacionado"];
                    $condicaoRelacionado = "id = '$idRelacionado' and status = 1";
                    $queryRelacionado = mysqli_query($conexao, "select * from $tabela_produtos where $condicaoRelacionado");
                    
                    $condicaoImagem = "id_produto = '$idRelacionado' and status = 1 ";
                    $queryImagem = mysqli_query($conexao, "select * from $tabela_imagens_produtos where $condicaoImagem");
                    $infoImagemRelacionado = mysqli_fetch_array($queryImagem);
                    $imagemProdutoRelacionado = $infoImagemRelacionado["imagem"];
                    $dirImagem = "imagens/produtos/$imagemProdutoRelacionado";
                    //if(!file_exists($dirImagem)){
                    //    $dirImagem = "imagens/produtos/produto-padrao.png";
                    //}
                    
                    $infoProdutoRelacionado = mysqli_fetch_array($queryRelacionado);
                    $nomeRelacionado = $infoProdutoRelacionado["nome"];
                    $refNomeRelacionado = stringFormat($nomeRelacionado);
                    $descicaoCurtaRelacionado = $infoProdutoRelacionado["descricao_curta"];
                    echo "<div class='box-banner'>";
                        echo "<a href='produto.php?produto=$refNomeRelacionado&id_produto=$idRelacionado''><img src='$dirImagem' title='$descicaoCurtaRelacionado' alt='$descicaoCurtaRelacionado'></a>";
                        echo "<div class='titulo-banner'>";
                            echo "<a href='produto.php?produto=$refNomeRelacionado&id_produto=$idRelacionado'><h4>$nomeRelacionado</h4></a>";
                        echo "</div>";
                    echo "</div>";
                }
            echo "</section>";
            }
        ?>
        <?php
            require_once "footer.php";
            require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>