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
import com.Felix.system.domain.Text1;
import com.Felix.system.service.IText1Service;
import com.Felix.common.core.controller.BaseController;
import com.Felix.common.core.domain.AjaxResult;
import com.Felix.common.utils.poi.ExcelUtil;
import com.Felix.common.core.page.TableDataInfo;

/**
 * text1Controller
 * 
 * @author Felix
 * @date 2020-08-10
 */
@Controller
@RequestMapping("/system/text1")
public class Text1Controller extends BaseController
{
    private String prefix = "system/text1";

    @Autowired
    private IText1Service text1Service;

    @RequiresPermissions("system:text1:view")
    @GetMapping()
    public String text1()
    {
        return prefix + "/text1";
    }

    /**
     * searchtext1List
     */
    @RequiresPermissions("system:text1:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Text1 text1)
    {
        startPage();
        List<Text1> list = text1Service.selectText1List(text1);
        return getDataTable(list);
    }

    /**
     * Exporttext1List
     */
    @RequiresPermissions("system:text1:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Text1 text1)
    {
        List<Text1> list = text1Service.selectText1List(text1);
        ExcelUtil<Text1> util = new ExcelUtil<Text1>(Text1.class);
        return util.exportExcel(list, "text1");
    }

    /**
     * addtext1
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * text1
     */
    @RequiresPermissions("system:text1:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Text1 text1)
    {
        return toAjax(text1Service.insertText1(text1));
    }

    /**
     * modifytext1
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Text1 text1 = text1Service.selectText1ById(id);
        mmap.put("text1", text1);
        return prefix + "/edit";
    }

    /**
     * text1
     */
    @RequiresPermissions("system:text1:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Text1 text1)
    {
        return toAjax(text1Service.updateText1(text1));
    }

    /**
     * deletetext1
     */
    @RequiresPermissions("system:text1:remove")
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(text1Service.deleteText1ByIds(ids));
    }
}
