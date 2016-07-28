package com.cxspace.service.impl;

import com.cxspace.bean.PageBean;
import com.cxspace.dao.impl.ContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.service.IContactService;

/**
 * Created by cxspace on 16-7-28.
 */
public class ContactService implements IContactService{


    @Override
    public boolean loggingContactMessage(Contact contact) {

        ContactDao contactDao = new ContactDao();

        return contactDao.loggingContactMessage(contact);

    }

    @Override
    public boolean updateContactPhone(Contact contact) {
        ContactDao contactDao = new ContactDao();

        return contactDao.updateContactMessage(contact);
    }

    @Override
    public void getPageData(PageBean<Contact> pb) {
        ContactDao contactDao = new ContactDao();
        contactDao.getAll(pb);
    }
}
