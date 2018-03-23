<?php
if(isset($_POST["datatype"]) || isset($_GET["datatype"])){
    $dataType = isset($_POST["datatype"]) ? addslashes($_POST["datatype"]) : addslashes($_GET["datatype"]);
}else{
    $dataType = "POST";
}
$varName = "busca";
if($dataType == "POST" || $dataType == "post"){
    $dataType = "POST";
    $dataSend = $_POST[$varName];
}else{
    $dataType = "GET";
    $dataSend = $_GET[$varName];
}
if(isset($dataSend)){
    require_once "pew-system-config.php";
    $tabela_produtos = $pew_custom_db->tabela_produtos;
    $tabela_categorias_produtos = $pew_custom_db->tabela_categorias_produtos;
    $busca = addslashes($dataSend);
    $searchColluns = array("id", "nome", "marca", "sku");
    $searchCondition = "";
    $ctrlColluns = 0;
    foreach($searchColluns as $collun){
        if($ctrlColluns == 0){
            $searchCondition .= "$collun like '%$busca%' ";
        }else{
            $searchCondition .= "or $collun like '%$busca%' ";
        }
        $ctrlColluns++;
    }
    
    function contarResultados($table, $condition){
        global $conexao;
        $contar = mysqli_query($conexao, "select count(id) as total from $table where $condition");
        $contagem = mysqli_fetch_assoc($contar);
        $totalContagem = $contagem["total"];
        return $totalContagem;
    }
    
    $produtosSelecionados = array();
    $ctrlProdutos = 0;
    if(contarResultados($tabela_produtos, $searchCondition) > 0){
        $queryProdutos = mysqli_query($conexao, "select id from $tabela_produtos where $searchCondition");
        while($produtos = mysqli_fetch_array($queryProdutos)){
            $idProduto = $produtos["id"];
            $produtosSelecionados[$ctrlProdutos] = $idProduto;
            $ctrlProdutos++;
        }
        function buscarCategorias(){
            global $conexao, $produtosSelecionados;
            $queryCategorias = mysqli_query($conexao, "select id from $tabela_categorias_produtos where $searchCondition");
            while($infoCategorias = mysqli_fetch_array($queryCategorias)){
                $idProduto = $infoCategorias["id"];
                $produtosSelecionados[$ctrlProdutos] = $idProduto;
                $ctrlProdutos++;
            }
        }
        if($datatype == "POST" && isset($_POST["categoria"])){
            buscarCategorias();
        }else if(isset($_POST["categoria"])){
            buscarCategorias();
        }
        print_r(json_encode($produtosSelecionados));
    }else{
        echo "false";
    }
}else{
    echo "false";
}
?>