<style>
    .display-orcamento{
        width: 100%;
        position: relative;
        height: 1364px;
    }
    .display-orcamento .background-orcamento{
        position: absolute;
        z-index: 1;
        width: 100%;
        top: 0;
        left: 0;
    }
    .display-orcamento .background-orcamento img{
        width: 100%;
        height: 100%;
    }
    .display-orcamento .box-orcamento{
        position: absolute;
        margin: 0 auto;
        z-index: 2;
        margin-top: 30%;
        margin-bottom: 80px;
        left: 0;
        right: 0;
        width: 300px;
        height: 400px;
        padding: 30px;
        border-radius: 25px;
        background-color: #ffae00;
        text-align: center;
        -webkit-box-shadow: 0px 0px 79px -4px rgba(0, 0, 0, .3);
        -moz-box-shadow: 0px 0px 79px -4px rgba(0, 0, 0, .3);
        box-shadow: 0px 0px 79px -4px rgba(0, 0, 0, .3);
    }
    .display-orcamento .box-orcamento img{
        width: 45%;
    }
    .display-orcamento .box-orcamento h3{
        margin: 0px;
        margin-top: 30px;
        font-weight: normal;
        font-size: 40px;
        line-height: 28px;
        font-variant-caps: all-petite-caps;
    }
    .display-orcamento .box-orcamento h2{
        font-variant-caps: all-petite-caps;
        font-size: 55px;
        line-height: 54px;
        margin: 0px;
        margin-top: -10px;
        margin-bottom: 80px;
    }
    @media screen and (min-width: 0px) and (max-width: 1600px){
        .display-orcamento{
            height: 1127.610px;
        }
        .display-orcamento .box-orcamento{
            margin-top: 27.5%;
            width: 300px;
            height: 380px;
        }
        @media screen and (max-width: 1366px){
            .display-orcamento{
                height: 963.906px;
            }
            .display-orcamento .box-orcamento{
                margin-top: 27.5%;
                width: 300px;
                height: 380px;
            }
            @media screen and (max-width: 1200px){
                .display-orcamento{
                    height: 834.063px;
                }
                .display-orcamento .box-orcamento{
                    margin-top: 22%;
                    width: 300px;
                    height: 380px;
                }
                @media screen and (max-width: 880px){
                    .display-orcamento{
                        height: 625.188px;
                    }
                    .display-orcamento .box-orcamento{
                        width: 270px;
                        height: 360px;
                    }
                    .display-orcamento .box-orcamento h3{
                        font-size: 36px;
                    }
                    .display-orcamento .box-orcamento h2{
                        font-size: 45px;
                    }
                    @media screen and (max-width: 590px){
                        .display-orcamento{
                            height: 421.969px;
                        }
                        .display-orcamento .box-orcamento{
                            margin-top: 10%;
                            width: 270px;
                            height: 320px;
                        }
                        .display-orcamento .box-orcamento h2{
                            margin-bottom: 40px;
                        }
                        @media screen and (max-width: 480px){
                            .display-orcamento .box-orcamento{
                                width: 60%;
                                padding: 5%;
                            }
                            .display-orcamento .box-orcamento h3{
                                font-size: 25px;   
                            }
                            .display-orcamento .box-orcamento h2{
                                font-size: 32px;
                                line-height: 32px;
                                margin-bottom: 40px;
                            }
                            @media screen and (max-width: 350px){
                                
                            }
                        }
                    }
                }
            }
        }
    }
</style>
<div class="display-orcamento">
    <div class="background-orcamento"><img src="imagens/estrutura/background-orcamento.png"></div>
    <div class="box-orcamento">
        <img src="imagens/estrutura/icone-orcamento.png">
        <h3>Vamos fazer um</h3>
        <h2>Orçamento</h2>
        <a href="fazer-orcamento.php" class="botao-padrao-blue">COMECE JÁ</a>
    </div>
</div>
<br style=clear:both;>