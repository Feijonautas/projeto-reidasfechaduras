<?php
$titulo = "Rei das Fechaduras - Loja";
$descricao = "Descrição do site";
require_once "chat-efectus-web.php";
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="<?php echo $descricao;?>">
        <meta name="author" content="Efectus Web Masters">
        <title><?php echo $titulo;?></title>
        <link type="text/css" rel="stylesheet" href="css/estilo.css">
        <link type="text/css" rel="stylesheet" href="css/index.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/standard.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC5wAFGVlhe5DxPeDLbJ6SZS55yeifX9cE&callback=initMap" async defer></script>
        <script>
            var marker;
            function selecionaLocalizacao(target){
                var map;
                function loadMapa(latitude, longitude){     
                    var coordenada = {lat: latitude, lng: longitude};
                    map = new google.maps.Map(document.getElementById('map'), {
                        center: coordenada,
                        zoom: 20
                    });
                    marker = new google.maps.Marker({
                        position: coordenada,
                        map: map
                    });
                }
                switch(target){
                        /*pegar todas as coordenadas dos mapas*/
                    case "lojaAhu":
                        loadMapa(-25.395965, -49.256505);
                        break;
                    case "lojaCentro":
                        loadMapa(-25.433780, -49.260347);
                        break;
                }
            }
            $(document).ready(function(){
                $(marker).off().on("click", function(){
                    alert();
                });
                var localizaPadrao = "lojaAhu";
                setTimeout(function(){
                    selecionaLocalizacao(localizaPadrao);
                }, 200);
                $(".box-informacao").off().on("click", function(){
                    var botao = $(this);
                    var target = botao.attr("data-target");
                    console.log(target);
                    $(this).each(function(){
                        $(this).css({
                            color: "#102a83",
                            border: "1px solid #ffb600",
                            boxShadow: "0px 0px 5px 0px rgba(0,0,0,0.75)"
                        });
                    });
                    setTimeout(function(){
                        botao.css({
                            color: "#102a83",
                            border: "none",
                            boxShadow: "none"
                        });
                    }, 300);
                    selecionaLocalizacao(target);
                });
            });
        </script>
    </head>
    <style>
        .titulo-principal{
            font-size: 40px;
            margin: 0 auto;
            text-align: center;
        }
        hr{
            margin-top: 0px;
            height: 5px;
            width: 100px;
            border: none;
            background-color: #ffb600;
        }
        .display-contato{
            text-align: center;
            width: 60%;
            margin-left: auto;
        }
        #map {
            height: 70%;
            width: 40%;
            float: left;
            margin-left: 5%;
            border-radius: 10px;
        }
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        .display-contato .box-informacao{
            text-align: right;
            min-width: 40%;
            padding: 20px;
            margin: 2.5%;
            margin-right: 5%;
            margin-left: 50%;
        }
        .display-contato .box-informacao .telefone{
            width: auto;
            font-weight: bold;
            padding: 1%;
            background-color: #ffb600;
            white-space: nowrap;
        }
        @media screen and (max-width: 770px){
            .display-contato .box-informacao{
                font-size: 0.8em;
            }
            @media screen and (max-width: 770px){
                .display-contato #map{
                    width: 100%;
                }
                .display-contato .box-informacao{
                    width: 100%;
                    margin: 0 auto;
                }
            }
        }
    </style>
    <body>
        <?php
        require_once "header.php";
        require_once "interatividade.php";
        ?>
        <h1 class="titulo-principal">CONTATO</h1>
        <hr style="margin-bottom: 2.5%;">
        <div id="map" class="mapa-localizacao"></div>
        <section class="display-contato">
            <div class="box-informacao" data-target="lojaAhu">
                <h2>Loja Ahú</h2>
                <h3>Av. Anita Garibalds, 1854 Curitiba-PR</h3>
                <span class='telefone'>41 3016.1414</span>
                </div>
            <div class="box-informacao" data-target="lojaCentro">
                <h2>Loja Centro</h2>
                <h3>Av. Visconde de Guarapuava, 1915 Curitiba-PR</h3>
                <span class="telefone">41 3016.8008</span>
            </div>
        </section>
        <br style="clear:both;">
        <?php
        require_once "footer.php";
        require_once "footer-efectusweb.php";
        ?>
    </body>
    <link type="text/css" rel="stylesheet" href="fontes/font-awesome-4.7.0/css/font-awesome.min.css">
</html>