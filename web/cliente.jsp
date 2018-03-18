<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%-- 
    Document   : cliente
    Created on : 24/11/2017, 13:11:07
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script language='JavaScript'>
    function SomenteNumero(e){
        var tecla=(window.event)?event.keyCode:e.which;
        
        if((tecla>47 && tecla<58)) return true;
        else{
            if(tecla == 8 || tecla == 0) return true;
            else return false;
        }
    }
    
</script>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        
        <style type="text/css">
            #f{color: black;}
        </style>
        
    </head>
    <body>
        <center>
        <h3>Formulario</h3>
        <p>
            <form name="form1" action="resultadoForm.jsp" method="post" id="f" onsubmit="SomenteNumero(event)">
                Dados Pessoais<BR><BR>
                Nome: <input type="text" size="20" name="nome" required="required">
                CPF(Somente Numeros): <input type='text' name="cpf" size='10' value='' required='required' onkeypress='return SomenteNumero(event)'><BR><BR>
                Email: <input type="text" size="20" name="email" required="required">
                Celular: <input type="text" size="20" name="celular" required="required" onkeypress='return SomenteNumero(event)'><BR><BR>
                
                <div>Tenho Interesse em:<BR>
                    <input type="radio" name="interesse" value="Agendar Test Drive" checked="checked">Agendar Test Drive
                    <input type="radio" name="interesse" value="Agendamento de Serviços">Agendamento de serviços<BR>
                    <input type="radio" name="interesse" value="Preços e Condições">Preços e Condições
                    <input type="radio" name="interesse" value="Peças">Peças<BR>
                    <input type="radio" name="interesse" value="Seminovos">Seminovos
                    <input type="radio" name="interesse" value="Outras Solicitações">Outras Solicitações<BR>
                <BR></div>
                
                <div>Quero receber Contato por <BR>
                    <input type="checkbox" name="contato" value="celular" />Celular<BR>
                    <input type="checkbox" name="contato" value="email" />Email<BR><BR>
                </div>
                <input type="submit" value="enviar">
            </form>
    </body>
</html>
