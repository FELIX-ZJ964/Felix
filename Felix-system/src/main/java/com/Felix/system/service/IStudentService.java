package com.Felix.system.service;

import java.util.List;
import com.Felix.system.domain.Student;

/**
 * StudentInfo
 * 
 * @author Felix
 * @date 2020-08-21
 */
public interface IStudentService 
{
    /**
     * StudentInfo
     * 
     * @param id StudentInfoID
     * @return StudentInfo
     */
    public Student selectStudentById(Long id);

    /**
     * StudentInfo
     * 
     * @param student StudentInfo
     * @return StudentInfo
     */
    public List<Student> selectStudentList(Student student);

    /**
     * StudentInfo
     * 
     * @param student StudentInfo
     * @return
     */
    public int insertStudent(Student student);

    /**
     * StudentInfo
     * 
     * @param student StudentInfo
     * @return
     */
    public int updateStudent(Student student);

    /**
     * StudentInfo
     * 
     * @param ids
     * @return
     */
    public int deleteStudentByIds(String ids);

    /**
     * StudentInfo
     * 
     * @param id StudentInfoID
     * @return
     */
    public int deleteStudentById(Long id);
}
