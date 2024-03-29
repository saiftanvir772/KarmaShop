package com;
// Generated Jun 16, 2019 12:33:08 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Cart generated by hbm2java
 */
public class Cart  implements java.io.Serializable {


     private int cartId;
     private Integer proId;
     private Integer userId;
     private Date orderDate;
     private Integer orderQty;
     private Integer totalPrice;

    public Cart() {
    }

	
    public Cart(int cartId) {
        this.cartId = cartId;
    }
    public Cart(int cartId, Integer proId, Integer userId, Date orderDate, Integer orderQty, Integer totalPrice) {
       this.cartId = cartId;
       this.proId = proId;
       this.userId = userId;
       this.orderDate = orderDate;
       this.orderQty = orderQty;
       this.totalPrice = totalPrice;
    }
   
    public int getCartId() {
        return this.cartId;
    }
    
    public void setCartId(int cartId) {
        this.cartId = cartId;
    }
    public Integer getProId() {
        return this.proId;
    }
    
    public void setProId(Integer proId) {
        this.proId = proId;
    }
    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public Date getOrderDate() {
        return this.orderDate;
    }
    
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
    public Integer getOrderQty() {
        return this.orderQty;
    }
    
    public void setOrderQty(Integer orderQty) {
        this.orderQty = orderQty;
    }
    public Integer getTotalPrice() {
        return this.totalPrice;
    }
    
    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }




}


