<%-- 
    Document   : cadastroClienteJSP
    Created on : 18/04/2019, 02:51:55
    Author     : Guga Bot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <nav class="red darken-4">
                <div class="nav-wrapper">
                    <a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="sass.html">Sass</a></li>
                        <li><a href="badges.html">Components</a></li>
                        <li><a href="collapsible.html">JavaScript</a></li>
                    </ul>
                </div>
            </nav>
            <ul id="slide-out" class="sidenav">
                <h4  class="center-align">Menu</h4>
                <li><a href="#!"><i class="material-icons">face</i>Cadastrar cliente</a></li>
                <li><a href="cadastroLocadoraJSP.jsp"><i class="material-icons">home</i>Cadastrar locadora</a></li>
                <li><a href="#!"><i class="material-icons">directions_bike</i>Cadastrar locação   </a></li>
                <li><div class="divider"></div></li>
                <li><a class="subheader">Subheader</a></li>
                <li><a href="#"><i class="material-icons">list</i>Listar locadoras</a></li>
            </ul>

            <div class="container">
                <div class="section">
                    <h3 class="center-align">Cadastro Cliente</h3>
                </div>
                <div class="divider"></div>
                <br>
                <div class="section">
                    <form action="insereCliente" method="get">
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="nome" id="first_name" type="text" class="validate">
                                <label for="first_name">Nome</label>
                            </div>
                            <div class="input-field col s6">
                                <input  name="email" placeholder="email@email.com" id="email" type="text" class="validate">
                                <label for="email">Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input name="senha" id="password" type="password" class="validate">
                                <label for="password">Senha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="telefone" placeholder="(DDD) 9999-9999" id="phone" type="tel" class="validate">
                                <label for="phone">Telefone</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="cpf" id="cpf" type="text" class="validate">
                                <label for="cpf">CPF</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="nasc" id="birthDate" type="text" class="datepicker">
                                <label for="birthDate">Data de nascimento</label>
                            </div>
                            <div class="input-field col s6">
                                <select name="sexo">
                                    <option value="" disabled selected>Selecione sua opção</option>
                                    <option value="1">M</option>
                                    <option value="2">F</option>
                                </select>
                                <label>Sexo</label>
                            </div>
                        </div>
                        <div class="row center-align">
                            <button class="btn center-align waves-effect waves-light red lighten-1 center-align" type="submit" name="action">Submit
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('select');
                var instances = M.FormSelect.init(elems, {});
            });

            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('.datepicker');
                var instances = M.Datepicker.init(elems, { format: 'yyyy-mm-dd' });
            });

            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('.sidenav');
                var instances = M.Sidenav.init(elems, {});
            });
        </script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
    </body>
</html>
