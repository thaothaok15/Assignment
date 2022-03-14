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
import model.Categories;
import model.Product;

/**
 *
 * @author Thanh Thao
 */
@WebServlet(name = "LoadingProduct", urlPatterns = {"/update"})
public class UpdateProduct extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadingProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadingProduct at " + request.getContextPath() + "</h1>");
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
        Account a = (Account) session.getAttribute("acc");
//        if (a.getAdminID() != 1 || a == null) {
//            PrintWriter out = response.getWriter();
//            out.println("access denied");
//        } else { 
        String productID = request.getParameter("productID");
        DAO dao = new DAO();;       
        Product d = dao.getProductByID(productID); 
        List<Categories> listC = dao.getAllCategories();
       
        request.setAttribute("listC", listC);
        request.setAttribute("detail", d);      
        request.getRequestDispatcher("updateProduct.jsp").forward(request, response);
 //       }
        
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
        response.setContentType("text/html;charset=UTF-8");
         request.setCharacterEncoding("UTF-8");
         String productID= request.getParameter("id");
        String productName= request.getParameter("name");
        String imageLink= request.getParameter("image");
        String salePrice= request.getParameter("saleprice");
        String oldPrice= request.getParameter("oldprice");
        String status= request.getParameter("status");
        String quantity= request.getParameter("quantity");
        String description= request.getParameter("description");
        String CategoryID= request.getParameter("category");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        DAO dao = new DAO();
        dao.updateProduct(productID, productName, imageLink, oldPrice, salePrice, status, quantity, description, CategoryID);
        response.sendRedirect("manager");
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
