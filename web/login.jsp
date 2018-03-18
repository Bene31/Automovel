<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%-- 
    Document   : login
    Created on : 16/11/2017, 21:28:29
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style type="text/css">
            body{
                background-image: url(http://st.gde-fon.com/wallpapers_original/400452_avto_mashiny_tyuning_zakat_nebo_oblaka_Chevrolet_1920x1206_www.Gde-Fon.com.jpg);
                color: white;
            }
        </style>
        
    </head>
    <body>
        <center>
        <font face="Verdana" size="6"><b>
        <h3>Login</h3>
        <p>
        <form action="processaLogin.jsp">
            Login: <input type="text" size="30" id="login" name="pUser"><p>
            Senha: <input type="password" size="30" id="senha" name="pSenha"><p>
            <input type="submit" value="Login">
            <input type="reset" value="Cancelar">
        </form>
        </font>
    </center>
    </body>
</html>
