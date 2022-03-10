/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Thanh Thao
 */
public class Account {
    private int adminID;
    private String userName;
    private String password;
    private int isAdmin;

    public Account() {
    }

    public Account(int adminID, String userName, String password, int isAdmin) {
        this.adminID = adminID;
        this.userName = userName;
        this.password = password;
        this.isAdmin = isAdmin;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "adminID=" + adminID + ", userName=" + userName + ", password=" + password + ", isAdmin=" + isAdmin + '}';
    }

   

    
}
   

    