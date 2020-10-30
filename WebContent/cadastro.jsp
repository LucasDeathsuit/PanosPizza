<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Cadastro</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="static/css/style.css">
        <script src="static/bootstrap/js/bootstrap.js"></script>
        <script src="scripts/scripts.js"></script>
    </head>
    <body>
    
        <%@ include file="static/templates/header.html" %>
        
        <section class="jumbotron">
			<article>
				<h2 class="titulo">Cadastro: </h2>
				<form class="form-group">
					<label class="required" for="name">Nome: </label><br />
					<input required class="input form-control" name="nome" type="text"/><br />
					<span id="name_validation" class="error_message"></span>    
					<label class="required" for="email">Endereço: </label><br />
					<input required class="input form-control" name="nome" type="text"/><br />
					<span id="email_validation" class="error_message"></span>
					<label class="required" for="email">Telefone: </label><br />
					<input required class="input form-control" name="nome" type="text"/><br />
					<span id="email_validation" class="error_message"></span>
					<label class="required" for="email">CEP: </label><br />
					<input required class="input form-control" name="nome" type="text"/><br />
					<span id="email_validation" class="error_message"></span>
					<label class="required" for="message">Mensagem: </label><br />
					<textarea class="input form-control" name="nome"></textarea><br />
					<span id="message_validation" class="error_message"></span>
					<input class="button" type="submit" value="OK" />
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
