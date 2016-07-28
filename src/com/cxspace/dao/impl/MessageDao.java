package com.cxspace.dao.impl;

import com.cxspace.dao.IMessageDao;
import com.cxspace.entity.Message;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class MessageDao implements IMessageDao {

    @Override
    public boolean addMessage(Message message) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(message);

            tx.commit();

        }catch (Exception e){

            flag = false;
            throw new RuntimeException(e);
        }finally {

            session.close();
        }


        return flag;
    }

    @Override
    public List<Message> findAllMessage() {

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query q = session.createQuery("from Message");

            return q.list();

        }catch (Exception e){

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();

        }

    }

    @Override
    public boolean deleteMessage(String id) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Object obj = session.get(Message.class , id);

            if (obj != null){
                session.delete(obj);
            }

            tx.commit();


        }catch (Exception e){

            flag = false;
            throw new RuntimeException(e);
        }finally {

            session.close();
        }

        return flag;
    }
}
