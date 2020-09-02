package com.Felix.system.service;

import java.util.List;
import com.Felix.system.domain.Text;

/**
 * textinfo
 * 
 * @author Felix
 * @date 2020-08-03
 */
public interface ITextService 
{
    /**
     * textinfo
     * 
     * @param id textinfoID
     * @return textinfo
     */
    public Text selectTextById(Long id);

    /**
     * textinfo
     * 
     * @param text textinfo
     * @return textinfo
     */
    public List<Text> selectTextList(Text text);

    /**
     * textinfo
     * 
     * @param text textinfo
     * @return
     */
    public int insertText(Text text);

    /**
     * textinfo
     * 
     * @param text textinfo
     * @return
     */
    public int updateText(Text text);

    /**
     * textinfo
     * 
     * @param ids
     * @return
     */
    public int deleteTextByIds(String ids);

    /**
     * textinfo
     * 
     * @param id textinfoID
     * @return
     */
    public int deleteTextById(Long id);
}
