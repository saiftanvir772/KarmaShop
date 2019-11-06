/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.Admin;
import com.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Shahin
 */
public class LoginDao {

    public boolean adminLogin(String mail, String pass) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Query q = session.createQuery("From Admin where email=? and password =?");
        q.setString(0, mail);
        q.setString(1, pass);
        List<Admin> adminList = new ArrayList<>();
        adminList = q.list();
        if (adminList.size() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
