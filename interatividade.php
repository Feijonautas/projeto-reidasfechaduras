<!--Interatividade Visual -> Estrutura Essencial -->
<div class="msg-padrao"></div>
<?php
if(isset($_GET["msg"])){
    $msg = $_GET["msg"];
    if(isset($_GET["msgType"])){
        $msgType = $_GET["msgType"];
    }else{
        $msgType = "error";
    }
    echo "<script type='text/javascript'>";
    echo "$(document).ready(function(){ notificacaoPadrao('$msg', '$msgType'); });";
    echo "</script>";
}
?>
<div class="background-interatividade"></div>
<div class="background-paineis"></div>
<div class="msg-confirma">
    <h3 aling='center' class="texto-confirma">Mensagem...</h3>
    <input type="button" value="Confirmar" id='btnConfirmar'>
    <input type="button" value="Cancelar" id='btnCancelar'>
</div>
<div class="msg-alerta">
    <h3 aling='center' class="texto-alerta">Mensagem...</h3>
    <input type="button" value="Ok" id="btnOk">
</div>
<!--FIM Interatividade Visual -> Estrutura Essencial -->