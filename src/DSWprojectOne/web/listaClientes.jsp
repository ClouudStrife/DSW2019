<%-- 
    Document   : listaClientes
    Created on : 22/04/2019, 08:32:26
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
        <div class="container">
            <h3 class="center-align">Clientes cadastrados</h3>
            <div class="row">
                <div class="col s8 offset-s2">
                    <ul class="collection">
                        <li class="collection-item avatar">
                            <div class="row">
                                <div class="col s8">
                                    <i class="material-icons circle">account_circle</i>
                                    <span class="title">Nome</span>
                                    <p>Email <br>
                                        ...
                                    </p>  
                                </div>

                                <div class="col s4 center-align">
                                    <a class="btn-floating waves-effect waves-light red"><i class="material-icons">edit</i></a>
                                    <a class="btn-floating waves-effect waves-light red"><i class="material-icons">delete</i></a>
                                </div>             
                            </div>
                        </li> 
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
