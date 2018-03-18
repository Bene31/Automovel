<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : atualizar
    Created on : 27/11/2017, 09:46:11
    Author     : Arthur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="auto" scope="session" class="beans.Automovel" />
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
        <p>
            <a href="Link?opcao=6">Página Principal</a>    
            <a href="Link?opcao=1">Cadastro Automovel</a>
            <a href="Link?opcao=2">Exibição de Automóveis</a>
            <a href="Link?opcao=3">Login</a>
            <a href="Link?opcao=4">Dados Cadastrados</a>
            <a href="Link?opcao=5">Projeto do Site</a>
        <p>
        <h3>Alteração de Automovel</h3>
        <p>
            <table border="0" celspacing="5" cellpadding="10">
            <form name="form1" action="ServletAutomovel" method="post" id="f" onsubmit="SomenteNumero(event)">
                <tr><td align="right">Placa:</td><td><input type="text" size="7" name="placa" value="${auto.placa}" /></td></tr>
                <tr><td align="right">Chassi:</td><td><input type="text" size="20" name="chassi" value="${auto.chassi}" readonly onkeypress='return SomenteNumero(event)' /></td></tr>
                <tr><td align="right">Fabricante:</td><td><input type="text" size="10" name="fabricante" value="${auto.fabricante}" /></td></tr>
                
                <tr><td align="right">Ano Fabricação:</td><td><select name="ano" value="${auto.ano}"> 
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                </select></td></tr>
                <input type="hidden" value="1" name="opcao">
                
                <tr><td align="right">Motorização:</td><td> 
                <input type="radio" name="motor" value="1.0" checked="checked">1.0<BR> 
                <input type="radio" name="motor" value="1.4">1.4<BR>
                <input type="radio" name="motor" value="1.6">1.6<BR>
                <input type="radio" name="motor" value="2.0">2.0<BR>
                </td></tr>
                
                <tr><td align="right">Numero de Portas:</td><td><input type="text" size="10" name="portas" value="${auto.portas}" onkeypress='return SomenteNumero(event)' /></td></tr>
                <tr><td>Relação de Opcionais:</td><td><input type="text" size="10" name="opcionais" value="${auto.opcionais}" /></td></tr>
                <tr><td>Numero de Estoque:</td><td><input type="text" size="10" name="estoque" value="${auto.estoque}" onkeypress='return SomenteNumero(event)' /></td></tr>
                
                <tr><td colspan="2"><input type="submit" value="Alterar" /></td></tr>
            </form>
            </table>
    </body>
</html>
