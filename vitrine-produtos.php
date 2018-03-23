<?php
    require_once "@pew/pew-system-config.php";
    $tabela_categorias = $pew_db->tabela_categorias;
    $tabela_produtos = $pew_custom_db->tabela_produtos;
    $tabela_imagens_produtos = $pew_custom_db->tabela_imagens_produtos;
    $tabela_categorias_produtos = $pew_custom_db->tabela_categorias_produtos;
    $tituloCategoria = isset($_GET["categoria"]) && $_GET["categoria"] != "" ? pew_string_format($_GET["categoria"]) : "Produtos";
    $contarCategorias = mysqli_query($conexao, "select count(id) as total from $tabela_categorias where ref = '$tituloCategoria'");
    $contagem = mysqli_fetch_assoc($contarCategorias);
    $totalResultado = $contagem["total"];
    $listar = false;
    if($totalResultado > 0){
        $queryCategoriaProduto = mysqli_query($conexao, "select * from $tabela_categorias where ref = '$tituloCategoria'");
        $infoCategoriaProduto = mysqli_fetch_array($queryCategoriaProduto);
        $idCategoria = $infoCategoriaProduto["id"];
        $tituloCategoria = $infoCategoriaProduto["categoria"];
        $descricaoCategoria = $infoCategoriaProduto["descricao"];
        $refCategoria = $infoCategoriaProduto["ref"];
        $listar = true;
    }else{
        $tituloCategoria = "Produtos";
    }
    $titulo = "$tituloCategoria - Rei das Fechaduras";
    $descricao = $descricaoCategoria != "" ? $descricaoCategoria : "Está com dúvidas qual a melhor opção? Entre no site e utilize nosso Chat Online, ou entre em contato pelo telefone (41) 3016-8008 ou (41) 3016-1414.";
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
        .titulo-principal{
            position: relative;
            font-size: 50px;
            margin: 0px;
            margin-left: 5%;
            line-height: 50px;
            width: 80%;
            text-align: left;
        }
        .titulo-principal .decoracao-titulo{
            position: absolute;
            width: 5px;
            left: -10px;
            top: 10px;
            height: 30px;
            background-color: #ffb600;
        }
        .display-produtos{
            width: 95%;
            margin-left: 2.5%;
            margin-right: 2.5%;
            margin-top: 40px;
            margin-bottom: 80px;
            position: relative;
        }
        .display-produtos a{
            text-decoration: none;
        }
        .display-produtos .box-produto{
            text-align: center;
            width: 18%;
            margin: 2%;
            padding: 1%;
            display: inline-block;
            transition: .3s;
            cursor: pointer;
        }
        .display-produtos .box-produto:hover{
            -webkit-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            -moz-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
        }
        .display-produtos .box-produto img{
            width: 90%;
            padding: 5%;
            transition: .3s;
        }
        .display-produtos .box-produto .descricao{
            color: #c2c2c2;
        }
        .display-produtos .box-produto:hover{
            color: #999;
            transform: scale(1.1);
        }
        .display-produtos .box-produto .preco-produto{
            font-size: .7em;
            color: #666;
            margin: 10px 0px 10px 0px;
        }
        .display-produtos .box-produto .preco-produto span{
            white-space: nowrap;
        }
        .display-produtos .box-produto .preco-produto .price{
            color: #6abd45;
            font-size: 1.3em;
        }
        .display-produtos .box-produto .preco-produto .promo-price{
            text-decoration: line-through;
            font-size: 1.2em;
        }
        @media screen and (max-width: 1366px){
            .botao-padrao{
                padding: 1% 5%;
            }
            .display-produtos .box-produto a{
                font-size: 0.8em;
            }
            @media screen and (max-width: 980px){
                .botao-padrao{
                    padding: 1% 5%;
                }
                .display-produtos .box-produto a{
                    font-size: 0.7em;
                }
                @media screen and (max-width: 760px){
                    .titulo-principal{
                        font-size: 2.4em;
                    }
                    .display-produtos .box-produto{
                        width: 28%;
                        margin: 1.5%;
                    }
                    @media screen and (max-width: 760px){
                        .display-produtos .box-produto{
                            width: 47%;
                        }
                    }
                }
            }
        }
    </style>
    <body>
        <?php
            require_once "header.php";
            require_once "interatividade.php";
            echo "<h1 class='titulo-principal'><div class='decoracao-titulo'></div>$tituloCategoria</h1>";
            echo "<section class='display-produtos'>";
            if($listar){
                $contarCategoriasProd = mysqli_query($conexao, "select count(id) as total_categorias from $tabela_categorias_produtos where id_categoria = '$idCategoria'");
                $contagem = mysqli_fetch_assoc($contarCategoriasProd);
                $totalCatProd = $contagem["total_categorias"];
                if($totalCatProd > 0){
                    $selectedProds = array();
                    $ctrlProdutos = 0;
                    $queryIdProduto = mysqli_query($conexao, "select id_produto from $tabela_categorias_produtos where id_categoria = '$idCategoria'");
                    while($infoId = mysqli_fetch_array($queryIdProduto)){
                        $idProduto = $infoId["id_produto"];
                        $contarProduto = mysqli_query($conexao, "select count(id) as total_produtos from $tabela_produtos where id = '$idProduto' and status = 1");
                        $contagem = mysqli_fetch_assoc($contarProduto);
                        $totalProdutos = $contagem["total_produtos"];
                        if($totalProdutos > 0){
                            $queryProduto = mysqli_query($conexao, "select nome, preco, preco_promocao from $tabela_produtos where id = '$idProduto'");
                            while($produtos = mysqli_fetch_array($queryProduto)){
                                $nomeProduto = $produtos["nome"];
                                $queryImagem = mysqli_query($conexao, "select imagem from $tabela_imagens_produtos where id_produto ='$idProduto'");
                                $infoImagem = mysqli_fetch_array($queryImagem);
                                $imagemProduto = $infoImagem["imagem"];
                                $dirImagens = "imagens/produtos/$imagemProduto";
                                if(!file_exists($dirImagens)){
                                    $dirImagens = "imagens/produtos/produto-padrao.png";
                                }
                                $ctrlProdutos++;
                                $selectedProds[$ctrlProdutos] = $idProduto;
                                $urlOrcamento = str_replace(" ", "-", $nomeProduto)."&id_produto=$idProduto";
                                
                                $preco = $produtos["preco"];
                                $precoPromocao = $produtos["preco_promocao"];
                                $promoAtiva = $precoPromocao > 0 && $precoPromocao < $preco ? true : false;
                                $priceField = $promoAtiva == true ? "<span class='view-preco'>De <span class='promo-price'>R$".number_format($preco, 2, ",", ".")."</span></span> por <span class='view-preco'><span class='price'>R$".number_format($precoPromocao, 2, ",", ".")."</span></span>" : "<span class='view-preco'><span class='price'>R$ ". number_format($preco, 2, ",", ".")."</span></span>";
                                $urlProduto = "interna-produto.php?id_produto=$idProduto";
                                
                                echo "<a href='produto.php?produto=$urlOrcamento'><div class='box-produto'>";
                                    echo "<img src='$dirImagens'>";
                                    echo "<h5 class='descricao'>$nomeProduto</h5>";
                                    echo "<h4 class='preco-produto'>$priceField</h4>";
                                    echo "<a href='fazer-orcamento.php?produto=$urlOrcamento' class='botao-padrao'><span>FAÇA UM ORÇAMENTO</span></a>";
                                echo "</div></a>";
                            }
                        }
                    }
                }else{
                    echo "<h3 align=center style='font-weight: normal;'>Nenhum resultado foi encontrado. <a href='produtos.php' class='link-padrao'>Voltar</a></h3>";

                }
            }else{
                echo "<h3 align=center style='font-weight: normal;'>Nenhum resultado foi encontrado. <a href='produtos.php' class='link-padrao'>Voltar</a></h3>";
            }
            echo "</section>";
            ?>
        <br style="clear:both;">
        <?php
            require_once "footer.php";
            require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>