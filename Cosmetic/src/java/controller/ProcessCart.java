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
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author Thanh Thao
 */
@WebServlet(name = "ProcessCart", urlPatterns = {"/process"})
public class ProcessCart extends HttpServlet {

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
            out.println("<title>Servlet ProcessCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessCart at " + request.getContextPath() + "</h1>");
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
         processRequest(request, response);
//        HttpSession session = request.getSession();
//        Cart cart = null;
//        Object o = session.getAttribute("cart");
//        // in the cart
//        if (o != null) {
//            cart = (Cart) o;
//            // null in the cart
//        } else {
//            cart = new Cart();
//        }
//        String num_raw = request.getParameter("num").trim();
//        String id_raw = request.getParameter("id");
//        int id, num;
//        try {
//            id = Integer.parseInt(id_raw);
//            num = Integer.parseInt(num_raw);
//            if ((num == -1) && (cart.getQuantityByID(id) <= 1)) {
//                cart.removeItem(id);
//            } else {                
//                Item t = new Item();
//                DAO dao = new DAO();
//                Product p = dao.getProductByID(id_raw);
//                double price = p.getPrice();
//
//                if ((num != -1 )&& ((p.getQuantity() <= cart.getQuantityByID(id))) ) {                  
//                  num = 0;
//                } else{
//                t = new Item(p, num, price);
//                    cart.addItem(t);
//                }
//            }
//        } catch (NumberFormatException e) {
//        }
//
//        List<Item> list = cart.getItems();
//        session.setAttribute("cart", cart);
//        session.setAttribute("size", list.size());
//        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
        Cart cart = null;
        Object o = session.getAttribute("cart");
        // in the cart
        if (o != null) {
            cart = (Cart) o;
            // null in the cart
        } else {
            cart = new Cart();
        }
        int id = Integer.parseInt(request.getParameter("id"));
        cart.removeItem(id);

        List<Item> list = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("size", list.size());
        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
