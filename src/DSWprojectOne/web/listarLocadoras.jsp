<%-- 
    Document   : listarLocadoras
    Created on : 20/04/2019, 12:40:51
    Author     : Guga Bot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <h1 class="center-align"><f:message key="locadoras"/></h1>

        <c:if test="${empty requestScope.listaLocadoras}">
            <h3> <f:message key="nao_ha_locadoras"/>! </h3>
        </c:if>
        <c:if test="${!empty requestScope.listaLocadoras}">
            <div class="row">
                <c:forEach items="${requestScope.listaLocadoras}" var="locadora">

                    <div class="col s12 m4 l3">
                        <div class="card hoverable">
                            <div class="card-image">
                                <img src="https://materializecss.com/images/sample-1.jpg">
                                <span class="card-title white-text">${locadora.nome}</span>
                                <a href="chamaForm?cnpj=<c:out value='${locadora.CNPJ}'/>" class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                            </div>
                            <div class="card-content center-align">
                                <p> E-mail: ${locadora.email} </p>
                                <p> <f:message key="cidade"/>: ${locadora.cidade} </p>
                                <p> CNPJ: ${locadora.CNPJ} </p>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </body>
</html>
