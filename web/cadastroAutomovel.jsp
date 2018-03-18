<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="auto" scope="page" class="beans.Automovel" />

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
        <center>
            <p>
            <a href="Link?opcao=6">Página Principal</a>    
            <a href="Link?opcao=1">Cadastro Automovel</a>
            <a href="Link?opcao=2">Exibição de Automóveis</a>
            <a href="Link?opcao=3">Login</a>
            <a href="Link?opcao=4">Dados Cadastrados</a>
            <a href="Link?opcao=5">Projeto do Site</a>
            
            <p>
            <font face="Verdana" size="4"><b>
        <h3>Faça o cadastro de seu Carro</h3>
        </font>
        
        <p>
            <table border="0" celspacing="5" cellpadding="10">
            <form action="ServletAutomovel">
                <tr><td align="right">Placa:</td><td><input type="text" size="7" name="placa" /></td></tr>
                <tr><td align="right">Chassi:</td><td><input type="text" size="10" name="chassi" onkeypress='return SomenteNumero(event)' /></td></tr>
                <tr><td align="right">Fabricante:</td><td><input type="text" size="10" name="fabricante" /></td></tr>
                
                <tr><td align="right">Ano Fabricação:</td><td><select name="ano"> 
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
                
                <tr><td align="right">Numero de Portas:</td><td><input type="text" size="10" name="portas" onkeypress='return SomenteNumero(event)' /></td></tr>
                <tr><td>Relação de Opcionais:</td><td><input type="text" size="10" name="opcionais" /></td></tr>
                <tr><td>Quantidade em Estoque:</td><td><input type="text" size="10" name="estoque" onkeypress='return SomenteNumero(event)' /></td></tr>

                <tr><td><input type="submit" value="Cadastrar" /></td><td align="right"><input type="reset" value="limpar"></td></tr>
            </form>
            </table>
        </center>
    </body>
</html>
