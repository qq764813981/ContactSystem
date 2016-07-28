package com.cxspace.dao.impl;

import com.cxspace.dao.IContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class ContactDao implements IContactDao{

    //录入联系人信息
    @Override
    public boolean loggingContactMessage(Contact contact) {

        boolean flag = true;

        Session session= null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(contact);


        }catch (Exception e){

            flag = false;
            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

        return flag;
    }

    @Override
    public boolean updateContactMessage(Contact contact) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.update(contact);

        }catch (Exception e){

            flag = false;

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

        return flag;
    }

    @Override
    public List<Contact> findAllContact() {

        Session session = null;
        Transaction tx = null;

        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query q = session.createQuery("from Contact");

            return q.list();

        }catch (Exception e){
            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

    }


}
