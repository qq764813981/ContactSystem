package com.cxspace.dao;

import com.cxspace.entity.Contact;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IContactDao {

    //录入通讯信息
    public boolean loggingContactMessage(Contact contact);

    //修改通讯电话
    public boolean updateContactMessage(Contact contact);

    //展示所有联系人信息
    public List<Contact> findAllContact();
}
