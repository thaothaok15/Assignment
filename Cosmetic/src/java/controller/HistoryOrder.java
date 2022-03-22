/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Order;
import model.OrderDetail;
import model.Profile;

/**
 *
 * @author Thanh Thao
 */
@WebServlet(name = "HistoryOrder", urlPatterns = {"/history"})
public class HistoryOrder extends HttpServlet {

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
            out.println("<title>Servlet HistoryOrder</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HistoryOrder at " + request.getContextPath() + "</h1>");
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
       HttpSession session = request.getSession();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAO dao = new DAO();
      Account account = (Account) session.getAttribute("acc");
     if(account != null ){
//       List<OrderDetail> list = dao.getOrderDetailByOrderID()
//       List<Order> list = dao.getOrderByAccountID(account.getProfileID());
//       request.setAttribute("listO", list);
        
       request.getRequestDispatcher("managerHistoryOrder.jsp").forward(request, response);
     }
// if (account != null && account.getRole()==1) {
//            List<Order> listOrders = new DAO().getAllOrders();
//            request.setAttribute("listOrders", listOrders);
//            request.getRequestDispatcher("managerHistoryOrder.jsp").forward(request, response);
//        } else {
//            List<Order> listOrders = new DAO().getOrderByAccountID(account.getAccountID());
//            request.setAttribute("listOrders", listOrders);
//             request.getRequestDispatcher("managerHistoryOrder.jsp").forward(request, response);
//        }
       
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
