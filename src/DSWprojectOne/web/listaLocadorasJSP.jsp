<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                <h2 class="center-align"><f:message key="locadoras"/></h2>
                <br>
                <div class="row center-align">
                    <span>Buscar por cidade ?</span>
                    <div class="input-field inline">  
                        <form action="listarLocadoras" method="get">
                            <input name="cidade" id="cidade" type="text">       
                            </div>
                            <button class="btn-floating waves-effect waves-light red" type="submit"><i class="material-icons">search</i></button>
                        </form>
                    </div>
                    <c:if test="${empty requestScope.listaLocadoras}">
                        <h3 class="center-align"> <f:message key="nao_ha_locadoras"/>! </h3>
                    </c:if>
                    <c:if test="${!empty requestScope.listaLocadoras}">
                        <div class="row">
                            <c:forEach items="${requestScope.listaLocadoras}" var="locadora">

                                <div class="col s12 m6 l4">
                                    <div class="card hoverable">
                                        <div class="card-image">
                                            <img src="imgs/img3.jpg">
                                            <span class="card-title white-text">${locadora.nome}</span>
                                            <sec:authorize access="hasRole('ADMIN')">
                                                <a href="deletaLocadora?cnpj=<c:out value='${locadora.CNPJ}'/>" class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">delete</i></a>
                                                <a style="right:65px;" id="fabAtualzia"href="atualizaLocadora?cnpj=<c:out value='${locadora.CNPJ}'/>" class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">edit</i></a>
                                            </sec:authorize>
                                            <sec:authorize access="hasRole('USER')">
                                                <a href="chamaForm?cnpj=<c:out value='${locadora.CNPJ}'/>" class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">directions_bike</i></a>
                                            </sec:authorize>                              
                                        </div>
                                        <div class="card-content">
                                            <p> E-mail: ${locadora.email} </p>
                                            <p> <f:message key="cidade"/>: ${locadora.cidade} </p>
                                            <p> CNPJ: ${locadora.CNPJ} </p>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </c:if>
                </div>
                <%@ include file="components/scriptsMaterialize.html" %>        
        </body>
    </html>
</f:bundle>