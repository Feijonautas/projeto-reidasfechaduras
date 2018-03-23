<title>Importação de produtos</title>
<?php
    $import_archive = fopen("import-all-products.txt", "r");

    if(function_exists('strripos') == false){
        function strripos($haystack, $needle){
            return strlen($haystack) - strpos(strrev($haystack), $needle);
        }
    }
    
    $gravarBD = false;
    $produtoOpen = false;
    $montandoDescricao = false;
    $arrayProdutos = array();
    $ctrlProdutos = -1;
    echo "<pre>";
    function verificaLinha($text){
        $pattern = "/%openProduto%|%tituloProduto%|descricaoProduto|marcaProduto|skuProduto|imageProduto|closeImageProduto|closeSkuProduto|closeMarcaProduto|closeTituloProduto|closeProduto/";
        $pattern = array("_openProduto_", "_closeProduto_", "_tituloProduto_", "_closeTituloProduto_", "_descricaoProduto_", "_closeDescricaoProduto_", "_marcaProduto_", "_closeMarcaProduto_", "_skuProduto_", "_closeSkuProduto_", "_imageProduto_", "_closeImageProduto_");
        /*if(preg_match($pattern, $text, $match)){
            $match = $match[0];
            print_r($match);
            switch($match){
                case "openProduto":
                    echo "Cadastrar novo produto";
                    break;
                case "tituloProduto":
                    echo "Montar produto: GET TITULO";
                    break;
                case "closeTituloProduto":
                    echo "Montar produto: TITULO SET";
                    break;
            }
        }*/
        $ctrlVerificacao = 0;
        $totalVerificacao = count($pattern);
        foreach($pattern as $tag){
            global $produtoOpen, $arrayProdutos, $ctrlProdutos, $montandoDescricao, $gravarBD;
            $find = strpos($text, $tag);
            $ctrlVerificacao++;
            if($ctrlProdutos >= 0 && $ctrlVerificacao == 0){
                $produto = $arrayProdutos[$ctrlProdutos];
            }else{
                $produto = null;
            }
            $ctrlVerificacao = $ctrlVerificacao > $totalVerificacao ? 0 : $ctrlVerificacao;
            if($find === false){
                //Nenhuma tag encontrada nesta linha
                if($montandoDescricao && $ctrlVerificacao == 1){
                    $descricao = str_replace("_descricaoProduto_", "", $text);
                    $descricao = str_replace("_closeDescricaoProduto_", "", $text);
                    if($descricao != ""){
                        $descricao = "<br>$descricao";
                        $arrayProdutos[$ctrlProdutos]["descricao"] .= $descricao;
                    }
                }
            }else{
                switch($tag){
                    case "_openProduto_":
                        //echo "INICIAR MONTAGEM PRODUTO<br>";
                        if($produtoOpen == false){
                            $produtoOpen = true;
                            $ctrlProdutos++;
                            $arrayProdutos[$ctrlProdutos] = array();
                            $arrayProdutos[$ctrlProdutos]["titulo"] = "";
                            $arrayProdutos[$ctrlProdutos]["descricao"] = "";
                            $arrayProdutos[$ctrlProdutos]["marca"] = "";
                            $arrayProdutos[$ctrlProdutos]["sku"] = "";
                            $arrayProdutos[$ctrlProdutos]["image"] = "";
                        }else{
                            echo "ERRO AO MONTAR";
                        }
                        break;
                    case "_closeProduto_";
                        //echo "FINALIZAR MONTAGEM PRODUTO<br>";
                        $produtoOpen = false;
                        if($gravarBD){
                            echo "Gravando produto:". $arrayProdutos[$ctrlProdutos]["titulo"];
                            $_POST["sku"] = $arrayProdutos[$ctrlProdutos]["sku"];
                            $_POST["nome"] = $arrayProdutos[$ctrlProdutos]["titulo"];
                            $_POST["descricao"] = $arrayProdutos[$ctrlProdutos]["descricao"];
                            $_POST["marca"] = $arrayProdutos[$ctrlProdutos]["marca"];
                            $_POST["imagem"] = $arrayProdutos[$ctrlProdutos]["image"];
                            require "pew-grava-produto.php";
                        }else{
                            print_r($arrayProdutos[$ctrlProdutos]);
                        }
                        break;
                    case "_tituloProduto_";
                        //echo "GET TITULO PRODUTO<br>";
                        $tituloProduto = str_replace("_tituloProduto_", "", $text);
                        $tituloProduto = str_replace("_closeTituloProduto_", "", $tituloProduto);
                        $arrayProdutos[$ctrlProdutos]["titulo"] = $tituloProduto;
                        break;
                    case "_closeTituloProduto_";
                        //echo "TITULO SET<br>";
                        break;
                    case "_descricaoProduto_";
                        //echo "GET DESCRICAO PRODUTO<br>";
                        $montandoDescricao = true;
                        $arrayProdutos[$ctrlProdutos]["descricao"] = "";
                        break;
                    case "_closeDescricaoProduto_";
                        //echo "DESCRICAO SET<br>";
                        $montandoDescricao = false;
                        break;
                    case "_marcaProduto_";
                        //echo "GET MARCA PRODUTO<br>";
                        $marca = str_replace("_marcaProduto_", "", $text);
                        $marca = str_replace("_closeMarcaProduto_", "", $marca);
                        $arrayProdutos[$ctrlProdutos]["marca"] = $marca;
                        break;
                    case "_closeMarcaProduto_";
                        //echo "MARCA SET<br>";
                        break;
                    case "_skuProduto_";
                        //echo "GET SKU PRODUTO<br>";
                        $sku = str_replace("_skuProduto_", "", $text);
                        $sku = str_replace("_closeSkuProduto_", "", $sku);
                        $arrayProdutos[$ctrlProdutos]["sku"] = $sku;
                        break;
                    case "_closeSkuProduto_";
                        //echo "SKU SET<br>";
                        break;
                    case "_imageProduto_";
                        //echo "GET IMAGE PRODUTO<br>";
                        $image = str_replace("_imageProduto_", "", $text);
                        $image = str_replace("_closeImageProduto_", "", $image);
                        $arrayProdutos[$ctrlProdutos]["image"] = $image;
                        break;
                    case "_closeImageProduto_";
                        //echo "IMAGE SET<br>";
                        break;
                }
            }
        }
    }

    while(!feof($import_archive)){
        $linha = fgets($import_archive);
        $linha = htmlentities($linha);
        verificaLinha($linha);
        echo "<br>";
    }
?>