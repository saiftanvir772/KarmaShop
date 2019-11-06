/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.NewHibernateUtil;
import com.Product;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Shahin
 */
public class ProductDao {
    public void AddProduct(Product p){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.save(p);
    session.getTransaction().commit();
    session.close();
    }
    
    public void deleteProduct(Product p){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.delete(p);
    session.getTransaction().commit();
    
    }
    public void updatePro(Product p){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.update(p);
    session.getTransaction().commit();
    
    }
    public List<Product> viewProduct(){
    List<Product> productList = new ArrayList<>();
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    Query q = session.createQuery("From Product");
    productList = q.list();
    return productList;
    }
}
