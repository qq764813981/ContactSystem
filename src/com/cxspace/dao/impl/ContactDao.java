package com.cxspace.dao.impl;

import com.cxspace.bean.PageBean;
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
    public boolean updateContactMessage(Contact contact) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query query = session.createQuery("update Contact contact set contact.phone = :phone");

            query.setString("phone",contact.getPhone());

            query.executeUpdate();

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

    @Override
    public void getAll(PageBean<Contact> pb) {

        Session session = null;
        Transaction tx = null;

        //拿到总记录数
        int totalCount = (int) this.getTotalCount();

        pb.setTotalCount(totalCount);

        if (pb.getCurrentPage()<=1){
            pb.setCurrentPage(1);
        }else if(pb.getCurrentPage()  >= pb.getTotalPage()){
            pb.setCurrentPage(pb.getTotalPage());
        }

        int crrentPage = pb.getCurrentPage();

        int index = (crrentPage - 1)*pb.getPageCount();

        int count = pb.getPageCount();

        try {
            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Query q = session.createQuery("from Contact");

            q.setFirstResult(index);

            q.setMaxResults(count);

            List<Contact> contacts = q.list();

            pb.setPageData(contacts);

        }catch (Exception e){
            throw new RuntimeException(e);
        } finally {
            tx.commit();
            session.close();
        }
    }

    @Override
    public long getTotalCount() {

        Session session = null;
        Transaction tx = null;

        long count;

        try{
            session = HibernateUtils.getSession();
            tx = session.beginTransaction();
            count = (long) session.createQuery("select count(*) from Contact contact").uniqueResult();

        }catch (Exception e){

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }


        return count;
    }


}
