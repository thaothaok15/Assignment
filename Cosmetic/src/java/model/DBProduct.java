/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Thanh Thao
 */
public class DBProduct {
    private DBContext db;
    private Connection con;

    public DBProduct() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> listProduct = new ArrayList<>();
        try {
            String sql = "Select * from product";
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getInt("productID"), rs.getString("productName"), rs.getInt("Quantity"),
                        rs.getFloat("Price"),rs.getString("imageLink"),rs.getString("trademark"));
                listProduct.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduct;
    }
    public void deleteProductWithID(int ID) {
        try {
            String sql = "Delete from product where productID=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, ID);
            st.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void insertProduct(String productName, int Quantity, double Price, String imageLink, String trademark) {
        try {
            String sql1 = "INSERT dbo.product (productName, Quantity, Price, imageLink, trademark) values(?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql1);
            st.setString(1, productName);
            st.setInt(2, Quantity);
            st.setDouble(3, Price);
            st.setString(4, imageLink);
            st.setString(5, trademark);
            st.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Product getProductWitdID(int ID) {
        try {
            String sql = "Select * from product where productID=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, ID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product a = new Product(rs.getInt("productID"), rs.getString("productName"), rs.getInt("Quantity"),
                        rs.getFloat("Price"),rs.getString("imageLink"),rs.getString("trademark"));
                return (a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void updateProductWitdID(int ID, String productName, int Quantity, double Price, String imageLink, String trademark){
        try {
            String sql = "Update product set productName=?, Quantity=?, Price=?, imageLink=?, trademark=? where productID=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, productName);
            st.setInt(2, Quantity);
            st.setDouble(3, Price);
            st.setString(4, imageLink);
            st.setString(5, trademark);
            st.setInt(6, ID);
            st.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DBProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
