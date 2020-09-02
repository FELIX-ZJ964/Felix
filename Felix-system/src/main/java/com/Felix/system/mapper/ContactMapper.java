package com.Felix.system.mapper;

import java.util.List;
import com.Felix.system.domain.Contact;

/**
 * Contact
 * 
 * @author Felix
 * @date 2020-08-10
 */
public interface ContactMapper 
{
    /**
     * Contact
     * 
     * @param id ContactID
     * @return Contact
     */
    public Contact selectContactById(Long id);

    /**
     * Contact
     * 
     * @param contact Contact
     * @return Contact
     */
    public List<Contact> selectContactList(Contact contact);

    /**
     * Contact
     * 
     * @param contact Contact
     * @return
     */
    public int insertContact(Contact contact);

    /**
     * Contact
     * 
     * @param contact Contact
     * @return
     */
    public int updateContact(Contact contact);

    /**
     * Contact
     * 
     * @param id ContactID
     * @return
     */
    public int deleteContactById(Long id);

    /**
     * Contact
     * 
     * @param ids
     * @return
     */
    public int deleteContactByIds(String[] ids);
}
