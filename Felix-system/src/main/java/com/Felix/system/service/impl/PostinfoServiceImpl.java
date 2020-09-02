package com.Felix.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Felix.system.mapper.PostinfoMapper;
import com.Felix.system.domain.Postinfo;
import com.Felix.system.service.IPostinfoService;
import com.Felix.common.core.text.Convert;

/**
 * Post InformationService
 * 
 * @author Felix
 * @date 2020-08-21
 */
@Service
public class PostinfoServiceImpl implements IPostinfoService 
{
    @Autowired
    private PostinfoMapper postinfoMapper;

    /**
     * Post Information
     * 
     * @param id Post InformationID
     * @return Post Information
     */
    @Override
    public Postinfo selectPostinfoById(Long id)
    {
        return postinfoMapper.selectPostinfoById(id);
    }

    /**
     * Post Information
     * 
     * @param postinfo Post Information
     * @return Post Information
     */
    @Override
    public List<Postinfo> selectPostinfoList(Postinfo postinfo)
    {
        return postinfoMapper.selectPostinfoList(postinfo);
    }

    /**
     * Post Information
     * 
     * @param postinfo Post Information
     * @return
     */
    @Override
    public int insertPostinfo(Postinfo postinfo)
    {
        return postinfoMapper.insertPostinfo(postinfo);
    }

    /**
     * Post Information
     * 
     * @param postinfo Post Information
     * @return
     */
    @Override
    public int updatePostinfo(Postinfo postinfo)
    {
        return postinfoMapper.updatePostinfo(postinfo);
    }

    /**
     * Post Information
     * 
     */
    @Override
    public int deletePostinfoByIds(String ids)
    {
        return postinfoMapper.deletePostinfoByIds(Convert.toStrArray(ids));
    }

    /**
     * Post Information
     * 
     * @param id Post InformationID
     */
    @Override
    public int deletePostinfoById(Long id)
    {
        return postinfoMapper.deletePostinfoById(id);
    }
}
