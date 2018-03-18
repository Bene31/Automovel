<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <h3>Automoveis Cadastrados</h3>
        <p>
            <table border="1">
                <tr>
                    <th>Placa</th>
                    <th>Chassi</th>
                    <th>Fabricante</th>
                    <th>Ano Fabricação</th>
                    <th>Motorização</th>
                    <th>Numero de Portas</th>
                    <th>Opcionais</th>
                    <th>Estoque</th>
                    <th>Operação</th>
                </tr>
                
               
                
                <c:forEach var="auto" items="${sessionScope.automoveis}">
                    <tr>
                        <td>${auto.placa}</td>
                        <td>${auto.chassi}</td>
                        <td>${auto.fabricante}</td>
                        <td>${auto.ano}</td>
                        <td>${auto.motor}</td>
                        <td>${auto.portas}</td>
                        <td>${auto.opcionais}</td>
                        <td>${auto.estoque}</td>
                        <td> <a href="ServletAutomovel?opcao=3&chassi=${auto.chassi}"> Remover</a>
                            <%--&nbsp;<a href="ServletAutomovel?opcao=4&chassi=${auto.chassi}"> Alterar</a> --%>                           
                        </td>
                    </tr>
                </c:forEach>
                
            </table>
        
        Quantidade: ${sessionScope.quantidade}
        </center>
    </body>
</html>
