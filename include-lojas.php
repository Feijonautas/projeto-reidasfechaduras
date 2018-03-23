<style>
    .display-lojas{
        width: 80%;
        margin-left: 10%;
        min-height: 400px;
        padding-top: 20px;
        margin-bottom: 60px;
    }
    .box-loja{
        width: 35%;
        margin-right: 5%;
        margin-left: 10%;
        float: left;
        background-color: #fff;
        min-height: 300px;
        border-radius: 30px;
        -webkit-box-shadow: 0px 0px 79px -4px rgba(0, 0, 0, .3);
        -moz-box-shadow: 0px 0px 79px -4px rgba(0, 0, 0, .3);
        box-shadow: 0px 0px 79px -4px rgba(0, 0, 0, .3);
        text-align: center;
    }
    .box-loja .imagem{
        width: 70%;
        margin-left: 15%;
        margin-top: 40px;
        margin-bottom: 40px;
    }
    .box-loja .imagem img{
        width: 100%;
        border-radius: 50%;
    }
    .box-loja h2{
        font-size: 18px;
        margin: 5px;
    }
    .box-loja h3{
        margin-top: 0px;
        font-size: 14px;   
    }
    .last-box{
        margin-right: 10%;
        margin-left: 5%;
    }
    @media screen and (max-width: 980px){
        .display-lojas{
            width: 100%;
            margin-left: 0%;
        }
        .box-loja .imagem{
            width: 90%;
            margin-left: 5%;
        }
        .box-loja h2{
            font-size: 14px;
        }
        .box-loja h3{
            font-size: 12px;   
        }
        @media screen and (max-width: 480px){
            .box-loja{
                width: 80%;
                float: none;
                margin-left: 10%;
                padding-bottom: 15px;
            }
            .box-loja .imagem{
                width: 80%;
                margin-left: 10%;
                padding-top: 20px;
            }
            .box-loja h2{
                font-size: 16px;
            }
            .box-loja h3{
                font-size: 14px;   
            }
        }
    }
</style>
<section class="display-lojas">
    <div class="titulo-padrao">
        <h2 class="titulo">Lojas</h2>
        <div class="border"></div>
    </div>
    <div class="box-loja">
        <div class="imagem"><a href="#" target="_blank"><img src="imagens/identidadeVisual/img-loja-fisica-1.png"  alt="Loja Rei das Fechaduras - Av. Anita Garibaldi, 1854" title="Loja Rei das Fechaduras - Av. Anita Garibaldi, 1854"></a></div>
        <h2>Av. Anita Garibaldi, 1854</h2>
        <h2><i class="fa fa-phone" auto-hidden='true'></i> (41) 3016-1414</h2>
        <h3>Curitiba-PR</h3>
    </div>
    <div class="box-loja last-box">
        <div class="imagem"><a href="#" target="_blank"><img src="imagens/identidadeVisual/img-loja-fisica-2.png" alt="Loja Rei das Fechaduras - Av. Visconde de Guarapuava, 1915" title="Loja Rei das Fechaduras - Av. Visconde de Guarapuava, 1915"></a></div>
        <h2>Av. Visconde de Guarapuava, 1915</h2>
        <h2><i class="fa fa-phone" auto-hidden='true'></i> (41) 3016-8008</h2>
        <h3>Curitiba-PR</h3>
    </div>
</section>
<br style="clear: both;">