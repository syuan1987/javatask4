package com.ptteng.dao;

import com.ptteng.entity.Student;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface StudentDao {

	public List<Student> getAllStudents();

	public Student findStudentById(int id);

	public List<Student> findAllGoodStudent();

	public int deleteStudentById(int id);

	public int addStudent(Student stu);

	public int updateStudent(Student stu);

}
