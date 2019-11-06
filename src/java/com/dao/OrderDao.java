/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.NewHibernateUtil;
import com.Order;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Shahin
 */
public class OrderDao {
    public void addOrder(Order or){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.save(or);
    session.getTransaction().commit();
    session.close();
    }
    public void cancelOrder(Order or){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.delete(or);
    session.getTransaction().commit();
    session.close();
    }
    public List<Order> viewOrder(){
     Session session = NewHibernateUtil.getSessionFactory().openSession();
     List<Order> orderList = new ArrayList<>();
     Query q = session.createQuery("From Order");
     orderList = q.list();
     return orderList;
    }
    
    
}
