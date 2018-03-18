<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%-- 
    Document   : dadosCadastrados
    Created on : 19/11/2017, 12:55:20
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="auto" scope="session" class="beans.Automovel" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style type="text/css">
            body{
                background-color: lightgray;
                color: black;
            }
                        
            header, div {
                box-sizing: border-box;
            }

            header {
                position: relative;
                width: 1220px;
                max-width: 90%;
                height: 120px;
                top: 0px;
                right: 0px;
                left: 0px;
                margin: 0px auto;

             }

            #logo {
                position: absolute;
                width: 1400px;
                top: 0px;  
                bottom: 0px;
                left: -100px;

                border: 1px solid black;

                background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIY0js0tt7Y5A_3xFtdvP_SKX4DHLjvS5EoKum3MS0e_nebGExBg);
        </style>
        
    </head>
    
    <header>
        <div id="logo"></div>
    </header>
    
    <body>
        <center>
        <p>
            <a href="Link?opcao=6">Página Principal</a>    
            <a href="Link?opcao=1">Cadastro Automovel</a>
            <a href="Link?opcao=2">Exibição de Automóveis</a>
            <a href="Link?opcao=3">Login</a>
            <a href="Link?opcao=4">Dados Cadastrados</a>
            <a href="Link?opcao=5">Projeto do Site</a>
        <p>
        <h3>Dados Cadastrados!</h3>
        <p>
            <font color="#000080"><b>
            Placa: <%= request.getParameter("placa") %><p>
            Chassi: <%= request.getParameter("chassi") %><p>
            Fabricante: <%= request.getParameter("fabricante") %><p>
            Ano Fabricação: <%= request.getParameter("ano") %><p>
            Motorização: <%= request.getParameter("motor") %><p>
            Numero Portas: <%= request.getParameter("portas") %><p>
            Opcionais: <%= request.getParameter("opcionais") %><p>
            Estoque: <%= request.getParameter("estoque") %><p>
                </font></b>
                
                <a href="exibirAutomovel.jsp">Exibição de Automóveis</a>
            
        </center>
    </body>
</html>
