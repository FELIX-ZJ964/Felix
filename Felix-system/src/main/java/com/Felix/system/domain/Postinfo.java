package com.Felix.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.Felix.common.annotation.Excel;
import com.Felix.common.core.domain.BaseEntity;

/**
 * Post Information object postinfo
 * 
 * @author Felix
 * @date 2020-08-21
 */
public class Postinfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** name */
    @Excel(name = "name")
    private String name;

    /** code */
    @Excel(name = "code")
    private Integer code;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setCode(Integer code) 
    {
        this.code = code;
    }

    public Integer getCode() 
    {
        return code;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("code", getCode())
            .toString();
    }
}
