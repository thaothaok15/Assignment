/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author Thanh Thao
 */
public class SignUpController extends HttpServlet {

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
//       String username = request.getParameter("userName");
//       String password = request.getParameter("password");
//       String repassword = request.getParameter("repassword");
//       if(!password.equals(repassword)){
//           
//           response.sendRedirect("Home.jsp");
//       }else{
//           DAO dao = new DAO();
//           Account a = dao.checkAccountExist(username);
//           if(a == null){
//               dao.signup(username, password);
//               response.sendRedirect("home");
//           }else{
//               response.sendRedirect("Home.jsp");
//           }
//       }
//       
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
         HttpSession session = request.getSession();

              String username = request.getParameter("username");
       String password = request.getParameter("password");
       String repassword = request.getParameter("repassword");
       if(!password.equals(repassword)){
            request.setAttribute("mess", "M???t kh???u kh??ng ch??nh x??c");
          request.getRequestDispatcher("Signup.jsp").forward(request, response);
       }else{
           DAO dao = new DAO();
           Account a = dao.checkAccountExist(username);
           if(a == null){
               dao.signup(username, password);
               response.sendRedirect("login");
           }else{
                request.setAttribute("mess1", "T??i kho???n ???? t???n t???i");
               request.getRequestDispatcher("Signup.jsp").forward(request, response);
           }
       }
       
       
       
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
