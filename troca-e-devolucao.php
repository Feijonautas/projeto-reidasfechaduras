<?php
session_start();

require_once "@classe-paginas.php";

$cls_paginas->set_titulo("Troca e Devolução");
$cls_paginas->set_descricao("DESCRIÇÃO MODELO ATUALIZAR...");
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
        <meta name="HandheldFriendly" content="true">
        <meta name="description" content="<?php echo $cls_paginas->descricao;?>">
        <meta name="author" content="Efectus Web">
        <title><?php echo $cls_paginas->titulo;?></title>
        <link type="image/png" rel="icon" href="imagens/identidadeVisual/logo-icon.png">
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
            }
            .main-content h4{
                margin: 0 auto;
            }
        </style>
        <!--END PAGE CSS-->
        <!--PAGE JS-->
        <script>
            $(document).ready(function(){
                console.log("Página carregada");
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
            <h1 align=center>Troca e Devolução</h1>
            <h4>Olá, ficamos muito felizes com o seu pedido e preparamos sua encomenda com todo cuidado e atenção!</h4>
            <h2>Prezado consumidor pensando em seu bem estar, listamos os motivos que podem levar você à devolução ou à troca:</h2>
            <h4>- Desistência/Arrependimento;</h4>
            <h4>- Defeito técnico/ Fabricação;</h4>
            <h4>- Avaria;</h4>
            <h4>- Produto em desacordo com o pedido feito;</h4>
            <h4>- Produtos devolvidos deverão estar sem nenhuma intervenção que implique em depreciação da peça ou indícios de uso, acompanhados da cópia da nota fiscal, etiquetas, tag's, manuais, todos os acessórios e na embalagem original, sob pena do não recebimento do mesmo;</h4>
            <h4>- Todos os itens que envolvam troca ou devolução devem ser comunicados à nossa Central de Atendimento ao cliente.</h4>
            <h3>Produtos devolvidos sem este procedimento serão reenviados ao consumidor pela empresa. </h3>
            <h2>O produto será devolvido para o consumidor sem direito de substituição ou indenização quando houver os seguintes itens de reprovação:</h2>
            <h4>- Ausência de defeito (não constatação do dano apontado pelo cliente); </h4>
            <h4>- Indícios de uso inadequado do produto;</h4>
            <h4>- Indícios de dano acidental ou provocado;</h4>
            <h4>- Desgaste natural em decorrência do uso e Limpeza inadequada do produto.</h4>
            <h2>IMPORTANTE:</h2>
            <h4>- Todos os itens que envolvam troca ou indenização devem ser comunicados à nossa Central de Atendimento ao cliente.Produtos devolvidos sem este procedimento serão reenviados ao consumidor pela empresa;</h4>
            <h4>- A troca das mercadorias poderá se efetuada apenas uma vez. Caso o cliente não fique satisfeito com o produto da troca, o mesmo poderá ser devolvido, no entanto, haverá apenas a opção de indenização.</h4>
            <h4>- A restituição de valores ou a troca de mercadorias acontecerá após o recebimento e a análise das condições dos produtos pelo Rei das Fechaduras.</h4>
            <br><br>
            <h4>Acesse:</h4>
            <a href="quem-somos.php" class="link-padrao">Quem somos</a>
            <a href="entrega-e-devolucao.php" class="link-padrao">Entrega e devolução</a>
        </div>
        <!--END THIS PAGE CONTENT-->
        <?php
            require_once "@include-footer-principal.php";
        ?>
        <!--END REQUIRES PADRAO-->
    </body>
</html>