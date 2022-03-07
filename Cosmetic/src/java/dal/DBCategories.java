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
import model.Categories;

/**
 *
 * @author Thanh Thao
 */
public class DBCategories {
     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Categories> getAllCategories(){
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Categories(rs.getInt("CategoryID"),
                                    rs.getString("CategoryName")));
            }
        }catch(Exception e){
            
        }
       return list; 
    }
    
    
    public static void main(String[] args) throws Exception  {
        DBCategories category = new DBCategories();
        List<Categories> list2 = category.getAllCategories();
        for (Categories  o : list2) {
            System.out.println(o);
        
        }
        }
    
}
