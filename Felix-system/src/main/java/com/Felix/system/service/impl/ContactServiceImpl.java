package com.Felix.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Felix.system.mapper.ContactMapper;
import com.Felix.system.domain.Contact;
import com.Felix.system.service.IContactService;
import com.Felix.common.core.text.Convert;

/**
 * ContactService
 * 
 * @author Felix
 * @date 2020-08-10
 */
@Service
public class ContactServiceImpl implements IContactService 
{
    @Autowired
    private ContactMapper contactMapper;

    /**
     * Contact
     * 
     * @param id ContactID
     * @return Contact
     */
    @Override
    public Contact selectContactById(Long id)
    {
        return contactMapper.selectContactById(id);
    }

    /**
     * Contact
     * 
     * @param contact Contact
     * @return Contact
     */
    @Override
    public List<Contact> selectContactList(Contact contact)
    {
        return contactMapper.selectContactList(contact);
    }

    /**
     * Contact
     * 
     * @param contact Contact
     * @return
     */
    @Override
    public int insertContact(Contact contact)
    {
        return contactMapper.insertContact(contact);
    }

    /**
     * Contact
     * 
     * @param contact Contact
     * @return
     */
    @Override
    public int updateContact(Contact contact)
    {
        return contactMapper.updateContact(contact);
    }

    /**
     * Contact
     * 
     */
    @Override
    public int deleteContactByIds(String ids)
    {
        return contactMapper.deleteContactByIds(Convert.toStrArray(ids));
    }

    /**
     * Contact
     * 
     * @param id ContactID
     */
    @Override
    public int deleteContactById(Long id)
    {
        return contactMapper.deleteContactById(id);
    }
}
