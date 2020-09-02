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
import com.Felix.system.domain.Text;
import com.Felix.system.service.ITextService;
import com.Felix.common.core.controller.BaseController;
import com.Felix.common.core.domain.AjaxResult;
import com.Felix.common.utils.poi.ExcelUtil;
import com.Felix.common.core.page.TableDataInfo;

/**
 * textinfoController
 * 
 * @author Felix
 * @date 2020-08-03
 */
@Controller
@RequestMapping("/system/text")
public class TextController extends BaseController
{
    private String prefix = "system/text";

    @Autowired
    private ITextService textService;

    @RequiresPermissions("system:text:view")
    @GetMapping()
    public String text()
    {
        return prefix + "/text";
    }

    /**
     * searchtextinfoList
     */
    @RequiresPermissions("system:text:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Text text)
    {
        startPage();
        List<Text> list = textService.selectTextList(text);
        return getDataTable(list);
    }

    /**
     * ExporttextinfoList
     */
    @RequiresPermissions("system:text:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Text text)
    {
        List<Text> list = textService.selectTextList(text);
        ExcelUtil<Text> util = new ExcelUtil<Text>(Text.class);
        return util.exportExcel(list, "text");
    }

    /**
     * addtextinfo
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * textinfo
     */
    @RequiresPermissions("system:text:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Text text)
    {
        return toAjax(textService.insertText(text));
    }

    /**
     * modifytextinfo
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Text text = textService.selectTextById(id);
        mmap.put("text", text);
        return prefix + "/edit";
    }

    /**
     * textinfo
     */
    @RequiresPermissions("system:text:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Text text)
    {
        return toAjax(textService.updateText(text));
    }

    /**
     * deletetextinfo
     */
    @RequiresPermissions("system:text:remove")
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(textService.deleteTextByIds(ids));
    }
}
