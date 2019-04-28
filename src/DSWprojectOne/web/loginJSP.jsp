<%-- 
    Document   : loginJSP
    Created on : 27/04/2019, 21:42:38
    Author     : Guga Bot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <form class="" method="post" action="/login">
                <h2 class="form-signin-heading">Favor, faça o login</h2>
                <p>
                    <label for="username" class="sr-only">Login do Usuário</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Login do Usuário" required="" autofocus="">
                </p>
                <p>
                    <label for="password" class="sr-only">Senha</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Senha" required="">
                </p>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
            </form>
        </div>
    </body>
</html>
