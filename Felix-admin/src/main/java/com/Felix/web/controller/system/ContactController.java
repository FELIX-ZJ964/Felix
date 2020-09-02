package com.Felix.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.Felix.system.domain.Contact;
import com.Felix.system.service.IContactService;
import com.Felix.common.core.controller.BaseController;
import com.Felix.common.core.domain.AjaxResult;
import com.Felix.common.utils.poi.ExcelUtil;
import com.Felix.common.core.page.TableDataInfo;

/**
 * ContactController
 * 
 * @author Felix
 * @date 2020-08-10
 */
@Controller
@RequestMapping("/system/contact")
public class ContactController extends BaseController
{
    private String prefix = "system/contact";

    @Autowired
    private IContactService contactService;

    @RequiresPermissions("system:contact:view")
    @GetMapping()
    public String contact()
    {
        return prefix + "/contact";
    }

    /**
     * searchContactList
     */
    @RequiresPermissions("system:contact:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Contact contact)
    {
        startPage();
        List<Contact> list = contactService.selectContactList(contact);
        return getDataTable(list);
    }

    /**
     * ExportContactList
     */
    @RequiresPermissions("system:contact:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Contact contact)
    {
        List<Contact> list = contactService.selectContactList(contact);
        ExcelUtil<Contact> util = new ExcelUtil<Contact>(Contact.class);
        return util.exportExcel(list, "contact");
    }

    /**
     * addContact
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * Contact
     */
    @RequiresPermissions("system:contact:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Contact contact)
    {
        return toAjax(contactService.insertContact(contact));
    }

    /**
     * modifyContact
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Contact contact = contactService.selectContactById(id);
        mmap.put("contact", contact);
        return prefix + "/edit";
    }

    /**
     * Contact
     */
    @RequiresPermissions("system:contact:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Contact contact)
    {
        return toAjax(contactService.updateContact(contact));
    }

    /**
     * deleteContact
     */
    @RequiresPermissions("system:contact:remove")
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(contactService.deleteContactByIds(ids));
    }
}
