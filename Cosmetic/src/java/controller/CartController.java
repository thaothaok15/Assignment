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
import model.Categories;
import model.Item;
import model.Product;

/**
 *
 * @author Thanh Thao
 */
@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

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
       request.getRequestDispatcher("cart.jsp").forward(request, response);
       
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
        session.setAttribute("size", 0);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        // in the cart
        if (o != null) {
            cart = (Cart) o;
            // null in the cart
        } else {
            cart = new Cart();
        }

        String num_raw = request.getParameter("num");
        String id_raw = request.getParameter("productID");
        int num,id;
       
        try {
            Item t = new Item();
            num = Integer.parseInt(num_raw);
            id = Integer.parseInt(id_raw);
            DAO dao = new DAO();
            Product p = dao.getProductByID(id_raw);
            double price = p.getPrice();            
           
                              
                    t = new Item(p, num, price);
                    cart.addItem(t);
                
        } catch (Exception e) {
            num = 1;
        }
        List<Item> list = cart.getItems();
         DAO dao = new DAO();
        List<Categories> list2 = dao.getAllCategories();

        request.setAttribute("listC", list2);
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
