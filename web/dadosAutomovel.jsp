<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%-- 
    Document   : dadosAutomovel
    Created on : 19/11/2017, 12:47:42
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="auto" scope="session" class="beans.Automovel" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dados do Automovel</h1>
        <p>
            Placa: <b><jsp:getProperty name="auto" property="placa" /></b><br><br>
            Chassi: <b><jsp:getProperty name="auto" property="chassi" /></b><br><br>
            Fabricante: <b><jsp:getProperty name="auto" property="fabricante" /></b><br><br>
            Ano Fabricação: <b><jsp:getProperty name="auto" property="ano" /></b><br><br>
            Motorização: <b><jsp:getProperty name="auto" property="motor" /></b><br><br>
            Numero de Portas: <b><jsp:getProperty name="auto" property="portas" /></b><br><br>
            Relação de Opcionais: <b><jsp:getProperty name="auto" property="opcionais" /></b><br><br>
            Quantidade em Estoque: <b><jsp:getProperty name="auto" property="estoque" /></b><br><br>
    </body>
</html>
