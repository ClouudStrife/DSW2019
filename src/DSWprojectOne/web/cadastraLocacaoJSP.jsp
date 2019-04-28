<%-- 
    Document   : cadastraLocacao
    Created on : 21/04/2019, 15:23:16
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
            <%@ include file="components/header.html" %>
            <%@ include file="components/sideNav.html" %>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col s12 m8 l8 offset-m2 offset-l2">
                        <div class="card-panel">
                            <h4 class="card-title center-align"><f:message key="alugar_bicicleta_na"/> ${locadora.nome}</h4>
                            <form action="registraLocacao" method="get">
                                <input type="hidden" name="cnpj" value="${locadora.CNPJ}">
                                <div class="section">
                                    <div class="input-field">
                                        <input name="cpf" id="cpf" type="text" class="validate">
                                        <label for="cpf"><f:message key="digite_seu_cpf"/></label>
                                    </div>
                                </div>
                                <div class="section col s12 m6">
                                    <i class="material-icons prefix">date_range</i>
                                    <f:message key="data_locacao"/>:
                                    <div class="input-field">
                                        <input name="data" id="data" type="text" class="datepicker">
                                        <label for="data"><f:message key="escolher_data"/></label>
                                    </div>
                                </div>
                                <div class="section col s12 m6">
                                    <i class="material-icons">timer</i>
                                    <f:message key="horario_da_locacao"/>:
                                    <div class="input-field">
                                        <input name="hr" id="hr" type="text" class="timepicker">
                                        <label for="hr"><f:message key="escolher_horario"/></label>
                                    </div>
                                </div>
                                <br>
                                <div class="row center-align">
                                    <button href="#modal" class="btn center-align waves-effect waves-light red lighten-1 center-align modal-trigger" type="" name=""><f:message key="alugar"/></button>
                                </div>
                                <!-- Modal Structure -->
                                <div id="modal" class="modal">
                                    <div class="modal-content">
                                        <blockquote><h4><f:message key="atencao"/> !</h4></blockquote>
                                        <h6><span><f:message key="certeza_alugar"/> ${locadora.nome} ?</span></h6>
                                    </div>
                                    <div class="modal-footer">
                                        <button  class="btn waves-effect waves-effect btn-flat red lighten-2 white-text" type="submit" name="action"><f:message key="aceitar"/></button>
                                        <a href="#" class="btn modal-close waves-effect btn-flat red lighten-2 white-text"><f:message key="recusar"/></a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>




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
                <%@ include file="components/scriptsMaterialize.html" %> 
        </body>
    </html>
</f:bundle>