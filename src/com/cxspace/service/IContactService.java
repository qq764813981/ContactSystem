package com.cxspace.service;

import com.cxspace.bean.PageBean;
import com.cxspace.entity.Contact;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IContactService {

    //录入联系人信息
    public boolean loggingContactMessage(Contact contact);

    //修改联系人手机
    public boolean updateContactPhone(Contact contact);

    public void getPageData(PageBean<Contact> pb);
}
