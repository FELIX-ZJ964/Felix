package com.Felix.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Felix.system.mapper.StudentMapper;
import com.Felix.system.domain.Student;
import com.Felix.system.service.IStudentService;
import com.Felix.common.core.text.Convert;

/**
 * StudentInfoService
 * 
 * @author Felix
 * @date 2020-08-21
 */
@Service
public class StudentServiceImpl implements IStudentService 
{
    @Autowired
    private StudentMapper studentMapper;

    /**
     * StudentInfo
     * 
     * @param id StudentInfoID
     * @return StudentInfo
     */
    @Override
    public Student selectStudentById(Long id)
    {
        return studentMapper.selectStudentById(id);
    }

    /**
     * StudentInfo
     * 
     * @param student StudentInfo
     * @return StudentInfo
     */
    @Override
    public List<Student> selectStudentList(Student student)
    {
        return studentMapper.selectStudentList(student);
    }

    /**
     * StudentInfo
     * 
     * @param student StudentInfo
     * @return
     */
    @Override
    public int insertStudent(Student student)
    {
        return studentMapper.insertStudent(student);
    }

    /**
     * StudentInfo
     * 
     * @param student StudentInfo
     * @return
     */
    @Override
    public int updateStudent(Student student)
    {
        return studentMapper.updateStudent(student);
    }

    /**
     * StudentInfo
     * 
     */
    @Override
    public int deleteStudentByIds(String ids)
    {
        return studentMapper.deleteStudentByIds(Convert.toStrArray(ids));
    }

    /**
     * StudentInfo
     * 
     * @param id StudentInfoID
     */
    @Override
    public int deleteStudentById(Long id)
    {
        return studentMapper.deleteStudentById(id);
    }
}
