
<script>
    $(document).ready(function(){


        /*PRODUTOS RELACIONADOS*/
        var botaoProdutosRelacionados = $(".btn-produtos-relacionados");
        var displayRelacionados = $(".display-produtos-relacionados");
        var background = $(".background-interatividade");
        var botaoSalvarRelacionados = $(".btn-salvar-relacionados");
        var botaoCleanRelacionados = $(".limpar-todos-relacionados");
        var barraBusca = $(".busca-relacionados");
        var checkOnlyActives = $("#checkOnlyActives");
        var listaRelacionados = $(".lista-relacionados");
        var msgListaRelacionados = $(".lista-relacionados .lista-relacionados-msg");
        var buscandoProduto = false;
        var resetingBackground = false;
        var lastSearchString = null;

        /*!IMPORTANT FUNCTIONS*/
        function isJson(str){
            try{
                JSON.parse(str);
            }catch(e){
                return false;
            }
            return true;
        }
        function setMessageRelacionados(str){
            listaRelacionados.css("padding", "30px 0px 10px 0px");
            msgListaRelacionados.children("h4").text(str);
            msgListaRelacionados.css({
                height: "30px",
                lineHeight: "30px",
                visibility: "visible",
                opacity: "1"
            });
        }
        function resetMessageRelacionados(){
            listaRelacionados.css("padding", "0px 0px 40px 0px");
            msgListaRelacionados.children("h4").text("");
            msgListaRelacionados.css({
                height: "5px",
                lineHeight: "5px",
                visibility: "hidden",
                opacity: "0"
            });
        }
        function resetAllInputs(){
            var onlyActives = checkOnlyActives.prop("checked");
            var ctrlView = 0;
            $(".box-relacionados").each(function(){
                var label = $(this);
                var input = label.children("input");
                if(onlyActives && input.prop("checked") == true){
                    label.css("display", "inline-block").removeClass("last-search");
                    ctrlView++;
                }else if(!onlyActives){
                    label.css("display", "inline-block").removeClass("last-search");
                    ctrlView++;
                }
            });
            if(onlyActives){
                setMessageRelacionados("Resultados encontrados: "+ctrlView);
            }else{
                resetMessageRelacionados();
            }
        }
        function listLastSearch(){
            var onlyActives = checkOnlyActives.prop("checked");
            var ctrlQtd = 0;
            $(".box-relacionados").each(function(){
                var label = $(this);
                var input = label.children("input");
                if(onlyActives && label.hasClass("last-search") && input.prop("checked") == true){
                    label.css("display", "inline-block");
                    ctrlQtd++;
                }else if(!onlyActives && label.hasClass("last-search")){
                    label.css("display", "inline-block");
                    ctrlQtd++;
                }
            });
            if(ctrlQtd > 0){
                setMessageRelacionados("Exibindo resultados mais aproximados:");
            }else{
                setMessageRelacionados("Nenhum resultado foi encontrado");
                botaoCleanRelacionados.css("visibility", "hidden");
            }
        }
        function contarProdutosSelecionados(){
            var contagem = 0;
            $(".box-relacionados").each(function(){
                var label = $(this);
                var input = label.children("input");
                if(input.prop("checked") == true){
                    contagem++;
                }
            });
            return contagem;
        }
        function clearRelacionados(){
            $(".box-relacionados").each(function(){
                var label = $(this);
                var input = label.children("input");
                if(label.css("display") != "none"){
                    input.prop("checked", false);
                }
            });
        }
        /*OPEN AND CLOSE*/
        function abrirRelacionados(){
            background.css("display", "block");
            displayRelacionados.css({
                visibility: "visible",
                opacity: "1"
            });
            /*SEARCH TRIGGRES*/
            barraBusca.on("keyup", function(){
                buscarProdutos();
            });
            barraBusca.on("search", function(){
                buscarProdutos();
            });
            /*END SEARCH TRIGGRES*/
            /*BOTAO SOMENTE SELECIONADOS*/
            checkOnlyActives.off().on("change", function(){
                var checked = $(this).prop("checked");
                var buscaAtiva = barraBusca.val().length > 0 ? true : false;
                if(checked && !buscaAtiva){
                    var ctrlQtd = 0;
                    $(".box-relacionados").each(function(){
                        var label = $(this);
                        var input = label.children("input");
                        var selecionado = input.prop("checked");
                        if(!selecionado){
                            label.css("display", "none");
                        }else{
                            ctrlQtd++;
                        }
                    });
                    botaoCleanRelacionados.css("visibility", "visible");
                    setMessageRelacionados("Resultados encontrados: "+ctrlQtd);
                }else if(buscaAtiva){
                    lastSearchString = null;
                    buscarProdutos();
                    if(checked){
                        botaoCleanRelacionados.css("visibility", "visible");
                    }else{
                        botaoCleanRelacionados.css("visibility", "hidden");
                    }
                }else{
                    /*LISTA TODOS OS PRODUTOS*/
                    resetAllInputs();
                    botaoCleanRelacionados.css("visibility", "hidden");
                }
            });
            /*END BOTAO SOMENTE SELECIONADOS*/
            /*LIMPAR RELACIONADOS*/
            botaoCleanRelacionados.off().on("click", function(){
                clearRelacionados();
            });
        }
        function fecharRelacionados(){
            displayRelacionados.css({
                visibility: "hidden",
                opacity: "0"
            });
            setTimeout(function(){
                background.css("display", "none");
            }, 200);
            var totalSelecionados = contarProdutosSelecionados();
            botaoProdutosRelacionados.text("Produtos Selecionados ("+totalSelecionados+")");
        }
        /*END OPEN AND CLOSE*/
        /*END !IMPORTANT FUNCTIONS*/

        /*MAIN SEARCH FUNCTION*/
        function buscarProdutos(){
            buscandoProduto = true;
            var busca = barraBusca.val();
            var loadingBackground = $(".lista-relacionados .loading-background");
            var urlBuscaProdutos = "@pew/pew-busca-produtos.php";
            onlyActives = checkOnlyActives.prop("checked");

            function resetBackgroundLoading(){
                if(!resetingBackground){
                    setInterval(function(){
                        resetingBackground = true;
                        if(!buscandoProduto){
                            loadingBackground.css({
                                visibility: "hidden",
                                opacity: "0"
                            });
                        }
                    }, 500);
                }
            }
            resetBackgroundLoading();
            if(busca.length > 0 && lastSearchString != busca){               
                lastSearchString = busca;
                $.ajax({
                    type: "POST",
                    url: urlBuscaProdutos,
                    data: {busca: busca},
                    error: function(){
                        loadingBackground.css({
                            visibility: "hidden",
                            opacity: "0"
                        });
                        notificacaoPadrao("Ocorreu um erro ao busca o produto.");
                    },
                    success: function(resposta){
                        setTimeout(function(){
                            buscandoProduto = false;
                        }, 500);
                        var selectedProdutos = [];
                        var ctrlVQtdView = 0;
                        function listarOpcoes(){
                            $(".box-relacionados").each(function(){
                                var label = $(this);
                                var input = label.children("input");
                                var inputIdProduto = input.val();
                                var inputChecked = input.prop("checked");
                                var arraySearch = selectedProdutos.some(function(id){
                                    if(onlyActives){
                                        return id === inputIdProduto && inputChecked == true;
                                    }else{
                                        return id === inputIdProduto;
                                    }
                                });
                                if(arraySearch == false){
                                    if(onlyActives){
                                        label.css("display", "none");
                                    }else{
                                        label.css("display", "none").removeClass("last-search");
                                    }
                                }else{
                                    ctrlVQtdView++;
                                    label.css("display", "inline-block").addClass("last-search");
                                }
                            });
                            setMessageRelacionados("Resultados encontrados: "+ctrlVQtdView);
                            if(ctrlVQtdView == 0){
                                listLastSearch();
                            }
                        }
                        if(resposta != "false" && isJson(resposta) == true){
                            var jsonData = JSON.parse(resposta);
                            var ctrlQtd = 0;
                            jsonData.forEach(function(id_produto){
                                selectedProdutos[ctrlQtd] = id_produto;
                                ctrlQtd++;
                            });
                            listarOpcoes();
                        }else{
                            if(onlyActives){
                                listarOpcoes();
                            }else{
                                setMessageRelacionados("Exibindo resultados mais aproximados:");
                                listLastSearch();
                            }
                        }
                    },
                    beforeSend: function(){
                        loadingBackground.css({
                            visibility: "visible",
                            opacity: "1"
                        });
                    }
                });
            }else if(busca.length == 0){
                resetAllInputs();
            }
        }
        /*END MAIN SEARCH FUNCTION*/

        /*TRIGGERS*/
        botaoProdutosRelacionados.off().on("click", function(){
            abrirRelacionados();
        });
        botaoSalvarRelacionados.off().on("click", function(){
            fecharRelacionados();
        });
        background.off().on("click", function(){
            fecharRelacionados();
        });
        /*END TRIGGERS*/

        /*END PRODUTOS RELACIONADOS*/
    });
</script>
<style>
    /*PRODUTOS RELACIONADOS CSS*/
    .btn-produtos-relacionados{
        padding: 10px;
        cursor: pointer;
        border: 1px solid #333;
        transition: .2s;
    }
    .btn-produtos-relacionados:hover{
        background-color: #fff;
    }
    .display-produtos-relacionados{
        position: fixed;
        width: 80%;
        height: 70vh;
        margin: 0 auto;
        top: 15vh;
        left: 0;
        right: 0;
        z-index: 200;
        visibility: hidden;
        opacity: 0;
        transition: .3s;
    }
    .display-produtos-relacionados .header-relacionados{
        position: relative;
        width: 100%;
        height: 10vh;
        background-color: #f78a14;
        color: #fff;
        border-radius: 6px 6px 0px 0px;
        text-align: center;
        line-height: 10vh;
        text-align: center;
        z-index: 50;
    }
    .display-produtos-relacionados .header-relacionados .title-relacionados{
        width: 26%;
        height: 10vh;
        margin: 0px;
        padding: 0px 2% 0px 2%;
        float: left;
    }
    .display-produtos-relacionados .header-relacionados .busca-relacionados{
        width: 38%;
        height: 5vh;
        font-size: 14px;
        margin: 2.5vh 1% 0px 1%;
        padding: 0px 1% 0px 1%;
        float: left;
        border: none;
    }
    .display-produtos-relacionados .header-relacionados label{
        width: 26%;
        height: 10vh;
        margin: 0px 2% 0px 0px;
        font-size: 12px;
        cursor: pointer;
    }
    .display-produtos-relacionados .header-relacionados label input{
        position: relative;
        vertical-align: middle;
        top: -1px;
        cursor: pointer;
    }
    .display-produtos-relacionados .bottom-relacionados{
        width: 100%;
        height: 10vh;
        background-color: #eee;
        line-height: 10vh;
        text-align: center;
        border-radius: 0px 0px 6px 6px;
        border-top: 2px solid #dedede;
    }
    .display-produtos-relacionados .bottom-relacionados .btn-salvar-relacionados{
        background-color: limegreen;
        color: #fff;
        padding: 10px 30px 10px 30px;
        cursor: pointer;
    }
    .display-produtos-relacionados .bottom-relacionados .btn-salvar-relacionados:hover{
        background-color: green;
    }
    .display-produtos-relacionados .lista-relacionados{
        position: relative;
        display: flex;
        flex-flow: row wrap;
        height: 50vh;
        overflow-x: auto;
        padding: 0px 0px 40px 0px;
        background-color: #eee;
        transition: .2s;
        clear: both;
        z-index: 40;
    }
    .display-produtos-relacionados .lista-relacionados .loading-background{
        position: fixed;
        width: 60%;
        height: 53vh;
        line-height: 53vh;
        margin: 0 auto;
        top: 30vh;
        left: 0;
        right: 0;
        background-color: rgba(255, 255, 255, .4);
        z-index: 50;
        visibility: hidden;
        transition: .3s;
        opacity: 0;
    }
    .display-produtos-relacionados .lista-relacionados .loading-background .loading-message{
        font-size: 18px;
        text-align: center;
        color: #f78a14;
        margin: 0px;
    }
    .display-produtos-relacionados .lista-relacionados .lista-relacionados-msg{
        position: fixed;
        width: 60%;
        height: 5px;
        line-height: 5px;
        margin: -30px 0px 0px 0px;
        visibility: hidden;
        opacity: 0;
        transition: .3s;
        background-color: #eee;
        border-bottom: 1px solid #dedede;
        z-index: 40;
    }
    .display-produtos-relacionados .lista-relacionados .lista-relacionados-msg h4{
        margin: 0px;
        padding: 0px 1% 5px 1%;
    }
    .display-produtos-relacionados .lista-relacionados .lista-relacionados-msg .limpar-todos-relacionados{
        position: absolute;
        height: 30px;
        top: 0px;
        right: 12.5%;
        width: 12%;
        font-size: 14px;
        white-space: nowrap;
        text-align: center;
        visibility: hidden;
    }
    .display-produtos-relacionados .lista-relacionados .box-relacionados{
        cursor: pointer;
        width: 16%;
        height: 200px;
        padding: 5px 1% 5px 1%;
        float: none;
        display: inline-block;
        position: relative;
    }
    .display-produtos-relacionados .lista-relacionados .box-relacionados input{
        position: absolute;
        margin: 0 auto;
        left: 0;
        right: 0;
        bottom: 5px;
    }
    .display-produtos-relacionados .lista-relacionados .box-relacionados img{
        width: 100%;
    }
    .display-produtos-relacionados .lista-relacionados .box-relacionados:hover{
        background-color: #fff;   
    }
    /*END PRODUTOS RELACIONADOS CSS*/
</style>
<div class="label-full" align=left>
    <!--PRODUTOS RELACIONADOS-->
    <h3 align=left>Escolha o produto</h3>
    <div class="btn-produtos-relacionados"><a>Produtos Selecionados (0)</a></div>
    <div class="display-produtos-relacionados">
        <div class="header-relacionados">
            <h3 class="title-relacionados">Selecione-os</h3>
            <!--<h5 class="descricao-relacionados">Selecione os produtos relacionados</h5>-->
            <input type="search" class="busca-relacionados" name="busca_relacionados" placeholder="Busque categoria, nome, marca, id, ou sku" form="busca_produto">
            <label title="Listar somente os produtos que já foram selecionados"><input type="checkbox" id="checkOnlyActives"> Somente os selecionados</label>
        <br style="clear:both;">
        </div>
        <div class="lista-relacionados">
            <div class="loading-background">
                <h4 class="loading-message"><i class='fa fa-spinner fa-pulse fa-3x fa-fw'></i></h4>
            </div>
            <div class="lista-relacionados-msg"><h4>Exibindo todos os produtos:</h4><a class="link-padrao limpar-todos-relacionados" title="Limpar todos os produtos listados abaixo e que foram selecionados">Limpar todos</a></div>
            <?php
            $queryAllProdutos = mysqli_query($conexao, "select id, nome from $tabela_produtos where status = 1 order by nome asc");
            while($infoRelacionados = mysqli_fetch_array($queryAllProdutos)){
                $idProdutoRelacionado = $infoRelacionados["id"];
                $nomeProdutoRelacionado = $infoRelacionados["nome"];
                
                /*CONTANDO IMAGENS DO PRODUTO*/
                $contarIMG = mysqli_query($conexao, "select count(id) as total_imagens from $tabela_imagens_produtos where id_produto = '$idProdutoRelacionado'");
                $contagemIMG = mysqli_fetch_assoc($contarIMG);
                $total = $contagemIMG["total_imagens"];
                if($total > 0){
                    $queryIMG = mysqli_query($conexao, "select imagem, posicao from $tabela_imagens_produtos where id_produto = '$idProdutoRelacionado' and posicao = 0");
                    $arrayIMG = mysqli_fetch_assoc($queryIMG);
                    $imagem = $arrayIMG["imagem"];
                }else{
                    $imagem = "produto-padrao.png";
                }
                $dirIMG = "imagens/produtos/$imagem";
                if(!file_exists($dirIMG) || $imagem == ""){
                    $dirIMG = "imagens/produtos/produto-padrao.png";
                }
                /*END CONTANDO IMAGENS DO PRODUTO*/
                echo "<label class='box-relacionados'>";
                echo "<img src='$dirIMG'>";
                echo "<input type='checkbox' name='orcamentos_relacionados[]' value='$idProdutoRelacionado'><p style='text-align: center;'>$nomeProdutoRelacionado</p>";
                echo "</label>";
            }
            ?>
        </div>
        <div class="bottom-relacionados">
            <a class="btn-salvar-relacionados">Salvar</a>
        </div>
    </div>
    <!--END PRODUTOS RELACIONADOS-->
</div>
<br style="clear:both;">