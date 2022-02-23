/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author coder
 */
public class DBAccount {
    private DBContext db;
    private Connection con;

    public DBAccount() {
        db = new DBContext();
        try {
            con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(DBAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Account getAccount(String userName, String password) {
        try {
            String sql = "Select * from account where userName=? and password=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new  Account(rs.getInt("accountID"), rs.getString("userName"), 
                        rs.getString("password"), rs.getString("firstName"), rs.getString("lastName"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (null);
    }
    public boolean checkExistWithUsername(String username){
        try {
            String sql = "Select * from account where userName=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (false);
    }
    public void addAcount(String username, String password, String Fname, String Lname){
        try {
            String sql = "INSERT dbo.Account (userName, password, firstName, lastName) VALUES(?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.setString(3, Fname);
            st.setString(4, Lname);
            st.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DBAccount.class.getName()).log(Level.SEVERE, null, ex);
            
        }
    }
}
