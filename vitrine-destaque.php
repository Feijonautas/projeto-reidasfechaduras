<script>
    $(document).ready(function(){
        var setVitrine = false;
        var vitrineAtiva = false;
        var quantidadeDestaques = 0;
        var destaqueAtivo = null;
        var timerDestaque = 0;
        var transicaoAtiva = false;
        var mudarProduto = false;
        function mudarDestaque(proximo_produto){
            if(setVitrine == true){
                transicaoAtiva = true;
                mudarProduto = true;
                var posBoxAtivo = destaqueAtivo.substr(10);
                if(proximo_produto == "next"){
                    var nextPos = posBoxAtivo < quantidadeDestaques ? parseInt(posBoxAtivo) + 1 : 1; 
                    proximo_produto = "boxProduto"+nextPos;
                }
                if(proximo_produto == destaqueAtivo){
                    mudarProduto = false;
                }
                function apareceProduto(){
                    var idBox = "#"+destaqueAtivo;
                    var nextIndice = destaqueAtivo.substr(10);
                    var imagemDestaque = $(idBox+" .display-imagens-produto .destaque");
                    var infoProduto = $(idBox+" .info-produto");
                    $(idBox).removeClass("hidden-box");
                    setTimeout(function(){
                        imagemDestaque.removeClass("hidden-destaque");
                        infoProduto.removeClass("hidden-info");
                        timerDestaque = 5000;
                        transicaoAtiva = false;
                        $(".controller-destaques .indices #indice"+nextIndice).addClass("selected");
                    }, 50);
                }
                function retiraProduto(){
                    var idBoxAtivo = "#"+destaqueAtivo;
                    var imagemDestaque = $(idBoxAtivo+" .display-imagens-produto .destaque");
                    var infoProduto = $(idBoxAtivo+" .info-produto");
                    $(".controller-destaques .indices #indice"+posBoxAtivo).removeClass("selected");
                    imagemDestaque.addClass("hidden-destaque");
                    infoProduto.addClass("hidden-info");
                    setTimeout(function(){
                        $(idBoxAtivo).addClass("hidden-box");
                        destaqueAtivo = proximo_produto;
                        apareceProduto();
                    }, 400);
                }
                
                if(vitrineAtiva == false){
                    vitrineAtiva = true;
                    apareceProduto();
                }else if(mudarProduto == true){
                    retiraProduto();
                }else{
                    transicaoAtiva = false;
                }
            }
        }
        
        $(".controller-destaques .indices .indice-button").each(function(){
            var target = $(this).attr("data-target");
            $(this).off().on("click", function(){
                if(transicaoAtiva == false){
                    mudarDestaque(target);
                }
            });
        });
        
        function setarVitrine(){
            quantidadeDestaques = $(".controller-destaques").attr("data-quantidade-destaques");
            destaqueAtivo = "boxProduto1";
            setVitrine = true;
            timerVitrine();
        }
        function timerVitrine(){
            var defaultDecrease = 500;
            setInterval(function(){
                var mudarProduto = timerDestaque <= 0 ? true : false;
                if(mudarProduto){
                    if(transicaoAtiva == false){
                        mudarDestaque("next");
                    }
                }else{
                    timerDestaque -= defaultDecrease;
                }
            }, defaultDecrease);
        }
        setarVitrine();
    });
</script>
<section class="display-vitrine">
    <div class="carrossel-destaques">
        <div class='border-left'></div>
        <?php
        /*SIMULAÇÃO PRODUTO 1*/
        $produtos[0]["titulo"] = "Cadeados Papaiz diversos tamanhos";
        $produtos[0]["url"] = "";
        $produtos[0]["imagens"][0] = "imagens/produtos/img-cadeado-destaque.png";
        $produtos[0]["imagens"][1] = "imagens/produtos/img-cadeado-destaque.png";
        $produtos[0]["imagens"][2] = "imagens/produtos/img-cadeado-destaque.png";
        /*SIMULAÇÃO PRODUTO 2*/
        $produtos[1]["titulo"] = "Cadeados Papaiz diversos tamanhos";
        $produtos[1]["url"] = "";
        $produtos[1]["imagens"][0] = "imagens/produtos/img-cadeado-destaque.png";
        $produtos[1]["imagens"][1] = "imagens/produtos/img-cadeado-destaque.png";
        $produtos[1]["imagens"][2] = "imagens/produtos/img-cadeado-destaque.png";
        /*SIMULAÇÃO PRODUTO 3*/
        $produtos[2]["titulo"] = "Cadeados Papaiz diversos tamanhos";
        $produtos[2]["url"] = "";
        $produtos[2]["imagens"][0] = "imagens/produtos/img-cadeado-destaque.png";
        $produtos[2]["imagens"][1] = "imagens/produtos/img-cadeado-destaque.png";
        $produtos[2]["imagens"][2] = "imagens/produtos/img-cadeado-destaque.png";
        /* -> APLICAR BANCO DE DADOS*/
        $quantidadeProdutos = isset($produtos) ? count($produtos) : 0;
        $controllerQtdProd = 0;    
        if($quantidadeProdutos > 0){
            foreach($produtos as $produto){
                $titulo = $produto["titulo"];
                $urlProduto = $produto["url"];
                $quantidadeImagens = isset($produto["imagens"]) ? count($produto["imagens"]) : 0;
                if($quantidadeImagens > 0){
                    $controllerQtdProd++;
                    $idBox = "boxProduto$controllerQtdProd";
                    /*INICIO BOX PRODUTO*/
                    $classBox = "hidden-box";
                    echo "<div class='box-produto $classBox' id='$idBox'>";
                        echo "<div class='display-imagens-produto'>";
                        $ctrlImg = 0;
                        foreach($produto["imagens"] as $urlImagem){
                            $ctrlImg++;
                            $imgDestaque = $ctrlImg == 1 ? "destaque hidden-destaque" : "";
                            echo "<img src='$urlImagem' class='imagem $imgDestaque'>";
                        }
                        echo "</div>";
                        echo "<div class='info-produto hidden-info'>";
                            echo "<h3 class='titulo'>$titulo</h3>";
                            echo "<a href='$urlProduto' class='botao-padrao'>Confira</a>";
                        echo "</div>";
                    echo "</div>";
                    /*FIM BOX PRODUTO*/
                }
            }
            echo "<div class='controller-destaques' data-quantidade-destaques='$controllerQtdProd'>";
                echo "<div class='indices'>";
                for($i = 1; $i <= $controllerQtdProd; $i++){
                    $class = $i == 1 ? "selected" : "";
                    echo "<div class='indice-button $class' id='indice$i' data-target='boxProduto$i'></div>";
                }
                echo "</div>";
            echo "</div>";
        }else{
            echo "<h3 style='text-align: center; padding: 50px; color: #444;'>Nenhum produto foi encontrado...</h3>";
        }
        ?>
    </div>
</section>