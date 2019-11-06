/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.Delivary;
import com.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Shahin
 */
public class DeliveryDao {
    public void addDelivery(Delivary d){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.save(d);
    session.getTransaction().commit();
    session.close();
    }
     public void delDelivary(Delivary d){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.delete(d);
    session.getTransaction().commit();
    session.close();
    }
    
    public List allDelivery(){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    Query q = session.createQuery("From Delivary");
    List <Delivary> l = new ArrayList<>();
    l = q.list();
    return l;
    }
}
