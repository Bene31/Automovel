    <%--Arthur Louren�o Terra--%>
    <%--Lucas de Almeida Paula--%>
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
            <a href="Link?opcao=6">P�gina Principal</a>    
            <a href="Link?opcao=1">Cadastro Automovel</a>
            <a href="Link?opcao=2">Exibi��o de Autom�veis</a>
            <a href="Link?opcao=3">Login</a>
            <a href="Link?opcao=4">Dados Cadastrados</a>
            <a href="Link?opcao=5">Projeto do Site</a>
            
        <p>
            <font face="Verdana" size="3">
            <b>Bem Vindo usuario <%= session.getAttribute("usuario")%></b>
            </font>
            
        <p>
            <font face="Arial" size="3">
            Uma das mais importantes concession�rias de autom�veis de Juiz de Fora.<BR> 
            Fundada por Arthur Louren�o Terra e Lucas de Almeida Paula.<BR> 
            Este site tem como objetivo fazer o controle dos autom�veis de nossa concession�ria.<BR>
            Atualmente exportamos nossos ve�culos para todo o estado de Minas Gerais e algumas cidades do estado do Rio de Janeiro pr�ximos � cidade.<BR><BR>
            </font>
            
        <p>
            <%@include file="cliente.jsp" %>
        <BR>     
            <%@include file="rodape.jsp"%>
            
    
