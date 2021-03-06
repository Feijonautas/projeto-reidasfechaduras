<?php

require_once "@classe-system-functions.php";
require_once "@classe-minha-conta.php";
require_once "@pew/pew-system-config.php";
$tabela_minha_conta = $pew_custom_db->tabela_minha_conta;

$post_fields = array("email", "senha", "iniciar_login");
$invalid_fields = array();

$validar = true;
$i = 0;
foreach($post_fields as $post_name){
    if(!isset($_POST[$post_name])) $validar = false; $invalid_fields[$i] = $post_name; $i++;
}
if($validar){
    $email = addslashes($_POST["email"]);
    $senha = md5(addslashes($_POST["senha"]));
    $iniciarLogin = $_POST["iniciar_login"] == true ? true : false;
    $loginValidado = false;
    $confirmacaoPendente = false;
    
    $totalEmail = $pew_functions->contar_resultados($tabela_minha_conta, "email = '$email'");
    
    $totalLogin = 0;
    if($totalEmail > 0){
        $queryStatus = mysqli_query($conexao, "select status from $tabela_minha_conta where email = '$email'");
        $infoStatus = mysqli_fetch_array($queryStatus);
        $status = $infoStatus["status"];
        $confirmacaoPendente = $status == 0 ? true : false;
        
        $totalLogin = $pew_functions->contar_resultados($tabela_minha_conta, "email = '$email' and senha = '$senha'");
    }
    
    $loginValidado = $totalLogin == 1 ? true : false;
    
    $return = "email_incorreto"; // Se não existir o email validado
    if($loginValidado){
        
        if($iniciarLogin){
            $minhaConta = new MinhaConta();
            $return = $minhaConta->logar(addslashes($_POST["email"]), addslashes($_POST["senha"])) == true ? "true" : "senha_email_incorretos";
        }
        
    }else if($confirmacaoPendente){
        $return = "true"; // Era "confirmar_email"
    }else if($totalEmail > 0){
        $return = "senha_incorreta";
    }

    echo $return;
}else{
    echo "false";
    //$print_r($invalid_fields);
}