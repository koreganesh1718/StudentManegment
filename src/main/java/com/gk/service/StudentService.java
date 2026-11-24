package com.gk.service;



import java.util.List;

import com.gk.dto.StudentRequest;
import com.gk.dto.StudentResponse;
import com.gk.entity.Student;

public interface StudentService {

	Student saveStudent(Student request);

    StudentResponse getStudent(Long id);

    List<StudentResponse> getAllStudents();

    StudentResponse updateStudent(Long id,StudentRequest request);

    void deleteStudent(Long id);

}