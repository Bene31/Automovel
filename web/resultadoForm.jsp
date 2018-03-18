<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%-- 
    Document   : resultadoForm
    Created on : 24/11/2017, 13:21:49
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
        <h1>Formulário Realizado com Sucesso!</h1>
        <p>
            Obrigado <b><%= request.getParameter("nome")%></b>, de CPF: <b><%= request.getParameter("cpf")%></b> por preencher nosso formulário.
        <p>
             Celular: <b><%= request.getParameter("celular")%></b> 
        <p>     
             Email: <b><%= request.getParameter("email")%></b>
        <p>
            Entraremos em contato pelo <b><%= request.getParameter("contato") %></b>
        <p>    
            para marcarmos um horário para a opção:  <b><%= request.getParameter("interesse") %></b>
            
            
            
        <p>
            <a href="index.jsp">Retornar</a>
        </center>
    </body>
</html>
