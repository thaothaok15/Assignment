/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author coder
 */
public class Account {
    private int accountID;
    private String userName;
    private String password;
    private String firtName;
    private String lastName;

    public Account() {
    }

    public Account(int accountID, String userName, String password, String firtName, String lastName) {
        this.accountID = accountID;
        this.userName = userName;
        this.password = password;
        this.firtName = firtName;
        this.lastName = lastName;
    }
    public Account(String userName, String password, String firtName, String lastName) {
        this.accountID = accountID;
        this.userName = userName;
        this.password = password;
        this.firtName = firtName;
        this.lastName = lastName;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
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

    public String getFirtName() {
        return firtName;
    }

    public void setFirtName(String firtName) {
        this.firtName = firtName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
}
