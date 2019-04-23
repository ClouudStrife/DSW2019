<%-- 
    Document   : cadsatroLocadoraJSP
    Created on : 18/04/2019, 11:09:01
    Author     : Guga Bot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <div class="section">
                    <h3 class="center-align"><f:message key="cadastro_locadora"/></h3>
                </div>
                <div class="divider"></div>
                <br>
                <div class="section">
                    <form action="insereLocadora" method="get"> 
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="nome" id="first_name" type="text" class="validate">
                                <label for="first_name"><f:message key="nome"/></label>
                            </div>
                            <div class="input-field col s6">
                                <input name="email" placeholder="email@email.com" id="email" type="text" class="validate">
                                <label for="email">E-mail</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input name="senha" id="password" type="password" class="validate">
                                <label for="password"><f:message key="senha"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="cnpj" id="cnpj" type="text" class="validate">
                                <label for="cpf">CNPJ</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="cidade" id="cidade" type="text" class="validate">
                                <label for="cpf"><f:message key="cidade"/></label>
                            </div>
                        </div>
                        <div class="row center-align">
                            <button class="btn center-align waves-effect waves-light red lighten-1 center-align" type="submit" name="action"><f:message key="submit"/>
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
                var instances = M.Datepicker.init(elems, {});
            });

            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('.sidenav');
                var instances = M.Sidenav.init(elems, {});
            });
        </script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
    </body>
</html>
</f:bundle>