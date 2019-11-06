/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.Category;
import com.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Shahin
 */
public class CategoryDao {
    public void adCategory(Category cat){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.save(cat);
    session.getTransaction().commit();
    session.close();
    }
    public List<Category> getCategory(){
    List<Category> catList = new ArrayList<>();
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    Query q = session.createQuery("From Category");
    catList = q.list();
    return catList;
    }
}
