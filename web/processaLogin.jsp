<%--Arthur Lourenço Terra--%>
<%--Lucas de Almeida Paula--%>
<%

    String u = request.getParameter("pUser");
    String s = request.getParameter("pSenha");
    
    if ((u.equals("bene")) && (s.equals("123456"))){
        session.setAttribute("usuario", u);
        session.setAttribute("nome", s);
        
        response.sendRedirect("index.jsp");
    } else 
    
    if ((u.equals("edwward")) && (s.equals("yugioh"))){
        session.setAttribute("usuario", u);
        session.setAttribute("nome", s);
        
        response.sendRedirect("index.jsp");
    } else
        
    if ((u.equals("scamander")) && (s.equals("a1b2c3d4"))){
        session.setAttribute("usuario", u);
        session.setAttribute("nome", s);
        
        response.sendRedirect("index.jsp");
    }
    
    else {
        response.sendRedirect("erroLogin.html");
    }
    
%>