package com.Felix.system.service;

import java.util.List;
import com.Felix.system.domain.Postinfo;

/**
 * Post Information
 * 
 * @author Felix
 * @date 2020-08-21
 */
public interface IPostinfoService 
{
    /**
     * Post Information
     * 
     * @param id Post InformationID
     * @return Post Information
     */
    public Postinfo selectPostinfoById(Long id);

    /**
     * Post Information
     * 
     * @param postinfo Post Information
     * @return Post Information
     */
    public List<Postinfo> selectPostinfoList(Postinfo postinfo);

    /**
     * Post Information
     * 
     * @param postinfo Post Information
     * @return
     */
    public int insertPostinfo(Postinfo postinfo);

    /**
     * Post Information
     * 
     * @param postinfo Post Information
     * @return
     */
    public int updatePostinfo(Postinfo postinfo);

    /**
     * Post Information
     * 
     * @param ids
     * @return
     */
    public int deletePostinfoByIds(String ids);

    /**
     * Post Information
     * 
     * @param id Post InformationID
     * @return
     */
    public int deletePostinfoById(Long id);
}
