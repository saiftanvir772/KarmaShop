/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.Category;
import com.NewHibernateUtil;
import com.SubCategory;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Shahin
 */
public class subCategoryDao {
    public void addSubCat(SubCategory scat){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    session.beginTransaction();
    session.save(scat);
    session.getTransaction().commit();
    session.close();
    }
    public List<SubCategory> viewSubcatByCat(String scat){
    Session session = NewHibernateUtil.getSessionFactory().openSession();
    List<SubCategory> scatList = new ArrayList<>();
    Query q = session.createQuery("From SubCategory where catName=?");
    q.setString(0, scat);
    scatList = q.list();
    return scatList;
    }
}
