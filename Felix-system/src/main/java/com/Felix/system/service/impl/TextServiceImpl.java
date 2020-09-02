package com.Felix.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Felix.system.mapper.TextMapper;
import com.Felix.system.domain.Text;
import com.Felix.system.service.ITextService;
import com.Felix.common.core.text.Convert;

/**
 * textinfoService
 * 
 * @author Felix
 * @date 2020-08-03
 */
@Service
public class TextServiceImpl implements ITextService 
{
    @Autowired
    private TextMapper textMapper;

    /**
     * textinfo
     * 
     * @param id textinfoID
     * @return textinfo
     */
    @Override
    public Text selectTextById(Long id)
    {
        return textMapper.selectTextById(id);
    }

    /**
     * textinfo
     * 
     * @param text textinfo
     * @return textinfo
     */
    @Override
    public List<Text> selectTextList(Text text)
    {
        return textMapper.selectTextList(text);
    }

    /**
     * textinfo
     * 
     * @param text textinfo
     * @return
     */
    @Override
    public int insertText(Text text)
    {
        return textMapper.insertText(text);
    }

    /**
     * textinfo
     * 
     * @param text textinfo
     * @return
     */
    @Override
    public int updateText(Text text)
    {
        return textMapper.updateText(text);
    }

    /**
     * textinfo
     * 
     */
    @Override
    public int deleteTextByIds(String ids)
    {
        return textMapper.deleteTextByIds(Convert.toStrArray(ids));
    }

    /**
     * textinfo
     * 
     * @param id textinfoID
     */
    @Override
    public int deleteTextById(Long id)
    {
        return textMapper.deleteTextById(id);
    }
}
