package com.Felix.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Felix.system.mapper.Text1Mapper;
import com.Felix.system.domain.Text1;
import com.Felix.system.service.IText1Service;
import com.Felix.common.core.text.Convert;

/**
 * text1Service
 * 
 * @author Felix
 * @date 2020-08-10
 */
@Service
public class Text1ServiceImpl implements IText1Service 
{
    @Autowired
    private Text1Mapper text1Mapper;

    /**
     * text1
     * 
     * @param id text1ID
     * @return text1
     */
    @Override
    public Text1 selectText1ById(Long id)
    {
        return text1Mapper.selectText1ById(id);
    }

    /**
     * text1
     * 
     * @param text1 text1
     * @return text1
     */
    @Override
    public List<Text1> selectText1List(Text1 text1)
    {
        return text1Mapper.selectText1List(text1);
    }

    /**
     * text1
     * 
     * @param text1 text1
     * @return
     */
    @Override
    public int insertText1(Text1 text1)
    {
        return text1Mapper.insertText1(text1);
    }

    /**
     * text1
     * 
     * @param text1 text1
     * @return
     */
    @Override
    public int updateText1(Text1 text1)
    {
        return text1Mapper.updateText1(text1);
    }

    /**
     * text1
     * 
     */
    @Override
    public int deleteText1ByIds(String ids)
    {
        return text1Mapper.deleteText1ByIds(Convert.toStrArray(ids));
    }

    /**
     * text1
     * 
     * @param id text1ID
     */
    @Override
    public int deleteText1ById(Long id)
    {
        return text1Mapper.deleteText1ById(id);
    }
}
