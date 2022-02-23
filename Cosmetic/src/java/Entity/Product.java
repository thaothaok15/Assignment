/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author coder
 *
 */
public class Product {

    private int productID;
    private String productName;
    private int Quantity;
    private double Price;
    private String imageLink;
    private String trademark;

    public Product() {
    }

    public Product(int productID, String productName, int Quantity, double Price, String imageLink, String trademark) {
        this.productID = productID;
        this.productName = productName;
        this.Quantity = Quantity;
        this.Price = Price;
        this.imageLink = imageLink;
        this.trademark = trademark;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }
    
}
