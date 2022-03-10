/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Categories;
import model.Product;

/**
 *
 * @author Thanh Thao
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getDouble("Price"),
                        rs.getString("Status"),
                        rs.getString("Description")));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Categories> getAllCategories() {
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt("CategoryID"),
                        rs.getString("CategoryName")));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> getProductByCategoryID(String categoryID) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where CategoryID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getDouble("Price"),
                        rs.getString("Status"),
                        rs.getString("Description")));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Product getProductByID(String productID) {

        String query = "select * from Product\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getDouble("Price"),
                        rs.getString("Status"),
                        rs.getString("Description"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account login(String userName, String password) {
        String query = "select * from Accounts\n"
                + "                   where[Username]= ? and\n"
                + "                   [Password]= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("AdminID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("isAdmin"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account checkAccountExist(String userName) {
        String query = "select * from Accounts\n"
                + "where[Username]=?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("AdminID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("isAdmin"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void signup(String userName, String password) {
        String query = "insert into Accounts\n"
                + "values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n "
                + "where [ProductName] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getDouble("Price"),
                        rs.getString("Status"),
                        rs.getString("Description")));
            }
        } catch (Exception e) {

        }
        return list;
    }
    
     public List<Product> getProductBySellID(String productID ) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n "
                + "where sellID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getDouble("Price"),
                        rs.getString("Status"),
                        rs.getString("Description")));
            }
        } catch (Exception e) {

        }
        return list;
    }
    public static void main(String[] args) throws Exception {
        DAO dao = new DAO();
        //  List<Product> list = product.getProductByCategoryID(categoryID);
        List<Product> list = dao.getAllProduct();
        // Product p = product.getProductByID(productID);

        for (Product o : list) {
            System.out.println(o);

        }
    }

}
