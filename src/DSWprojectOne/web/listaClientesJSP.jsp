<%-- 
    Document   : listaClientesJSP
    Created on : 27/04/2019, 15:21:41
    Author     : Guga Bot
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <%@ include file="components/header.html" %>
            <%@ include file="components/sideNav.html" %>
            <div class="container">
                <h3 class="center-align"><f:message key="clientes_cadastrados"/></h3>
                <div class="row">
                    <div class="col s10 offset-s1">
                        <ul>
                            <c:forEach items="${requestScope.listaCliente}" var="cliente">
                                <li class="card">
                                    <div class="card-content">
                                        <span class="card-title activator">${cliente.nome}<i class="material-icons right">more_vert</i></span>
                                        <div class="divider"></div>
                                        <div class="row valign-wrapper">
                                            <div class="col s8">
                                                <blockquote>${cliente.email}</blockquote>
                                            </div>
                                            <div class="col s4">
                                                <a class="secondary button red-text right" href="atualizaCliente?cpf=<c:out value='${cliente.CPF}' />" class="btn-floating waves-effect waves-light red"><i class="material-icons">edit</i></a>
                                                <a class="secondary button red-text right" href="deletaCliente?cpf=<c:out value='${cliente.CPF}' />" class="btn-floating waves-effect waves-light red"><i class="material-icons">delete</i></a> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4"><f:message key="detalhes"/><i class="material-icons right">close</i></span>
                                        <br>                                   
                                        <div class="row">
                                            <div class="col s6">
                                                <div class="col s12">
                                                    <b>CPF: </b><span>${cliente.CPF}</span>
                                                </div>
                                                <div class="col s12">
                                                    <b>Telefone: </b><span>${cliente.telefone}</span>
                                                </div>
                                            </div>
                                            <div class="col s6">
                                                <div class="col s12">
                                                    <b>Sexo: </b><span>${cliente.sexo}</span>
                                                </div>
                                                <div class="col s12">
                                                    <b>Nascimento: </b><span>${cliente.nasc}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li> 
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <%@ include file="components/scriptsMaterialize.html" %>
        </body>
    </html>
</f:bundle>
