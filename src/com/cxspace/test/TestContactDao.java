package com.cxspace.test;

import com.cxspace.dao.impl.ContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.utils.WebUtils;
import org.hibernate.Session;
import org.junit.Test;

/**
 * Created by cxspace on 16-7-28.
 */
public class TestContactDao {


    public void TestloggingContactMessage(){

        Contact contact = new Contact();

        ContactDao contactDao = new ContactDao();

        contact.setId(WebUtils.getRandomId(10));
        contact.setName("小明");
        contact.setCollege("北京大学");
        contact.setMajor("文学");
        contact.setCity("北京");
        contact.setPhone("12345678901");
        contact.setPointx(115.2312);
        contact.setPointy(23.3362);
        contact.setPic("/usr/tomcat");
        contact.setYuliu("预留");

        contactDao.loggingContactMessage(contact);
    }



    public void testupdateContactMessage(){

        Contact contact = new Contact();

        ContactDao contactDao = new ContactDao();

        contact.setPhone("0987654321");

        contactDao.updateContactMessage(contact);

    }


    public void testfindAllContact(){

        ContactDao contactDao = new ContactDao();

        System.out.println(contactDao.findAllContact());
    }

    @Test

    public void testfindAllCount(){

        System.out.println(new ContactDao().getTotalCount());

    }
}
