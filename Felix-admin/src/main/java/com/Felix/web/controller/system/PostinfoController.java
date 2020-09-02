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
import com.Felix.system.domain.Postinfo;
import com.Felix.system.service.IPostinfoService;
import com.Felix.common.core.controller.BaseController;
import com.Felix.common.core.domain.AjaxResult;
import com.Felix.common.utils.poi.ExcelUtil;
import com.Felix.common.core.page.TableDataInfo;

/**
 * Post InformationController
 * 
 * @author Felix
 * @date 2020-08-21
 */
@Controller
@RequestMapping("/system/postinfo")
public class PostinfoController extends BaseController
{
    private String prefix = "system/postinfo";

    @Autowired
    private IPostinfoService postinfoService;

    @RequiresPermissions("system:postinfo:view")
    @GetMapping()
    public String postinfo()
    {
        return prefix + "/postinfo";
    }

    /**
     * searchPost InformationList
     */
    @RequiresPermissions("system:postinfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Postinfo postinfo)
    {
        startPage();
        List<Postinfo> list = postinfoService.selectPostinfoList(postinfo);
        return getDataTable(list);
    }

    /**
     * ExportPost InformationList
     */
    @RequiresPermissions("system:postinfo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Postinfo postinfo)
    {
        List<Postinfo> list = postinfoService.selectPostinfoList(postinfo);
        ExcelUtil<Postinfo> util = new ExcelUtil<Postinfo>(Postinfo.class);
        return util.exportExcel(list, "postinfo");
    }

    /**
     * addPost Information
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * Post Information
     */
    @RequiresPermissions("system:postinfo:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Postinfo postinfo)
    {
        return toAjax(postinfoService.insertPostinfo(postinfo));
    }

    /**
     * modifyPost Information
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Postinfo postinfo = postinfoService.selectPostinfoById(id);
        mmap.put("postinfo", postinfo);
        return prefix + "/edit";
    }

    /**
     * Post Information
     */
    @RequiresPermissions("system:postinfo:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Postinfo postinfo)
    {
        return toAjax(postinfoService.updatePostinfo(postinfo));
    }

    /**
     * deletePost Information
     */
    @RequiresPermissions("system:postinfo:remove")
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(postinfoService.deletePostinfoByIds(ids));
    }
}
