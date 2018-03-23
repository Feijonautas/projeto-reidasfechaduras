<footer class="footer-principal">
    <div class="info-field">
        <a href="index.php"><img src="imagens/identidadeVisual/logo-rei-das-fechadruas.png" class="logo-footer" alt="Logo - Rei das Fechaduras" title="Página inicial - Rei das Fechaduras"></a>
        <div class="display-enderecos">
            <h4 class="enderecos">Av. Anita Garibaldi, 1854 Curitiba-PR <font class='telefone'>41 3016-1414</font></h4>
            <h4 class="enderecos">Av. Visconde de Guarapuava, 1915 Curitiba-PR <font class='telefone'>41 3016-8008</font></h4>
            <br><a href="#"><i class="fa fa-facebook-square rede-social" aria-hidden="true"></i></a>
        </div>
    </div>
    <nav class="menu-footer">
        <ul>
            <li class="link-principal"><a href="empresa.php">EMPRESA</a></li>
        </ul>
        <ul>
            <li class="link-principal">
                <a href='produtos.php'>PRODUTOS</a>
                <?php
                    require_once "@pew/pew-system-config.php";
                    $tabela_categorias = $pew_db->tabela_categorias;
                    $tabela_categorias_vitrine = $pew_custom_db->tabela_categorias_vitrine;
                    $tabela_categoria_destaque = $pew_custom_db->tabela_categoria_destaque;
                    $contarCategoriasVitrine = mysqli_query($conexao, "select count(id) as total_categorias from $tabela_categorias_vitrine where status = 1");
                    $contagem = mysqli_fetch_assoc($contarCategoriasVitrine);
                    $totalCategorias = $contagem["total_categorias"];
                    if($totalCategorias > 0){
                        $queryCategorias = mysqli_query($conexao, "select * from $tabela_categorias_vitrine where status = 1 order by titulo");
                        echo "<ul class='submenu'>";
                        while($infoCategorias = mysqli_fetch_array($queryCategorias)){
                            $idCategoria = $infoCategorias["id"];
                            $idCategoriaMain = $infoCategorias["id_categoria"];
                            $titulo = $infoCategorias["titulo"];
                            $queryRef = mysqli_query($conexao, "select ref from $tabela_categorias where id = '$idCategoriaMain'");
                            $infoCategoria = mysqli_fetch_array($queryRef);
                            $ref = $infoCategorias["ref"];
                            echo "<li class='sublink'><a href='vitrine-produtos.php?categoria=$ref'>$titulo</a></li>";
                        }
                        echo "</ul>";
                    }
                ?>
            </li>
        </ul>
        <ul>
            <li class="link-principal"><a href="contato.php">CONTATO</a></li>
        </ul>
    </nav>
    <br style="clear: both;">
</footer>