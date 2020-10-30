<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pano's Pizzaria - Main Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="static/css/style.css">
        <script src="static/bootstrap/js/bootstrap.js"></script>
        <script src="scripts/scripts.js"></script>
    </head>
    <body>
    
        <%@ include file="static/templates/header.html" %>
        
        <section>
            <!--
                PRIMARY CAROUSEL
            -->
			
			<article>
				<div class="main-carousel">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="static/imagens/fotopizza.jpg" alt="...">
								<div class="carousel-caption">
									TEXTO
								</div>
							</div>
							<div class="item">
								<img src="static/imagens/pizza2.jpg" alt="...">
								<div class="carousel-caption">
									TEXTO
								</div>
							</div>
							<div class="item">
								<img src="static/imagens/pizza3.jpg" alt="...">
								<div class="carousel-caption">
									TEXTO
								</div>
							</div>
						</div>

						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>

				<!--
					SECONDARY CAROUSEL
				-->

				<div class="secondary-carousel-row">
					<div class="box">
						<div class="secondary-carousel">
							<div class="carousel slide" data-ride="carousel">
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img src="static/imagens/pizza3.jpg" alt="...">
									</div>
									<div class="item">
										<img src="static/imagens/pizza2.jpg" alt="...">
									</div>
									<div class="item">
										<img src="static/imagens/pizza3.jpg" alt="...">
									</div>
								</div>
							</div>
						</div>
						<div class="texto">
							<h2>Promoção: </h2>
							<p>
								De segunda à quinta tele-entrega grátis!
							</p>
						</div>
					</div>

					<div class="box">
						<div class="secondary-carousel">
							<div class="carousel slide" data-ride="carousel">
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img src="static/imagens/pizza3.jpg" alt="...">
									</div>
									<div class="item">
										<img src="static/imagens/pizza2.jpg" alt="...">
									</div>
									<div class="item">
										<img src="static/imagens/pizza3.jpg" alt="...">
									</div>
								</div>
							</div>
						</div>
						<div class="texto">
							<h2>Novidades: </h2>
							<p>
								Adicionamos novos sabores ao cardápio, confira!
							</p>
						</div>
					</div>
				</div>
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