/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DBAccount;

/**
 *
 * @author Thanh Thao
 */
public class SignupController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignupController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupController at " + request.getContextPath() + "</h1>");
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
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/Signup.jsp");
        dispatcher.forward(request, response);
        //processRequest(request, response);
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = "";
        String password = "";
        String repassword = "";
        String Fname = "";
        String Lname = "";
        boolean empty = false;
        if (request.getParameter("username") != null) {
            username = request.getParameter("username");
            if (username.equals("")) {
                empty = true;
            }
        } else {
            empty = true;
        }
        if (request.getParameter("password") != null) {
            password = request.getParameter("password");
            if (password.equals("")) {
                empty = true;
            }
        } else {
            empty = true;
        }
        if (request.getParameter("repassword") != null) {
            repassword = request.getParameter("repassword");
            if (repassword.equals("")) {
                empty = true;
            }
        } else {
            empty = true;
        }
        if (request.getParameter("Fname") != null) {
            Fname = request.getParameter("Fname");
            if (Fname.equals("")) {
                empty = true;
            }
        } else {
            empty = true;
        }
        if (request.getParameter("Lname") != null) {
            Lname = request.getParameter("Lname");
            if (Lname.equals("")) {
                empty = true;
            }
        } else {
            empty = true;
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/Signup.jsp");
        if (empty) {
            String error = "Không được bỏ trống bất kỳ thông tin nào!";
            request.setAttribute("error", error);
            dispatcher.forward(request, response);
        } else {
            DBAccount DBA = new DBAccount();
            boolean exist = DBA.checkExistWithUsername(username);
            if (exist) {
                String error = "Tên đăng nhập đã tồn tại!";
                request.setAttribute("error", error);
                dispatcher.forward(request, response);
            } else {
                if (!password.equals(repassword)) {
                    String error = "Mật khẩu không khớp";
                    request.setAttribute("error", error);
                    dispatcher.forward(request, response);
                } else {
                    DBA.addAcount(username, password, Fname, Lname);
                    String error = "Đăng ký thành công";
                    request.setAttribute("error", error);
                    dispatcher.forward(request, response);
                }
            }

        }
//        processRequest(request, response);
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
