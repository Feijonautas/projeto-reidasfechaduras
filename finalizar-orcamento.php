<?php
    session_start();
    $nomeEmpresa = "Bolsas em Couro";
    $descricaoPagina = "DESCRIÇÃO MODELO ATUALIZAR...";
    $tituloPagina = "Solicitar orçamento  - $nomeEmpresa";
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
                background-color: #fff;
                margin: 80px auto 80px auto;
                -webkit-box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.1);
                -moz-box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.1);
                box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.1);
            }
            .main-content .titulo{
                font-size: 24px;
                padding: 20px 15px 20px 15px;
                margin: 0px;
            }
            .main-content article{
                margin: 15px 15px 35px 15px;  
            }
            .main-content .display-carrinho{
                width: calc(100% - 30px);
                margin: 15px;
                padding: 0px 0px 20px 0px;
                display: flex;
                flex-flow: row wrap;
                align-items: flex-end;
            }
            .main-content .display-carrinho .item-carrinho{
                position: relative;
                width: 100%;
                display: flex;
                height: 150px;
                margin: 10px 0px 10px 0px;
                flex-flow: row wrap;
                border-bottom: 1px solid #eee;
            }
            .main-content .display-carrinho .item-carrinho .box-imagem{
                width: 180px;
                height: 150px;
            }
            .main-content .display-carrinho .item-carrinho .box-imagem .imagem{
                height: 100%;
            }
            .main-content .display-carrinho .item-carrinho .information{
                width: calc(60% - 180px);
                height: 40px;
                line-height: 40px;
                margin: 0px;
                display: flex;
            }
            .main-content .display-carrinho .item-carrinho .information .titulo{
                font-size: 1vw;
                width: 100%;
                white-space: nowrap;
                text-overflow: ellipsis;
                padding: 0px;
            }
            .main-content .display-carrinho .item-carrinho .price-field{
                width: calc(50% - 180px);
                display: flex;
                height: 40px;
                margin: 15px 0px 0px 0px;
                justify-content: flex-end;
            }
            .main-content .display-carrinho .item-carrinho .price-field .controller-preco{
                width: 60%;
                display: flex;
                color: #999;
                height: 40px;
                line-height: 40px;
                align-items: center;
            }
            .main-content .display-carrinho .item-carrinho .price-field .controller-preco .price{
                height: 40px;
                margin: 0px 10px 0px 10px;
            }
            .main-content .display-carrinho .item-carrinho .price-field .controller-preco .quantidade-produto{
                width: 38px;
                height: 38px;
                border: 1px solid #999;
                color: #999;
                text-align: center;
                line-height: 38px;
                outline: none;
            }
            .main-content .display-carrinho .item-carrinho .price-field .view-subtotal-produto{
                height: 40px;
                line-height: 40px; 
            }
            .main-content .display-carrinho .item-carrinho .price-field .view-subtotal-produto .subtotal{
                margin: 0px;
            }
            .main-content .display-carrinho .item-carrinho .price-field .view-subtotal-produto .link-padrao{
                padding: 0px;
                font-size: 12px;
                line-height: 12px;
                cursor: pointer;
                text-align: right;
            }
            .main-content .display-carrinho .endereco-alternativo{
                display: none;
            }
            .main-content .display-carrinho .msg-endereco{
                margin: 0px 0px 10px 15px;
                font-weight: normal;
            }
            .main-content .display-carrinho .label-edita-endereco{
                margin: 15px;
                height: 20px;
                display: block;
                font-size: 14px;
                line-height: 20px;
                cursor: pointer;
            }
            .main-content .display-carrinho .label-frete{
                cursor: pointer;
            }
            .main-content .display-carrinho .label-frete:hover{
                background-color: #eee;   
            }
            .main-content .display-carrinho .display-resultados-frete{
                width: calc(40% - 20px);
            }
            .main-content .display-carrinho .display-resultados-frete .titulo{
                font-size: 18px;
            }
            .main-content .display-carrinho .display-resultados-frete .span-frete{
                margin: 0px 20px 0px 20px;
                font-size: 14px;
            }
            .main-content .display-carrinho .bottom-info{
                position: relative;
                padding-bottom: 40px;
                width: calc(60% - 20px);
                justify-content: flex-end;
                text-align: right;
                align-items: flex-end;
            }
            .main-content .display-carrinho .bottom-info .display-prices{
                text-align: right;
            }
            .main-content .display-carrinho .bottom-info .info{
                color: #888;
                display: block;
                font-weight: normal;
            }
            .main-content .display-carrinho .bottom-info .info .title{
                margin: 0px 40px 0px 0px;
            }
            .main-content .display-carrinho .bottom-info .info .title-bold{
                font-weight: bold;
            }
            .main-content .display-carrinho .bottom-info .display-total{
                text-align: right;
            }
            .main-content .display-carrinho .bottom-info .display-total .view-total .title{
                margin: 0px 25px 0px 0px;
            }
            @media only all and (max-width: 1200px){
                .main-content .display-carrinho .item-carrinho{
                    flex-direction: column;
                }
                .main-content .display-carrinho .item-carrinho .information{
                    width: calc(100% - 180px);  
                    line-height: normal;
                }
                .main-content .display-carrinho .item-carrinho .information .titulo{
                    white-space: normal;
                    font-size: 1.3vw;
                }
                .main-content .display-carrinho .item-carrinho .price-field{
                    font-size: 1.5vw;
                    width: calc(100% - 180px);  
                }
                @media only all and (max-width: 480px){
                    .main-content .titulo{
                        font-size: 18px;
                    }
                    .display-formulario .small{
                        width: 100%;
                    }
                    .main-content .display-carrinho .item-carrinho{
                        padding: 10px;
                        height: auto;
                    }
                    .main-content .display-carrinho .item-carrinho .box-imagem{
                        width: 100%;
                    }
                    .main-content .display-carrinho .item-carrinho .information{
                        width: 100%;
                    }
                    .main-content .display-carrinho .item-carrinho .information .titulo{
                        font-size: 2vw;
                    }
                    .main-content .display-carrinho .item-carrinho .price-field{
                        font-size: 100%;
                        width: 100%;
                    }
                    .main-content .display-carrinho .item-carrinho .price-field .controller-preco .quantidade-produto{
                        width: 25px;
                        height: 25px;
                    }
                }
            }
            .botao-continuar{
                width: auto;
                background-color: #6abd45;
                border: none;
                padding: 0px 10px 0px 10px;
                font-size: 14px;
                font-weight: bold;
                color: #fff;
                height: 30px;
                outline: none;
                cursor: pointer;
            }
            .botao-continuar .icon-button{
                position: absolute;
                right: 15px;
                top: 0px;
                height: 30px;
                transition: .2s;
            }
            .botao-continuar:hover{
                background-color: #518d36;   
            }
            .botao-continuar:hover .icon-button{
                right: 8px;
            }
            .botao-salvar{
                background: #999;
                color: #fff;
                border: none;
                padding: 5px 10px 5px 10px;
                margin: 10px 0px 10px 0px;
                cursor: pointer;
            }
            .botao-salvar:hover{
                background-color: #777;   
            }
        </style>
        <!--END PAGE CSS-->
        <!--PAGE JS-->
        <script>
            $(document).ready(function(){
                console.log("Página carregada");
                
                input_mask(".mascara-cep-finaliza", "99999-999");
                input_mask("#cpfOrcamento", "999.999.999-99");
                phone_mask("#telefoneOrcamento");
                
                var iconLoading = "<i class='fas fa-spinner fa-spin icone-loading'></i>";
                var totalCarrinho = $("#totalCarrinho").val();
                var viewTotalCompra = $(".final-value");
                var infoCalculoFrete = $(".info-frete");
                
                // INFORMAÇÕES DO PRODUTO
                var jsonProduto = new Array();
                var ctrl_array = 0;
                infoCalculoFrete.each(function(){
                    var idProduto = $(this).children("#freteIdProduto").val();
                    var tituloProduto = $(this).children("#freteTituloProduto").val();
                    var precoProduto = $(this).children("#fretePrecoProduto").val();
                    var comprimentoProduto = $(this).children("#freteComprimentoProduto").val();
                    var larguraProduto = $(this).children("#freteLarguraProduto").val();
                    var alturaProduto = $(this).children("#freteAlturaProduto").val();
                    var pesoProduto = $(this).children("#fretePesoProduto").val();
                    var quantidadeProduto = $(this).children("#freteQuantidadeProduto").val();
                    jsonProduto[ctrl_array] = {"id": idProduto, "titulo": tituloProduto, "preco": precoProduto, "comprimento": comprimentoProduto, "largura": larguraProduto, "altura": alturaProduto, "peso": pesoProduto, "quantidade": quantidadeProduto};
                    ctrl_array++;
                });
                
                var carrinho = $("#carrinhoFinalizar").val();
                var finalizandoCompra = false;
                function finalizarCompra(){
                    var objNome = $("#nomeOrcamento");
                    var objTelefone = $("#telefoneOrcamento");
                    var objEmail = $("#emailOrcamento");
                    var objCpf = $("#cpfOrcamento");
                    var nome = objNome.val();
                    var telefone = objTelefone.val();
                    var email = objEmail.val();
                    var cpf = objCpf.val();
                    
                    $(".msg-input").each(function(){
                        $(this).text("").css({
                            visibility: "hidden",
                            opacity: "0"
                        });
                    });
                    
                    
                    if(nome.length < 3){
                        finalizandoCompra = false;
                        
                        var msg = "O campo nome deve conter no mínimo 3 caracteres";
                        objNome.next(".msg-input").text(msg).css({
                            visibility: "visible",
                            opacity: "1"
                        });
                        
                        return false;
                    }

                    if(telefone.length < 14){
                        finalizandoCompra = false;
                        
                        var msg = "O campo telefone deve conter no mínimo 14 caracteres";
                        objTelefone.next(".msg-input").text(msg).css({
                            visibility: "visible",
                            opacity: "1"
                        });
                        
                        return false;
                    }
                    
                    if(validarEmail(email) == false){
                        finalizandoCompra = false;
                        
                        var msg = "O campo e-mail deve ser preenchido corretamente";
                        objEmail.next(".msg-input").text(msg).css({
                            visibility: "visible",
                            opacity: "1"
                        });
                        
                        return false;
                    }
                    
                    if(cpf.length != 14){
                        finalizandoCompra = false;
                        
                        var msg = "O campo CPF deve conter 14 caracteres";
                        objCpf.addClass("wrong-input");
                        objCpf.next(".msg-input").text(msg).css({
                            visibility: "visible",
                            opacity: "1"
                        });
                        
                        return false;
                    }
                    
                    if(!finalizandoCompra){
                        
                        finalizandoCompra = true;
                        var botaoFinalizar = $("#botaoFinalizarCompra");

                        botaoFinalizar.html("Validando " + iconLoading);
                        var dados = {
                            produtos: carrinho,
                            nome_cliente: nome,
                            telefone_cliente: telefone,
                            email_cliente: email,
                            cpf_cliente: cpf,
                        }

                        $.ajax({
                            type: "POST",
                            url: "@valida-orcamento.php",
                            data: JSON.stringify(dados),
                            contentType: "application/json",
                            error: function(){
                                mensagemAlerta("Ocorreu um erro ao finalizar seu pedido de orçamento");
                                botaoFinalizar.html("Recarregar página");
                                botaoFinalizar.off().on("click", function(){
                                    window.location.reload();
                                });
                            },
                            success: function(resposta){
                                console.log(resposta);
                                if(resposta == "true"){
                                    mensagemAlerta("Sua pedido de orçamento foi enviado com sucesso! Logo entraremos em contrato com uma proposta especial para você.", false, "limegreen");
                                    botaoFinalizar.html("Voltar à página inicial");
                                    botaoFinalizar.off().on("click", function(){
                                        window.location.href = "index.php";
                                    });
                                }else{
                                    mensagemAlerta("Ocorreu um erro ao finalizar o orçamento");
                                    botaoFinalizar.html("<i class='fas fa-sync'></i> Recarregar página");
                                    botaoFinalizar.off().on("click", function(){
                                        window.location.reload();
                                    });
                                }
                            }
                        });
                    }
                    
                }
                
                /*FUNCOES DO CARRINHO*/
                var cartItem = $(".view-subtotal-produto");
                cartItem.each(function(){
                    var item = $(this);
                    var botaoRemover = item.children(".botao-remover")
                    botaoRemover.off().on("click", function(){
                        var idProduto = botaoRemover.attr("carrinho-id-produto");
                        function remover(){
                            var dados = {
                                acao_carrinho: "remover_produto",
                                id_produto: idProduto,
                            }
                            $.ajax({
                                type: "POST",
                                url: "@classe-carrinho-compras.php",
                                data: dados,
                                error: function(){
                                    notificacaoPadrao("Ocorreu um erro ao remover o produto");
                                    adicionandoCarrinho = false;
                                },
                                success: function(resposta){
                                    if(resposta == "true"){
                                        notificacaoPadrao("<i class='fas fa-times'></i> Produto removido", "success");
                                        window.location.reload();
                                    }else{
                                        notificacaoPadrao("Ocorreu um erro ao remover o produto");
                                    }
                                }

                            });
                        }

                        mensagemConfirma("Tem certeza que deseja remover este produto?", remover);
                    });
                });
                
                var controllerPreco = $(".controller-preco");
                var inputQuantidade = controllerPreco.children(".quantidade-produto");
                inputQuantidade.each(function(){
                    var input = $(this);
                    var idProduto = input.attr("carrinho-id-produto");
                    var quantidade = 1;
                    input.off().on("change", function(){
                        quantidade = input.val();
                        if(quantidade == 0 || quantidade == "" || typeof quantidade == "undefined"){
                            quantidade = 1;
                        }
                        if(idProduto != "undefined" && idProduto > 0){
                            adicionandoCarrinho = true;
                            var quantidade = quantidade;
                            $.ajax({
                                type: "POST",
                                url: "@classe-carrinho-compras.php",
                                data: {acao_carrinho: "adicionar_produto", id_produto: idProduto, quantidade: quantidade},
                                error: function(){
                                    notificacaoPadrao("Ocorreu um erro ao adicionar o produto ao carrinho");
                                    adicionandoCarrinho = false;
                                },
                                success: function(resposta){
                                    if(resposta == "true"){
                                        notificacaoPadrao("<i class='fas fa-plus'></i> Produto atualizado", "success");
                                        setTimeout(function(){
                                            window.location.reload();
                                        }, 300);
                                    }else if(resposta == "sem_estoque"){
                                        notificacaoPadrao("<i class='fas fa-exclamation-circle'></i> Produto sem estoque");
                                    }else{
                                        notificacaoPadrao("Ocorreu um erro ao adicionar o produto ao carrinho");
                                    }
                                }

                            });
                        }else{
                            notificacaoPadrao("Ocorreu um erro ao adicionar o produto ao carrinho");
                        }
                    });
                });
                /*END FUNCOES DO CARRINHO*/
                
                if(document.getElementById("botaoLoginCompra") != null){
                    document.getElementById("botaoLoginCompra").addEventListener("click", function(){
                        toggleLogin();
                    });
                }
                
                if(document.getElementById("botaoFinalizarCompra") != null){
                    document.getElementById("botaoFinalizarCompra").addEventListener("click", function(){
                        finalizarCompra();
                    });
                }
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
            <h1 class="titulo">Segue orçamento</h1>
            <article>Escolhemos os melhores preços para você finalizar sua compra. Qualquer dúvida entre em contato. Nós agradecemos.</article>
            
            <!--DISPLAY ITENS-->
            <div class="display-carrinho">
                <?php
                    require_once "@classe-carrinho-compras.php";
                    $cls_carrinho = new Carrinho();
                    $tabela_imagens_produtos = $pew_custom_db->tabela_imagens_produtos;
                
                    if(isset($_GET["token_carrinho"]) && $_GET["token_carrinho"] != ""){
                        $cls_carrinho->rebuild_carrinho($_GET["token_carrinho"]);
                    }
                
                    $carrinho_finalizar = $cls_carrinho->get_carrinho();
                    $carrinho_json = json_encode($carrinho_finalizar);
                    echo "<input type='hidden' value='$carrinho_json' id='carrinhoFinalizar'>";
                
                    $dirImagens = "imagens/produtos";
                    if(count($carrinho_finalizar["itens"]) > 0){
                        $totalItens = 0;
                        foreach($carrinho_finalizar["itens"] as $indice => $item_carrinho){
                            $idProduto = $item_carrinho["id"];
                            $nome = $item_carrinho["nome"];
                            $preco = $item_carrinho["preco"];
                            $precoAtivo = $item_carrinho["preco_ativo"];
                            $preco = $pew_functions->custom_number_format($preco);
                            $quantidade = $item_carrinho["quantidade"];
                            $subtotal = $preco * $quantidade;
                            $subtotal = $pew_functions->custom_number_format($subtotal);
                            $totalItens += $subtotal;
                            $condicao = "id_produto = '$idProduto'";
                            $queryImagem = mysqli_query($conexao, "select * from $tabela_imagens_produtos where $condicao order by posicao asc");
                            $infoImagem = mysqli_fetch_array($queryImagem);
                            $imagem = $infoImagem["imagem"];
                            if(!file_exists($dirImagens."/".$imagem) || $imagem == ""){
                                $imagem = "produto-padrao.png";
                            }
                            // FRETE INFO
                            $precoFrete = $preco;
                            $comprimento = $item_carrinho["comprimento"];
                            $largura = $item_carrinho["largura"];
                            $altura = $item_carrinho["altura"];
                            $peso = $item_carrinho["peso"];
                            echo "<div class='item-carrinho'>";
                                if(isset($item_carrinho["desconto"]) && $item_carrinho["desconto"] > 0){
                                    echo "<div class='promo-tag'>-{$item_carrinho["desconto"]}%</div>";
                                }
                                echo "<div class='box-imagem'><img class='imagem' src='$dirImagens/$imagem'></div>";
                                echo "<div class='information'>";
                                    echo "<h2 class='titulo'>$nome</h2>";
                                echo "</div>";
                                echo "<div class='price-field'>";
                                    echo "<div class='controller-preco'>";
                                        if($item_carrinho["preco_ativo"] == 1){
                                            echo "<h5 class='price'>R$ $preco</h5>";
                                            
                                        }
                                        echo "<input type='number' class='quantidade-produto' placeholder='Qtd' value='$quantidade' carrinho-id-produto='$idProduto'>";
                                    echo "</div>";
                                    echo "<div class='view-subtotal-produto'>";
                                        if($item_carrinho["preco_ativo"] == 1){
                                            echo "<h4 class='subtotal'>R$ <span class='view-price'>$subtotal</span></h4>";
                                        }else{
                                            echo "<h4 class='subtotal'>Á orçar</h4>";
                                        }
                                        echo "<a class='link-padrao botao-remover' carrinho-id-produto='$idProduto'>Remover</a>";
                                    echo "</div>";
                                echo "</div>";
                                echo "<span class='info-frete'>";
                                    echo "<input type='hidden' id='freteIdProduto' value='$idProduto'>";
                                    echo "<input type='hidden' id='freteTituloProduto' value='$nome'>";
                                    echo "<input type='hidden' id='fretePrecoProduto' value='$precoFrete'>";
                                    echo "<input type='hidden' id='freteComprimentoProduto' value='$comprimento'>";
                                    echo "<input type='hidden' id='freteLarguraProduto' value='$largura'>";
                                    echo "<input type='hidden' id='freteAlturaProduto' value='$altura'>";
                                    echo "<input type='hidden' id='fretePesoProduto' value='$peso'>";
                                    echo "<input type='hidden' id='freteQuantidadeProduto' value='$quantidade'>";
                                echo "</span>";
                            echo "<br style='clear: both;'>";
                            echo "</div>";
                        }
                        echo "<div class='display-formulario clear full'>";
                            echo "<h3 class='titulo'>Preencha o formulário para finalizar o seu pedido</h3>";
                            echo "<div class='small'>";
                                echo "<h4 class='input-title'>Nome Completo</h4>";
                                echo "<input type='text' placeholder='Nome Completo' name='nome' id='nomeOrcamento' class='input-standard'>";
                                echo "<h6 class='msg-input'></h6>";
                            echo "</div>";
                            echo "<div class='small'>";
                                echo "<h4 class='input-title'>Telefone</h4>";
                                echo "<input type='text' placeholder='(41) 99999-9999' name='telefone' id='telefoneOrcamento' class='input-standard'>";
                                echo "<h6 class='msg-input'></h6>";
                            echo "</div>";
                            echo "<div class='small'>";
                                echo "<h4 class='input-title'>E-mail</h4>";
                                echo "<input type='text' placeholder='contato@reidasfechaduras.com.br' name='email' id='emailOrcamento' class='input-standard'>";
                                echo "<h6 class='msg-input'></h6>";
                            echo "</div>";
                            echo "<div class='small'>";
                                echo "<h4 class='input-title'>CPF</h4>";
                                echo "<input type='text' placeholder='000.000.000-00' name='cpf' id='cpfOrcamento' class='input-standard'>";
                                echo "<h6 class='msg-input'></h6>";
                            echo "</div>";
                            echo "<div class='clear full'>";
                                echo "<button type='button' class='botao-continuar botao-finalizar-compra' id='botaoFinalizarCompra'>Finalizar <i class='fas fa-check'></i></button>";
                            echo "</div>";
                        echo "</div>";
                    }else{
                        echo "<h5 align=center style='width: 100%;'><br>Seu carrinho está vazio</h5>";
                        echo "<h5 align=center style='width: 100%;'><br><a href='index.php' class='link-padrao'>Voltar as compras</a></h5>";
                    }
                ?>
            </div>
            <!--END DISPLAY ITENS-->
        </div>
        <!--END THIS PAGE CONTENT-->
        <?php
            require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>