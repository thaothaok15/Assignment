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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Categories;
import model.Order;
import model.OrderDetail;

import model.Product;
import model.Profile;

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
                        rs.getInt("oldPrice"),
                        rs.getInt("salePrice"),
                        rs.getString("Status"),
                        rs.getString("Description"),
                        rs.getString("Quantity"),
                        rs.getString("CategoryID")));
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
                        rs.getInt("oldPrice"),
                        rs.getInt("salePrice"),
                        rs.getString("Status"),
                        rs.getString("Description"),
                        rs.getString("Quantity"),
                        rs.getString("CategoryID")));
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
                        rs.getInt("oldPrice"),
                        rs.getInt("salePrice"),
                        rs.getString("Status"),
                        rs.getString("Description"),
                        rs.getString("Quantity"),
                        rs.getString("CategoryID"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account login(String userName, String password) {
        String query = "select * from Account\n"
                + "                   where[Username]= ? and\n"
                + "                   [Password]= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("AccountID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("role"),
                        rs.getInt("ProfileID"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account checkAccountExist(String userName) {
        String query = "select * from Account\n"
                + "where[Username]=?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("AccountID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("role"),
                        rs.getInt("ProfileID"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Profile> getAllProfile() {
        List<Profile> list = new ArrayList<>();
        String query = "select * from Profile";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Profile(rs.getInt("ProfileID"),
                        rs.getString("Name"),
                        rs.getString("Email"),
                        rs.getString("Address"),
                        rs.getString("Phone")));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void insertProfile(String name, String email, String address, String phone) {
        String query = "insert into Profile(Name,Email,Address,Phone) values(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, address);
            ps.setString(4, phone);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public void signup(String userName, String password, int profileID) {
        String query = "insert into Account(Username,Password,role,ProfileID) values(?,?,0,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setInt(3, profileID);
            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query2 = "select * from Product where [ProductName] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query2);
            ps.setString(1, "%"+txtSearch+"%");
            ResultSet rs2 = ps.executeQuery();
            while (rs2.next()) {
                list.add(new Product(rs2.getInt("ProductID"),
                        rs2.getString("ProductName"),
                        rs2.getString("imageLink"),
                        rs2.getInt("oldPrice"),
                        rs2.getInt("salePrice"),
                        rs2.getString("Status"),
                        rs2.getString("Description"),
                        rs2.getString("Quantity"),
                        rs2.getString("CategoryID")));
            }
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public List<Categories> getAllCategory() {
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

    public void deleteProduct(String productID) {

        String query = "delete from Product\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void insertProduct(String productName, String imageLink, String oldPrice, String salePrice,
            String status, String quantity, String description, String CategoryID) {
        String query = "insert into [Product] ([ProductName],"
                + "[Description], "
                + "[Quantity], "
                + "[imageLink], "
                + "[Status], "
                + "[oldPrice], "
                + "[salePrice], "
                + "[CategoryID]) "
                + "VALUES (? , ?, ?, ?, ?,?, ?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, description);
            ps.setString(3, quantity);
            ps.setString(4, imageLink);
            ps.setString(5, status);
            ps.setString(6, oldPrice);
            ps.setString(7, salePrice);
            ps.setString(8, CategoryID);

            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void updateProduct(String productID, String productName, String imageLink, String salePrice,
            String status, String quantity, String description, String CategoryID) {
        String query = "update Product set ProductName = ?,Description= ?,Quantity = ?, imageLink=? ,Status=?,  CategoryID=?, salePrice=? where ProductID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(8, productID);
            ps.setString(1, productName);
            ps.setString(2, description);
            ps.setString(3, quantity);
            ps.setString(4, imageLink);
            ps.setString(5, status);
            ps.setString(7, salePrice);
            ps.setString(6, CategoryID);

            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

 

    public int countProduct() {
        String query = "SELECT COUNT(*) FROM  Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {

        }
        return 0;
    }

    public List<Account> getAllaccount() {
        String query = "select * from Account";
        List<Account> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt("AccountID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("role"),
                        rs.getInt("ProfileID")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void BlockAccount(String aid) {
        String query = "update Account set [role] = -1 where [AccountID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, aid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UnBlockAccount(String aid) {
        String query = "update Account set [role] =0  where [AccountID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateAccount(String username, String new_password, int AccountID) {
        String query = "update Account set username = ?,  Password=? where AccountID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, username);
            ps.setString(2, new_password);
            ps.setInt(3, AccountID);
            ps.executeUpdate();
        } catch (Exception e) {
//            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }
    public void updateProfile(String name,String email, String address,String phone, int ProfileID) {
        String query = "update Profile set  Name=?, Email=?, Address=?,Phone=? where ProfileID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, address);
            ps.setString(4, phone);
            ps.setInt(5, ProfileID);
            ps.executeUpdate();
        } catch (Exception e) {
//            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    public Profile getProfile(int profileID) {
        String query = "select * from Profile\n"
                + "where[ProfileID]=?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, profileID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Profile(rs.getInt("ProfileID"),
                        rs.getString("Name"),
                        rs.getString("Email"),
                        rs.getString("Address"),
                        rs.getString("Phone"));
            }
        } catch (Exception e) {

        }
        return null;
    }
     public Account getAccount(int profileID) {
        String query = "select * from Account\n"
                + "where[ProfileID]=?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, profileID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("AccountID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("role"),
                        rs.getInt("ProfileID"));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Order> getOrderByAccountID(int AccountID) {
        List<Order> list = new ArrayList<>();
        String query = "select * from Orders\n"
                + "where AccountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, AccountID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt("OrderID"),
                        rs.getString("Address"),
                        rs.getInt("AccountID")));
            }
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public List<OrderDetail> getOrderDetailByOrderID(int OrderID) {
        List<OrderDetail> list = new ArrayList<>();
        String query = "select * from OrderDetails\n"
                + "where OrderID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, OrderID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderDetail(rs.getInt("OrderDetailsID"),
                        rs.getInt("ProductID"),
                        rs.getString("Quantity"),
                        rs.getInt("OrderID"),
                        rs.getDouble("Total")));
            }
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public void insertOrderDetail(int pid, int quantity, int OrderID,
            double total, String note) {
        String query = "insert into orderdetails(Quantity,Total,ProductID,OrderID) values(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setDouble(2, total);
            ps.setInt(3, pid);
            ps.setInt(4, OrderID);

            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    public void insertOrder(int accountID, String address) {
        String query = "insert into Orders(AccountID, Address) values(?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, accountID);
            ps.setString(2, address);
            ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    public ArrayList<Order> getAllOrders() {
        ArrayList<Order> list = new ArrayList<>();
        String query = "select * from Orders";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt("OrderID"),
                        rs.getString("Address"),
                        rs.getInt("AccountID")));
            }
        } catch (Exception e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public List<Product> OrderByPriceDesc() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n "
                + "order by salePrice desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
//            ps.setInt(1, salePrice);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getInt("oldPrice"),
                        rs.getInt("salePrice"),
                        rs.getString("Status"),
                        rs.getString("Description"),
                        rs.getString("Quantity"),
                        rs.getString("CategoryID")));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Product> OrderByPriceAsc() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n "
                + "order by salePrice asc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
//            ps.setInt(1, salePrice);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("ProductID"),
                        rs.getString("ProductName"),
                        rs.getString("imageLink"),
                        rs.getInt("oldPrice"),
                        rs.getInt("salePrice"),
                        rs.getString("Status"),
                        rs.getString("Description"),
                        rs.getString("Quantity"),
                        rs.getString("CategoryID")));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public static void main(String[] args) throws Exception {
        DAO dao = new DAO();
        //  List<Product> list = product.getProductByCategoryID(categoryID);
        ArrayList<Order> list = dao.getAllOrders();
        // Product p = product.getProductByID(productID);

        for (Order o : list) {
            System.out.println(o);

        }
    }

}
