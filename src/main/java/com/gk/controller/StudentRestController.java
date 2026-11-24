package com.gk.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gk.dto.StudentRequest;
import com.gk.dto.StudentResponse;
import com.gk.entity.Student;
import com.gk.service.StudentService;

@RestController
@RequestMapping("/students")
public class StudentRestController {

	private final StudentService service;

	public StudentRestController(StudentService service) {
		this.service = service;
	}

	@PostMapping("/saveStudent")
	public Student saveStudent(@RequestBody Student student) {

		return service.saveStudent(student);

	}

	@GetMapping("/{id}")
	public StudentResponse get(@PathVariable Long id) {
		StudentResponse response = service.getStudent(id);
		return response;
	}

	@GetMapping
	public List<StudentResponse> getAll() {
		return service.getAllStudents();
	}

	@PutMapping("/{id}")
	public StudentResponse update(@PathVariable Long id, @RequestBody StudentRequest request) {
		return service.updateStudent(id, request);
	}

	@DeleteMapping("/{id}")
	public String delete(@PathVariable Long id) {
		service.deleteStudent(id);
		return "Student Deleted Successfully";
	}

}
