package com.Felix.system.service;

import java.util.List;
import com.Felix.system.domain.Text1;

/**
 * text1
 * 
 * @author Felix
 * @date 2020-08-10
 */
public interface IText1Service 
{
    /**
     * text1
     * 
     * @param id text1ID
     * @return text1
     */
    public Text1 selectText1ById(Long id);

    /**
     * text1
     * 
     * @param text1 text1
     * @return text1
     */
    public List<Text1> selectText1List(Text1 text1);

    /**
     * text1
     * 
     * @param text1 text1
     * @return
     */
    public int insertText1(Text1 text1);

    /**
     * text1
     * 
     * @param text1 text1
     * @return
     */
    public int updateText1(Text1 text1);

    /**
     * text1
     * 
     * @param ids
     * @return
     */
    public int deleteText1ByIds(String ids);

    /**
     * text1
     * 
     * @param id text1ID
     * @return
     */
    public int deleteText1ById(Long id);
}
