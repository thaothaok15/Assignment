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
import model.Product;

/**
 *
 * @author Thanh Thao
 */
public class DBProduct {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt("ProductID"),
                                    rs.getString("ProductName"),    
                                    rs.getString("imageLink"),    
                                    rs.getDouble("Price"),    
                                    rs.getString("Status"),                    
                                    rs.getString("description")));
            }
        }catch(Exception e){
            
        }
       return list; 
    }
    public static void main(String[] args) throws Exception  {
        DBProduct product = new DBProduct();
        List<Product> list = product.getAllProduct();
        for (Product o : list) {
            System.out.println(o);
        
        }
        }
    }

