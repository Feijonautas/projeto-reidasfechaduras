<?php
    $titulo = "Produtos - Rei das Fechaduras";
    $descricao = "Descrição da página produtos";
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
        .display-produtos{
            width: 80%;
            margin-left: 10%;
            margin-top: 40px;
            margin-bottom: 40px;
            text-align: center;
        }
        .display-produtos a{
            color: inherit;
            text-decoration: none;
        }
        .display-produtos .titulo-principal-produtos{
            font-variant-caps: all-petite-caps;
            font-size: 48px;
            line-height: 42px;
        }
        .display-produtos .box-produto{
            margin: 1.5%;
            width: 30.3%;
            display: inline-block;
            vertical-align: middle;
            position: relative;
            transition: .2s;
        }
        .display-produtos .box-produto:hover{
            margin: 0%;
            width: 33.3%;
            padding-bottom: .5%;
            -webkit-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            -moz-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
        }
        .display-produtos .box-produto img{
            width: 100%;
        }
        .display-produtos .box-produto .titulo-categoria, .display-produtos .box-medium-produto .titulo-categoria{
            position: absolute;
            margin: 0 auto;
            left: 0;
            right: 0;
            bottom: 0px;
            width: 100%;
            background-color: #ffb600;
            font-size: 18px;
            transition: .2s;
            color: #102a83;
        }
        .display-produtos .box-produto:hover .titulo-categoria, .display-produtos .box-medium-produto:hover .titulo-categoria{
            color: #ffb600;
            background-color: #102a83;   
        }
        .display-produtos .box-large-produto{
            border: 1px solid #dedede;
            margin: 1.5%;
            margin-top: 50px;
            width: 97%;
            position: relative;
            transition: .3s;
        }
        .display-produtos .box-large-produto:hover{
            width: 100%;
            margin: 0px;
            margin-top: 50px;
            padding-bottom: .5%;
        }
        .display-produtos .box-large-produto img{
            width: 100%;
        }
        .display-produtos .box-large-produto .imagem-destaque{
            margin-left: 15%;
            width: 30%;
            float: left;
        }
        .display-produtos .box-large-produto .titulo-destaque{
            font-size: 36px;
            width: 50%;
            position: absolute;
            top: 60px;
            right: 0px;
            transition: .2s;
        }
        .display-produtos .box-large-produto .titulo-destaque h2{
            font-size: 2em;
            margin: 0px;   
        }
        .display-produtos .box-large-produto .text-decoration{
            position: absolute;
            width: 50%;
            height: 5px;
            right: 25%;
            background-color: #ffb600;
            bottom: -20px;
            z-index: 1;
            transition: .2s;
        }
        .display-produtos .box-large-produto:hover .text-decoration{
            height: 8px;
            width: 28%;
        }
        .display-produtos .box-large-produto .titulo-destaque font{
            color: #ffb600;
        }
        .display-produtos .box-medium-produto{
            margin: 1.5%;
            width: 47%;
            float: left;
            position: relative;
            transition: .2s;
            -webkit-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            -moz-box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 0px 32px -1px rgba(0, 0, 0, 0.3);
        }
        .display-produtos .box-medium-produto:hover{
            width: 50%;
            margin: 0px;
            margin-bottom: .5%;
        }
        .display-produtos .box-medium-produto .titulo-categoria{
            position: absolute;
            bottom: 0%;
            height: 30px;
            transition: .2s;
            line-height: 30px;
        }
        .display-produtos .box-medium-produto img{
            width: 100%;
        }
        @media screen and (max-width: 1024px){
            .display-produtos .box-large-produto .titulo-destaque h2{
                font-size: 1.4em;
                margin: 0px;   
            }
            @media screen and (max-width: 800px){
                .display-produtos .box-large-produto .titulo-destaque{
                    top: 30px;
                }
                .display-produtos .box-large-produto .titulo-destaque h2{
                    font-size: 1.1em;
                    margin: 0px;   
                }
                @media screen and (max-width: 480px){
                    .display-produtos{
                        width: 90%;
                        margin: 0 auto;
                    }
                    .display-produtos .box-large-produto{
                        margin: 25px 0px;
                    }
                    .display-produtos .box-produto .titulo-categoria, .display-produtos .box-medium-produto .titulo-categoria{
                        font-size: 0.8em;
                    }
                    .display-produtos .box-large-produto .titulo-destaque{
                        top: 10px;
                    }
                    .display-produtos .box-large-produto .titulo-destaque h2{
                        font-size: 0.60em;
                        margin: 0px;   
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
        <section class="display-produtos">
            <h1 class="titulo-principal-produtos">PRODUTOS</h1>
            <?php
                require_once "@pew/pew-system-config.php";
                $tabela_categorias = $pew_db->tabela_categorias;
                $tabela_categorias_vitrine = $pew_custom_db->tabela_categorias_vitrine;
                $tabela_categoria_destaque = $pew_custom_db->tabela_categoria_destaque;
                $contarCategoriasVitrine = mysqli_query($conexao, "select count(id) as total from $tabela_categorias_vitrine where status = 1");
                $contagem = mysqli_fetch_assoc($contarCategoriasVitrine);
                $totalCategorias = $contagem["total"];
                $selectedCategorias = array();
                $ctrlCategorias = 0;
                if($totalCategorias > 0){
                    $queryCategorias = mysqli_query($conexao, "select * from $tabela_categorias_vitrine where status = 1 order by titulo limit 3");
                    while($infoCategorias = mysqli_fetch_array($queryCategorias)){
                        $idCategoria = $infoCategorias["id"];
                        $idCategoriaMain = $infoCategorias["id_categoria"];
                        $titulo = $infoCategorias["titulo"];
                        $queryRef = mysqli_query($conexao, "select ref from $tabela_categorias where id = '$idCategoriaMain'");
                        $infoCategoria = mysqli_fetch_array($queryRef);
                        $ref = $infoCategoria["ref"];
                        $imagem = $infoCategorias["imagem"];
                        $dirImagens = "imagens/categorias";
                        $widthTitulo = strlen($titulo) * 12 ."px";
                        $ctrlCategorias++;
                        $selectedCategorias[$ctrlCategorias] = $idCategoria;
                        echo "<a href='vitrine-produtos.php?categoria=$ref'><div class='box-produto'>";
                            echo "<img src='$dirImagens/$imagem'>";
                            echo "<h2 class='titulo-categoria'>$titulo</h2>";
                        echo "</div></a>";
                    }
                    echo "<br style='clear: both;'>";
                }
                $contarCategoriaDestaque = mysqli_query($conexao, "select count(id) as total from $tabela_categoria_destaque where status = 1");
                $contagem = mysqli_fetch_assoc($contarCategoriaDestaque);
                $totalDestaque = $contagem["total"];
                if($totalDestaque > 0){
                    $queryCategoriaDestaque = mysqli_query($conexao, "select * from $tabela_categoria_destaque where status = 1");
                    while($infoCategoriaDestaque = mysqli_fetch_array($queryCategoriaDestaque)){
                        $titulo = $infoCategoriaDestaque["titulo"];
                        $idCategoria = $infoCategoriaDestaque["id_categoria"];
                        $queryRef = mysqli_query($conexao, "select ref from $tabela_categorias where id = '$idCategoria'");
                        $infoCategoria = mysqli_fetch_array($queryRef);
                        $ref = $infoCategoria["ref"];
                        $imagem = $infoCategoriaDestaque["imagem"];
                        $dirImagens = "imagens/categorias";
                        echo "<a href='vitrine-produtos.php?categoria=$ref'><div class='box-large-produto'>";
                            echo "<div class='imagem-destaque'><img src='$dirImagens/$imagem'></div>";
                            echo "<div class='titulo-destaque'><h2>$titulo</h2><div class='text-decoration'></div></div>";
                        echo "<br style='clear: both;'>";
                        echo "</div></a>";
                    }
                }
                if($ctrlCategorias > 0){
                    $condition = "";
                    $i = 0;
                    foreach($selectedCategorias as $idValida){
                        $i++;
                        $condition .= "and id != $idValida ";
                    }
                    $contarCategoriasRestantes = mysqli_query($conexao, "select count(id) as total from $tabela_categorias_vitrine where status = 1 $condition");
                    $contagem = mysqli_fetch_assoc($contarCategoriasRestantes);
                    $totalRestantes = $contagem["total"];
                    if($totalRestantes > 0){
                        $queryCategoriasRestantes = mysqli_query($conexao, "select * from $tabela_categorias_vitrine where status = 1 $condition");
                        while($infoCategoriaDestaque = mysqli_fetch_array($queryCategoriasRestantes)){
                            $titulo = $infoCategoriaDestaque["titulo"];
                            $idCategoria = $infoCategoriaDestaque["id_categoria"];
                            $queryRef = mysqli_query($conexao, "select ref from $tabela_categorias where id = '$idCategoria'");
                            $infoCategoria = mysqli_fetch_array($queryRef);
                            $ref = $infoCategoria["ref"];
                            $imagem = $infoCategoriaDestaque["imagem"];
                            $dirImagens = "imagens/categorias";
                            echo "<a href='vitrine-produtos.php?categoria=$ref'><div class='box-medium-produto'>";
                                echo "<div class='imagem-destaque'><img src='$dirImagens/$imagem'></div>";
                                echo "<h2 class='titulo-categoria'>$titulo</h2>";
                            echo "<br style='clear: both;'>";
                            echo "</div></a>";
                        }
                    }
                }
            ?>
            <br style="clear:both;">
        </section>
        <br style="clear:both;">
        <?php
            require_once "footer.php";
            require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>