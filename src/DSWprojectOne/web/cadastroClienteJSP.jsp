<%-- 
    Document   : cadastroClienteJSP
    Created on : 18/04/2019, 02:51:55
    Author     : Guga Bot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <h3 class="center-align"><f:message key="cadastro_cliente"/></h3>
                </div>
                <div class="divider"></div>
                <br>
                <div class="section">
                    <c:if test="${cliente != null}">
                        <form action="updateClienteServlet" method="post">
                        </c:if>
                        <c:if test="${cliente == null}">
                            <form action="insereCliente" method="get">
                            </c:if>   
                            <div class="row">
                                <div class="input-field col s6">
                                    <c:if test="${cliente != null}">
                                        <input name="nome" id="first_name" type="text" class="validate" value="${cliente.nome}">
                                        <label for="first_name"><f:message key="nome"/></label>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <input name="nome" id="first_name" type="text" class="validate">
                                        <label for="first_name"><f:message key="nome"/></label>
                                    </c:if>
                                </div>
                                <div class="input-field col s6">
                                    <c:if test="${cliente != null}">
                                        <input  name="email" placeholder="email@email.com" id="email" type="text" class="validate" value="${cliente.email}">
                                        <label for="email">E-mail</label>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <input  name="email" placeholder="email@email.com" id="email" type="text" class="validate">
                                        <label for="email">E-mail</label>
                                    </c:if>
                                </div>
                            </div>
                            <div class="row">                           
                                <div class="input-field col s12">
                                    <c:if test="${cliente != null}">
                                        <input name="senha" id="password" type="password" class="validate">
                                        <label for="password"><f:message key="nova_senha"/></label>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <input name="senha" id="password" type="password" class="validate">
                                        <label for="password"><f:message key="senha"/></label>
                                    </c:if>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <c:if test="${cliente != null}">
                                        <input name="telefone" placeholder="(DDD) 9999-9999" id="phone" type="tel" class="validate" value="${cliente.telefone}">
                                        <label for="phone"><f:message key="telefone"/></label>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <input name="telefone" placeholder="(DDD) 9999-9999" id="phone" type="tel" class="validate">
                                        <label for="phone"><f:message key="telefone"/></label>
                                    </c:if>
                                </div>
                                <div class="input-field col s6">
                                    <c:if test="${cliente != null}">
                                        <input name="cpf" id="cpf" type="text" class="validate" value="${cliente.CPF}">
                                        <label for="cpf">CPF</label>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <input name="cpf" id="cpf" type="text" class="validate">
                                        <label for="cpf">CPF</label>
                                    </c:if>                              
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s6">
                                    <c:if test="${cliente != null}">
                                        <input name="nasc" id="birthDate" type="text" class="datepicker" value="${cliente.nasc}">
                                        <label for="birthDate"><f:message key="data_nascimento"/></label>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <input name="nasc" id="birthDate" type="text" class="datepicker">
                                        <label for="birthDate"><f:message key="data_nascimento"/></label>
                                    </c:if>
                                </div>
                                <div class="input-field col s6">
                                    <c:if test="${cliente != null}">
                                        <select name="sexo">
                                            <option value="${cliente.sexo}" disabled selected>${cliente.sexo}</option>
                                            <option value="M">M</option>
                                            <option value="F">F</option>
                                        </select>
                                    </c:if>
                                    <c:if test="${cliente == null}">
                                        <select name="sexo">
                                            <option value="" disabled selected><f:message key="selecione_sua_opcao"/></option>
                                            <option value="1">M</option>
                                            <option value="2">F</option>
                                        </select>
                                    </c:if>
                                    <label><f:message key="sexo"/></label>
                                </div>
                            </div>
                            <div class="row center-align">
                                <c:if test="${cliente != null}">
                                    <button class="btn center-align waves-effect waves-light red lighten-1 center-align" type="submit" name="action"><f:message key="atualizar"/>
                                        <i class="material-icons right">send</i>
                                    </button>
                                </c:if>
                                <c:if test="${cliente == null}">
                                    <button class="btn center-align waves-effect waves-light red lighten-1 center-align" type="submit" name="action"><f:message key="cadastrar"/>
                                        <i class="material-icons right">send</i>
                                    </button>
                                </c:if>
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
                var instances = M.Datepicker.init(elems, {format: 'yyyy-mm-dd'});
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