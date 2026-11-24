package com.gk.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gk.dto.StudentResponse;
import com.gk.entity.Student;
import com.gk.service.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService service;

	@GetMapping("/register")
	public String openRegistrationPage() {

		return "register";

	}

	@PostMapping("/saveStudent")
	public String saveStudent(@Valid @ModelAttribute Student student, BindingResult result, Model model) {

		Student savedStudent = service.saveStudent(student);

		model.addAttribute("student", savedStudent);

		return "registrationSuccess";
	}

	@GetMapping("/profile/{id}")
	public String showProfile(@PathVariable Long id, Model model) {

		StudentResponse student = service.getStudent(id);

		model.addAttribute("student", student);

		return "studentProfile";

	}

	@GetMapping("/qrcode/{id}")
	@ResponseBody
	public ResponseEntity<ByteArrayResource> showQRCode(@PathVariable Long id) {

		try {

			StudentResponse student = service.getStudent(id);

			Path path = Paths.get(student.getQrCodePath());

			byte[] image = Files.readAllBytes(path);

			ByteArrayResource resource = new ByteArrayResource(image);

			return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(resource);

		} catch (Exception e) {
			return ResponseEntity.notFound().build();

		}

	}

	@GetMapping("/error")
	public String error() {

		return "error";

	}
}
