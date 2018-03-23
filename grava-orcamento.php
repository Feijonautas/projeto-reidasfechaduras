<?php
    if(isset($_POST["nome"]) && isset($_POST["telefone"]) && isset($_POST["email"]) && isset($_POST["mensagem"])){
        require_once "@pew/pew-system-config.php";
        $tabela_pedidos_orcamentos = $pew_custom_db->tabela_pedidos_orcamentos;
        $tabela_pedidos_produtos = $pew_custom_db->tabela_pedidos_produtos;
        
        $nome = addslashes($_POST["nome"]);
        $telefone = addslashes($_POST["telefone"]);
        $email = addslashes($_POST["email"]);
        $orcamentoRelacionados = isset($_POST["orcamentos_relacionados"]) ? $_POST["orcamentos_relacionados"] : "";
        echo $orcamentoRelacionados;
        $mensagem = addslashes($_POST["mensagem"]);
        $tabela_orcamentos = $pew_custom_db->tabela_orcamentos;
        $data = date("Y-m-d h:i:s");
        mysqli_query($conexao, "insert into $tabela_pedidos_orcamentos (nome, telefone, email, mensagem, data_criacao, status) values ('$nome', '$telefone','$email', '$mensagem', '$data', 0)");
        
        $queryID = mysqli_query($conexao, "select last_insert_id()");
        $idOrcamento = mysqli_fetch_assoc($queryID);
        $idOrcamento = $idOrcamento["last_insert_id()"];
        if($orcamentoRelacionados != ""){
            foreach($orcamentoRelacionados as $idProdutoRelacionado){
                mysqli_query($conexao, "insert into $tabela_pedidos_produtos (id_orcamento, id_produto) values ('$idOrcamento', '$idProdutoRelacionado')");
            }
        }
        echo "<script>window.location.href = 'index.php?msg=Pedido enviado com sucesso, aguarde!'</script>";
    }else{
        echo "<script>window.location.href = 'fazer-orcamento.php?msg=Ocorreu um erro ao enviar o pedido!'</script>";
    }
?>
