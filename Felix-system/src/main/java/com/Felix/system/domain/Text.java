package com.Felix.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.Felix.common.annotation.Excel;
import com.Felix.common.core.domain.BaseEntity;

/**
 * textinfo object text
 * 
 * @author Felix
 * @date 2020-08-03
 */
public class Text extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** name */
    @Excel(name = "name")
    private String name;

    /** age */
    @Excel(name = "age")
    private Integer age;

    /** score */
    @Excel(name = "score")
    private String score;

    /** subject */
    @Excel(name = "subject")
    private String subject;

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
    public void setAge(Integer age) 
    {
        this.age = age;
    }

    public Integer getAge() 
    {
        return age;
    }
    public void setScore(String score) 
    {
        this.score = score;
    }

    public String getScore() 
    {
        return score;
    }
    public void setSubject(String subject) 
    {
        this.subject = subject;
    }

    public String getSubject() 
    {
        return subject;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("age", getAge())
            .append("score", getScore())
            .append("subject", getSubject())
            .toString();
    }
}
