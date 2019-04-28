<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<f:bundle basename="i18n.messages">
    <html>
        <head>
            <!--Import Google Icon Font-->
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <!--Import materialize.css-->
            <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <div class="">
                <%@ include file="components/header.html" %>
                <%@ include file="components/sideNav.html" %>
                <div class="container">
					<p id="erro"></p>
                    <div class="section white">
                        <div class="row container">
                            <h2 class="header">Locadora DSW1</h2>
                            <p class="grey-text text-darken-3 lighten-3">Este site é produto do primeiro trabalho de DSW utilizando Servlets, JSP e JDB + Spring framework</p>
                            <p><blockquote>Utilizando Materialize para o design</blockquote></p>
                        </div>
                    </div>
                    <div class="parallax-container">
                        <div class="parallax"><img src="imgs/bikeBG.jpg"></div>
                    </div>
                    <div class="section white">
                        <div class="row container">
                            <h2 class="header">O que foi implementado</h2>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Requisito</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>CRUD CLIENTE</td>
                                        <td>Feito</td>
                                    </tr>
                                    <tr>
                                        <td>CRUD LOCADORA</td>
                                        <td>Feito</td>
                                    </tr>
                                    <tr>
                                        <td>SISTEMA LOGIN</td>
                                        <td>Feito</td>
                                    </tr>
                                    <tr>
                                        <td>CADASTRO LOCAÇÃO</td>
                                        <td>Feito</td>
                                    </tr>
                                    <tr>
                                        <td>LISTAGEM LOCADORAS</td>
                                        <td>Feito</td>
                                    </tr>
                                    <tr>
                                        <td>LISTAGEM POR CIDADE</td>
                                        <td>Feito</td>
                                    </tr>
                                    <tr>
                                        <td>LISTAGEM DE LOCAÇÕES</td>
                                        <td>NÃ£o</td>
                                    </tr>
                                    <tr>
                                        <td>VALIDAÇÃO DE ERROS</td>
                                        <td>NÃ£o</td>
                                    </tr>
                                    <tr>
                                        <td>INTERNACIONALIZAÇÃO</td>
                                        <td>Parcialmente feito</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="parallax-container">
                        <div class="parallax"><img src="imgs/bikeBG2.jpg"></div>
                    </div>
                </div>

            </div>
            <%@ include file="components/scriptsMaterialize.html" %>
            <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
        </body>
		<script>
			var url_string = window.location.href;
			var url = new URL(url_string);
			var c = url.searchParams.get("erro");
			document.getElementById("erro").innerHTML = "Ocorreu um erro: " + c;
		</script>
    </html>
</f:bundle>