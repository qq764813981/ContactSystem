package com.cxspace.dao.impl;

import com.cxspace.dao.IUserDao;
import com.cxspace.entity.User;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by cxspace on 16-7-28.
 */
public class UserDao implements IUserDao {

    @Override
    public void save(User user) {
        Session session = null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(user);

            tx.commit();
        }catch (Exception e){
            throw new RuntimeException(e);
        }finally {
            session.close();
        }


    }

    @Override
    public User find(String phone, String password) {

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Query q = session.createQuery("from User where phone = ? and password = ?");


            q.setParameter(0,phone);
            q.setParameter(1,password);


            return (User)q.list().get(0);


        }catch (Exception e){
            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }


    }
}
