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
public class Item {
  
    private Product product;
    private int quantity;
    private double saleprice;

    public Item() {
    }

    public Item(Product product, int quantity, double saleprice) {
        this.product = product;
        this.quantity = quantity;
        this.saleprice = saleprice;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(double saleprice) {
        this.saleprice = saleprice;
    }

    @Override
    public String toString() {
        return "Item{" + "product=" + product + ", quantity=" + quantity + ", saleprice=" + saleprice + '}';
    }
    

   
    
}

