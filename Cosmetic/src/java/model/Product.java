/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Thanh Thao
 *
 */
public class Product {
    
  private int productID;
  private String productName;
  private String imageLink;
  private double price;
  private String status;
  private String description;
  private String quantity;
  private String categoryID;

    public Product() {
    }

    public Product(int productID, String productName, String imageLink, double price, String status, String description, String quantity, String categoryID) {
        this.productID = productID;
        this.productName = productName;
        this.imageLink = imageLink;
        this.price = price;
        this.status = status;
        this.description = description;
        this.quantity = quantity;
        this.categoryID = categoryID;
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

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", imageLink=" + imageLink + ", price=" + price + ", status=" + status + ", description=" + description + ", quantity=" + quantity + ", categoryID=" + categoryID + '}';
    }

   

}
