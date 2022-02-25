/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DBProduct;

/**
 *
 * @author Thanh Thao
 */
public class UpdateController extends HttpServlet {
    private int id;
    private  Product product;
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
            out.println("<title>Servlet UpdateController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>update" + request.getContextPath() + "</h1>");
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
        this.id = Integer.parseInt(request.getParameter("id").toString());
        DBProduct DBP = new DBProduct();
        this.product = DBP.getProductWitdID(this.id);
        request.setAttribute("product", this.product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Update.jsp");
        dispatcher.forward(request, response);
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
        String err = "";
        //
        String productName = "";
        if (!request.getParameter("name").toString().equals("")) {
            productName = request.getParameter("name").toString();
        } else {
            err = err + "Tên Sản Phẩm ";
        }

//        processRequest(request, response);
        int Quantity = 0;
        if (!request.getParameter("quantity").equals("")) {
            try {
                Quantity = Integer.parseInt(request.getParameter("quantity").toString());
            } catch (Exception e) {
                err = err + "Số lượng ";
            }
        } else {
            err = err + "Số lượng ";
        }
        //
        double Price = 0;
        if (!request.getParameter("price").equals("")) {
            try {
                Price = Double.parseDouble(request.getParameter("price").toString());
            } catch (Exception e) {
                err = err + "Giá ";
            }
        } else {
            err = err + "Giá ";
        }
        //
        String trademark = "";
        if (!request.getParameter("trademark").equals("")) {
            trademark = request.getParameter("trademark").toString();
        } else {
            err = err + "Tên thương hiệu ";
        }
        //
        String imageLink = "";
        if (!request.getParameter("image").equals("")) {
            imageLink = request.getParameter("image").toString();
        } else {
            err = err + "Tên ảnh của sản phẩm ";
        }
        if (err.equals("")) {
            imageLink = "images/" + imageLink;
            DBProduct DBP = new DBProduct();
            DBP.updateProductWitdID(this.id, productName, Quantity, Price, imageLink, trademark);
            this.product = new Product(this.id, productName, Quantity, Price, imageLink, trademark);
        } else {
            err = err + "không được rỗng và không được nhập sai định dạng";
        }
        request.setAttribute("err", err);
        request.setAttribute("product", this.product);
        RequestDispatcher dispartcher = request.getRequestDispatcher("/pages/Update.jsp");
        dispartcher.forward(request, response);
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
