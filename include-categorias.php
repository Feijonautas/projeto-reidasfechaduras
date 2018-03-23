<style>
    .display-produtos{
        width: 80%;
        margin-left: 10%;
        margin-top: 40px;
        margin-bottom: 40px;
        text-align: center;
    }
    .display-produtos a{
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
    @media screen and (max-width: 800px){
        .display-produtos .box-produto{
            width: 45%;
        }
        .display-produtos .box-produto:hover{
            width: 47%;
        }
        .display-produtos .box-large{
            width: 50%;
        }
        .display-produtos .box-large:hover{
            width: 55%;
        }
        @media screen and (max-width: 480px){
            .display-produtos .box-produto{
                width: 46%;
            }
            .display-produtos .box-produto:hover{
                width: 47%;
            }
             .display-produtos .box-large{
                width: 90%;
            }
            .display-produtos .box-large:hover{
                width: 95%;
            }   
        }
    }
</style>
<section class="display-produtos">
    <?php
    /*USARma APÓS A INTEGRAÇÃO DO DB PARA BUSCAR A STRING DO NOME...*/
        $tituloProduto = "Titulo Exemplarrrrrr";
        $tituloProduto = strlen($tituloProduto);
        $tituloProduto *= 10;
        $style = "style='width: $tituloProduto"."px'";
    ?>
    <div class="titulo-padrao">
        <h2 class="titulo">PRODUTOS</h2>
        <div class="border"></div>
    </div>
    <?php
        require_once "@pew/pew-system-config.php";
        $tabela_categorias = $pew_db->tabela_categorias;
        $tabela_categorias_vitrine = $pew_custom_db->tabela_categorias_vitrine;
        $contarCategoriasVitrine = mysqli_query($conexao, "select count(id) as total from $tabela_categorias_vitrine where status = 1");
        $contagem = mysqli_fetch_assoc($contarCategoriasVitrine);
        $totalCategorias = $contagem["total"];
        $selectedCategorias = array();
        if($totalCategorias > 0){
            $ctrlCategorias = 0;
            $queryCategorias = mysqli_query($conexao, "select * from $tabela_categorias_vitrine where status = 1 order by titulo");
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
                $boxLarge = $ctrlCategorias % 2 == 1 ? true : false;
                $classe = "";
                if($boxLarge){
                    $classe = $ctrlCategorias == $totalCategorias ? "box-large" : "";
                }
                $selectedCategorias[$ctrlCategorias] = $idCategoria;
                echo "<a href='vitrine-produtos.php?categoria=$ref'><div class='box-produto $classe'>";
                    echo "<img src='$dirImagens/$imagem'>";
                    echo "<h2 class='titulo-categoria'>$titulo</h2>";
                echo "</div></a>";
            }
            echo "<br style='clear: both;'>";
        }
    ?>
    <br><br><br>
    <a href="produtos.php" class="botao-padrao">Ver mais</a>
</section>
<br style="clear:both;">