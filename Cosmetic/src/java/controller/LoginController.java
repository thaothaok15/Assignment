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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Profile;

/**
 *
 * @author Thanh Thao
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
         request.getRequestDispatcher("Login.jsp").forward(request, response);
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
        String memory = request.getParameter("rem");
        DAO dao = new DAO();
        Account a = dao.login(username, password);
        // không có tài khoản
        if (a == null) {
            request.setAttribute("mess", "Tài khoản hoặc mật khẩu không chính xác");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            if(a.getRole() == -1){
            request.setAttribute("mess", "Tài khoản đã bị khóa");
            request.getRequestDispatcher("Login.jsp").forward(request, response); 
            }else{
                
            
            Profile profile = dao.getProfile(a.getProfileID());
            session.setAttribute("profile", profile);
            session.setAttribute("acc", a);
          //  request.getRequestDispatcher("homee").forward(request, response);
           Cookie user = new Cookie("user", username);
            Cookie pass = new Cookie("pass", password);
            Cookie rem = new Cookie("rem", memory);
            // if not click
            if(memory==null){
                //nguoi dung khong tich chuot vao remember me
                user.setMaxAge(0);
                pass.setMaxAge(0);
                rem.setMaxAge(0);
            } else{
                // nguoi dung co tich chuot > luu vao cookie
                user.setMaxAge(365*24*60*60);
                pass.setMaxAge(365*24*60*60);
                rem.setMaxAge(365*24*60*60);
            }
            response.addCookie(user);
            response.addCookie(pass);
            response.addCookie(rem); 
           response.sendRedirect("home");
            
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
