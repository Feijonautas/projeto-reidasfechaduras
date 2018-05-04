<?php

    $jsonData = json_decode(file_get_contents('php://input'), true);
    if($jsonData != null){
        
        $infoCarrinho = isset($jsonData["produtos"]) ? json_decode($jsonData["produtos"]) : null;
        
        $nomeCliente = isset($jsonData["nome_cliente"]) ? $jsonData["nome_cliente"] : null;
        $telefoneCliente = isset($jsonData["telefone_cliente"]) ? $jsonData["telefone_cliente"] : null;
        $emailCliente = isset($jsonData["email_cliente"]) ? $jsonData["email_cliente"] : null;
        $cpfCliente = isset($jsonData["cpf_cliente"]) ? $jsonData["cpf_cliente"] : null;
        
        $infoCarrinho = (array)$infoCarrinho;
        foreach($infoCarrinho["itens"] as $objItem){
            $item = (array)$objItem;
            $_POST["produtos"][$i] = array();
            $_POST["produtos"][$i]["id"] = $item["id"];
            $_POST["produtos"][$i]["titulo"] = $item["nome"];
            $_POST["produtos"][$i]["preco"] = $item["preco"];
            $_POST["produtos"][$i]["quantidade"] = $item["quantidade"];
            $i++;
        }
        
        $_POST["nome_cliente"] = $nomeCliente;
        $_POST["telefone_cliente"] = $telefoneCliente;
        $_POST["email_cliente"] = $emailCliente;
        $_POST["cpf_cliente"] = $cpfCliente;
    }

    $post_fields = array("produtos", "nome_cliente", "telefone_cliente", "email_cliente", "cpf_cliente");
    $invalid_fields = array();
    $gravar = true;
    $i = 0;
    foreach($post_fields as $post_name){
        if(!isset($_POST[$post_name])){
            $gravar = false;
            $i++;
            $invalid_fields[$i] = $post_name;
        }
    }

    function limpaNumberString($str){
        return preg_replace("/[^0-9]/", "", $str);
    }

    if($gravar){
        
        $produtosCarrinho = $_POST["produtos"];
        $nomeCliente = addslashes($_POST["nome_cliente"]);
        $telefoneCliente = addslashes($_POST["telefone_cliente"]);
        $emailCliente = addslashes($_POST["email_cliente"]);
        $cpfCliente = addslashes($_POST["cpf_cliente"]);
        
        $cpfCliente = limpaNumberString($cpfCliente);
        
        $dataAtual = date("Y-m-d h:i:s");
        
        require_once "@pew/pew-system-config.php";
        
        $tokenCarrinhoOrcamento = "ORCM" . substr(md5(time()), 0, 10);
        
        $tabela_carrinhos = $pew_custom_db->tabela_carrinhos;
        $tabela_orcamentos = $pew_custom_db->tabela_orcamentos;
        
        foreach($produtosCarrinho as $infoProduto){
            $idProduto = $infoProduto["id"];
            $tituloProduto = $infoProduto["titulo"];
            $quantidadeProduto = $infoProduto["quantidade"];
            $precoProduto = $infoProduto["preco"];
            
            mysqli_query($conexao, "insert into $tabela_carrinhos (token_carrinho, id_produto, nome_produto, quantidade_produto, preco_produto, data_controle, status) values ('$tokenCarrinhoOrcamento', '$idProduto', '$tituloProduto', '$quantidadeProduto', '$precoProduto', '$dataAtual', 2)");
        }
        
        mysqli_query($conexao, "insert into $tabela_orcamentos (nome_cliente, telefone_cliente, email_cliente, cpf_cliente, token_carrinho, porcentagem_desconto, id_vendedor, data_pedido, data_vencimento, data_controle, modify_controle, status_orcamento) values ('$nomeCliente', '$telefoneCliente', '$emailCliente', '$cpfCliente', '$tokenCarrinhoOrcamento', 0, '$idVendedor', '$dataAtual', '$dataAtual', '$dataAtual', 0, 0)");
        
        echo "true";
        
    }else{
        //print_r($invalid_fields);
        echo "false";
    }