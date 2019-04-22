<%-- 
    Document   : cadastraLocacao
    Created on : 21/04/2019, 15:23:16
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
            <h3 class="center-align">Alugar bicicleta na ${locadora.nome}</h3>
            <form action="registraLocacao" method="get">
                <input type="hidden" name="cnpj" value="${locadora.CNPJ}">
                <div class="row">
                    <div class="input-field col s6 offset-s3">
                        <input name="cpf" id="cpf" type="text" class="validate">
                        <label for="cpf">Digite seu CPF</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col s6">                
                        Data da locação:
                        <div class="input-field inline">
                            <input name="data" id="data" type="text" class="datepicker">
                            <label for="data">Escolher data</label>
                        </div>
                    </div>

                    <div class="col s6">                
                        Horário da locação:
                        <div class="input-field inline">
                            <input name="hr" id="hr" type="text" class="timepicker">
                            <label for="hr">Escolher horário</label>
                        </div>
                    </div>             
                </div>


                <div class="row center-align">
                    <button href="#modal" class="btn center-align waves-effect waves-light red lighten-1 center-align modal-trigger" type="" name="">Submit
                        <i class="material-icons right">send</i>
                    </button>
                </div>

                <!-- Modal Structure -->
                <div id="modal" class="modal">
                    <div class="modal-content">
                        <h4>Atenção !</h4>
                        <p>Tem certeza que deseja alugar 1 bicicleta na ${locadora.nome} ?</p>
                    </div>
                    <div class="modal-footer">
                        <button  class="btn waves-effect waves-green btn-flat" type="submit" name="action">Aceitar</button>
                        <a href="#" class="btn modal-close waves-red btn-flat">Recusar</a>
                    </div>
                </div>
            </form>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var elems = document.querySelectorAll('.timepicker');
                    var instances = M.Timepicker.init(elems, {twelveHour: false});
                });

                document.addEventListener('DOMContentLoaded', function () {
                    var elems = document.querySelectorAll('.datepicker');
                    var instances = M.Datepicker.init(elems, {format: 'yyyy-mm-dd'});
                });

                document.addEventListener('DOMContentLoaded', function () {
                    var elems = document.querySelectorAll('.modal');
                    var instances = M.Modal.init(elems, {});
                });
            </script>
            <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
    </body>
</html>
