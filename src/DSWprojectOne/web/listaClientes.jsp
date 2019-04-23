<%-- 
    Document   : listaClientes
    Created on : 22/04/2019, 08:32:26
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
        <div class="container">
            <h3 class="center-align"><f:message key="clientes_cadastrados"/></h3>
            <div class="row">
                <div class="col s10 offset-s1">
                    <ul class="collection">
                        <c:forEach items="${requestScope.listaCliente}" var="cliente">
                            <li class="collection-item z-depth-1">
                                <div class="row">
                                    <div class="col s8">
                                        <div class="row">
                                            <div class="col s7 ">
                                                <h4 class="">${cliente.nome}</h4>
                                                <h6>${cliente.email}<h6>                                                  
                                            </div>
                                            <div class="col s5">
                                                <h6><b>CPF: <br></b> ${cliente.CPF}</h6>
                                                <h6><b><f:message key="phone"/>: <br></b> ${cliente.telefone}</h6>
                                                <h6><b><f:message key="data_nascimento"/>: <br></b> ${cliente.nasc}</h6>
                                            </div>
                                        </div>                                       
                                    </div>

                                    <div class="col s4 center-align ">
                                        <a href="updateServlet" class="btn-floating waves-effect waves-light red"><i class="material-icons">edit</i></a>
                                        <a href="deleteClienteServlet?cpf=<c:out value='${cliente.CPF}' />"  class="btn-floating waves-effect waves-light red"><i class="material-icons">delete</i></a>
                                    </div>             
                                </div>
                            </li> 
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('.fixed-action-btn');
                var instances = M.FloatingActionButton.init(elems, {});
            });
        </script>
        <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
    </body>
</html>
</f:bundle>