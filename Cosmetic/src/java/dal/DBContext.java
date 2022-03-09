/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Thanh Thao
 */
public class DBContext {
     public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }
    
    /*Insert your other code right after this comment*/
   
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
    private final String serverName = "LAPTOP-8FUOV5MP";
    private final String dbName = "cosmetic_1";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "123456";
    
    public static void main(String[] args)  {
        try{
        System.out.println(new DBContext().getConnection());
    }catch(Exception e){
        
            }
} 
}

