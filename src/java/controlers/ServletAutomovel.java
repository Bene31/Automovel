//Arthur Lourenço Terra
//Lucas de Almeida Paula
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.Automovel;
import dao.AutomovelDao;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Arthur
 */
@WebServlet(name = "Automovel", urlPatterns = {"/ServletAutomovel"})
public class ServletAutomovel extends HttpServlet {
    AutomovelDao dao =  new AutomovelDao();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int opcao = Integer.parseInt(request.getParameter("opcao"));
        RequestDispatcher rd = null;
        
        
        if(opcao == 1)//cadastrar
        {                    
            // Instancia de automovel
            // Adiciona aos atributos do automovel os dados recuperados da sessão
   
            Automovel auto = new Automovel();
                    
            auto.setPlaca(request.getParameter("placa"));
            auto.setChassi(Integer.parseInt(request.getParameter("chassi")));
            auto.setFabricante(request.getParameter("fabricante"));
            auto.setAno(request.getParameter("ano"));
            auto.setMotor(request.getParameter("motor"));
            auto.setPortas(Integer.parseInt(request.getParameter("portas")));
            auto.setOpcionais(request.getParameter("opcionais"));
            auto.setEstoque(Integer.parseInt(request.getParameter("estoque")));

            // Grava o automovel na lista de automóveis do Dao
            dao.adicionarAutomovel(auto);
            // Redireciona para a pagina de exibicao dos dados cadastrados do automovel atraves deste servlet
            rd = request.getRequestDispatcher("ServletAutomovel?opcao=2");
        }
        
        if(opcao == 2)
        {
            // Instancia de lista de automoveis recebe os automoveis cadastrados
            ArrayList<Automovel> lista = dao.todosAutomoveis();
            HttpSession session = request.getSession(true);
            // Passa para a sessão a lista de automoveis cadastrados e a quantidade do estoque total
            session.setAttribute("automoveis", lista);
            session.setAttribute("quantidade", dao.quantidade);
            
            // Redireciona para a tela de ex
            rd = request.getRequestDispatcher("dadosCadastrados.jsp");
        }
        
        if(opcao == 3)//Remover
        {
            int chassi = Integer.parseInt(request.getParameter("chassi"));// Busca o automovel pelo chassi na sessão
            Automovel a = dao.consultaAutomovel(chassi);// Consulta o automovel na lista de automoveis
            dao.removerAutomovel(a);// Metodo do Dao para remover o automovel encontrado
            
            // Redireciona para a tela de automoveis cadastrados
            rd = request.getRequestDispatcher("ServletAutomovel?opcao=6");
        }
        
      /*  if(opcao == 4)//Alterar
        {
            int chassi = Integer.parseInt(request.getParameter("chassi"));
            Automovel a = dao.consultaAutomovel(chassi);
            HttpSession session = request.getSession();
            session.setAttribute("auto", a);
            
            rd = request.getRequestDispatcher("atualizar.jsp");
        }
        
        if(opcao == 5)//
        {
            Automovel auto = new Automovel();
                    
            auto.setPlaca(request.getParameter("placa"));
            auto.setChassi(Integer.parseInt(request.getParameter("chassi")));
            auto.setFabricante(request.getParameter("fabricante"));
            auto.setAno(request.getParameter("ano"));
            auto.setPortas(Integer.parseInt(request.getParameter("portas")));
            auto.setOpcionais(request.getParameter("opcionais"));
            auto.setEstoque(Integer.parseInt(request.getParameter("estoque")));

            dao.alterarAutomovel(auto);

            rd = request.getRequestDispatcher("ServletAutomovel?opcao=6");
        }
        */
        if(opcao == 6){
            ArrayList<Automovel> lista = dao.todosAutomoveis();
            HttpSession session = request.getSession(true);
            session.setAttribute("automoveis", lista);
            session.setAttribute("quantidade", dao.quantidade);
            
            rd = request.getRequestDispatcher("exibirAutomovel.jsp");
        }
        
        
        
        rd.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
