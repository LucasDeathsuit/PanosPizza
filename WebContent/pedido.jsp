<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sobre</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="static/css/style.css">
        <script src="static/bootstrap/js/bootstrap.js"></script>
        <script src="scripts/scripts.js"></script>
    </head>
    <body onload="start()">
        
        <%@ include file="static/templates/header.html" %>
        
        <section>
            <article>
                <form>
                    <div class="sobre-pedido">
                        <div class="buttons">
                            <div class="botao" onclick="escolheTela('tela-tamanho')">Tamanho</div>
                            <div class="botao" onclick="escolheTela('tela-sabores')">Sabores</div>
                            <div class="botao" onclick="escolheTela('tela-massa')">Massa</div>
                            <div class="botao" onclick="escolheTela('tela-borda')">Borda</div>
                            <div class="botao" onclick="escolheTela('tela-pedido')">Pedido</div>
                        </div>
                        <div class="pedidos">

                            <!-- TELA 1 -->
                            <div class="tela" id="tela-tamanho">
                                <h3>Escolha o tamanho da sua pizza</h3>
                                <div class="tamanho-pedido">
                                    <div class="tamanhos">
                                        <p>20cm</p>
                                        <p>30cm</p>
                                        <p>40cm</p>
                                    </div>
                                    <div class="radios">
                                        <div class="opcao">
                                            <input type="radio" name="tamanho" value="Pequena" id="pequena" onclick="mudaTamanho()">
                                            <label for="pequena">Pequena</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="radio" name="tamanho" value="Média" id="media" checked onclick="mudaTamanho()">
                                            <label for="media">Média</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="radio" name="tamanho" value="Grande" id="grande" onclick="mudaTamanho()">
                                            <label for="grande">Grande</label>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="botao-enviar" onclick="proximaTela(0)">Confirmar</button>
                            </div>

                            <!-- TELA 2 -->

                            <div class="tela" id="tela-sabores">
                                <h3>Escolha os sabores da pizza</h3>
                                <h4>Lista de Sabores!</h4>
                                <div class="sabores">
                                    <div class="salgados">
                                        <h5 class="opcao">Salgados</h5>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Alho e Óleo" id="alho" onclick="selecionaSabores()">
                                            <label for="alho">Alho e Óleo</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Lombo Canadense" id="lombo" onclick="selecionaSabores()">
                                            <label for="lombo">Lombo Canadense</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Calabresa" id="calabresa" onclick="selecionaSabores()">
                                            <label for="calabresa">Calabresa</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Basca" id="basca" onclick="selecionaSabores()">
                                            <label for="basca">Basca</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Quatro Queijos" id="queijos" onclick="selecionaSabores()">
                                            <label for="queijos">Quatro Queijos</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Filé" id="file" onclick="selecionaSabores()">
                                            <label for="file">Filé</label>
                                        </div>
                                    </div>

                                    <div class="doces">
                                        <h5 class="opcao">Doces</h5>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Chocolate c/ Morango" id="chocomo" onclick="selecionaSabores()">
                                            <label for="chocomo">Chocolate c/ Morango</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Chocolate Misto" id="chocomisto" onclick="selecionaSabores()">
                                            <label for="chocomisto">Chocolate Misto</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Chocolate c/ M&M's" id="chocomemes" onclick="selecionaSabores()">
                                            <label for="chocomemes">Chocolate c/ M&M's</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Banana c/ Gemada" id="banana" onclick="selecionaSabores()">
                                            <label for="banana">Chocolate c/ Banana</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Brigadeiro" id="brigadeiro" onclick="selecionaSabores()">
                                            <label for="brigadeiro">Brigadeiro</label>
                                        </div>
                                        <div class="opcao">
                                            <input type="checkbox" name="sabor" value="Califórnia" id="california" onclick="selecionaSabores()">
                                            <label for="california">Califórnia</label>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="botao-enviar" onclick="proximaTela(1)">Confirmar</button>
                            </div>

                            <!-- TELA 3 -->

                            <div class="tela" id="tela-massa">
                                <h3>Tipo de massa</h3>
                                <div class="opcao tipo-massa">
                                    <input type="radio" name="massa" value="Integral" id="integral">
                                    <label for="integral">Integral</label>
                                </div>
                                <div class="opcao tipo-massa">
                                    <input type="radio" name="massa" value="Normal" id="normal" checked>
                                    <label for="normal">Normal</label>
                                </div>
                                <button type="button" class="botao-enviar" onclick="proximaTela(2)">Confirmar</button>
                            </div>

                            <!-- TELA 4 -->

                            <div class="tela" id="tela-borda">
                                <h3>Com borda?</h3>
                                <div class="opcao tipo-borda">
                                    <input type="radio" name="borda" value="nao" id="nao" checked="" onclick="verificaBordas()">
                                    <label for="nao">Não</label>
                                </div>
                                <div class="opcao tipo-borda">
                                    <input type="radio" name="borda" value="sim" id="sim" onclick="verificaBordas()">
                                    <label for="sim">Sim</label>
                                </div>

                                <div class="opcao sabor-borda">
                                    <input type="radio" name="borda-sabor" value="Catupiry" id="catupiry" checked="" disabled="">
                                    <label for="catupiry">Catupiry</label>
                                </div>

                                <div class="opcao sabor-borda">
                                    <input type="radio" name="borda-sabor" value="Cheddar" id="cheddar" disabled="">
                                    <label for="cheddar">Cheddar</label>
                                </div>
                                <button type="button" class="botao-enviar" onclick="proximaTela(3)">Confirmar</button>
                            </div>

                            <!-- TELA 5 -->

                            <div class="tela" id="tela-pedido">
                                <h3>Total do Pedido</h3>
                                <div class="total">
                                    <p>Tamanho: <span id="tamanho"></span></p>
                                    <p>Sabores: <span id="sabores"></span></p>
                                    <p>Massa: <span id="massa"></span></p>
                                    <p>Borda: <span id="borda"></span></p>
                                    <p>TOTAL: <span id="total"></span></p>
                                    <button type="button" class="botao-enviar" onclick="checkRequirements()">Enviar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </article>
        </section>
        <div class="social-media">
            <a href="#"><img class="icon" src="static/imagens/face.png"></a>
            <a href="#"><img class="icon" src="static/imagens/insta.png"></a>
            <a href="#"><img class="icon" src="static/imagens/piu.png"></a>
            <a href="#"><img class="icon" src="static/imagens/youtube.png"></a>
        </div>
        <footer class="rodape">
            <div class="itens">
                <div class="mapa">
                    <h1>Mapa do site</h1>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="sobre.html">Sobre</a></li>
                        <li><a href="cadastro.html">Cadastro</a></li>
                        <li><a href="pedido.html">Pedido</a></li>
                        <li><a>Promoções</a></li>
                        <li><a>Novidades</a></li>
                    </ul>
                </div>
                <div class="localizacao">
                    <h1>Localização</h1>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2995.4442751404495!2d-72.06203688491975!3d41.34269617926824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e60ec6dada383d%3A0x4277ef8f6bb06416!2sPano&#39;s+Pizza!5e0!3m2!1spt-BR!2sbr!4v1530750627392" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </footer>
        <footer class="final">
            <img class="copyright" src="static/imagens/panospizza.png">
        </footer>
    </body>
</html>
