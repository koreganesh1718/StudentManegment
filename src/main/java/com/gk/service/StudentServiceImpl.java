package com.gk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.gk.annotation.GKLog;
import com.gk.dto.StudentRequest;
import com.gk.dto.StudentResponse;
import com.gk.entity.Student;
import com.gk.exception.StudentNotFoundException;
import com.gk.repository.StudentRepository;

@Service

public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository repository;
	@Autowired
	private QRCodeService qrCodeService;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private EmailService emailService;

// SAVE STUDENT
	@Override
	public Student saveStudent(Student student) {

		// 1. Save student first
		// Database generates studentId
		Student savedStudent = repository.save(student);

		// 2. Generate QR Code
		String qrPath = qrCodeService.generateQRCode(savedStudent);

		// 3. Save QR path in student
		savedStudent.setQrCodePath(qrPath);
		
	      // Encode password before saving
        String encodedPassword = passwordEncoder.encode(student.getPassword());

        // Set encoded password
        student.setPassword(encodedPassword);

		// 4. Save student again
		repository.save(savedStudent);

//   

		// 4. Send registration email
		emailService.sendRegistrationEmail(savedStudent, qrPath);

		return savedStudent;
	}

// GET STUDENT BY ID

	@GKLog
	@Override
	public StudentResponse getStudent(Long id) {

		Student student = repository.findById(id)
				.orElseThrow(() -> new StudentNotFoundException("Student Not Found with ID: " + id));

		return map(student);
	}

	@GKLog
// GET ALL STUDENTS
	@Override
	public List<StudentResponse> getAllStudents() {

		return repository.findAll().stream().map(this::map).toList();
	}

// UPDATE STUDENT
	@GKLog
	@Override
	public StudentResponse updateStudent(Long id, StudentRequest request) {

		Student student = repository.findById(id)
				.orElseThrow(() -> new StudentNotFoundException("Student Not Found with ID: " + id));

		student.setStudentName(request.getStudentName());

		student.setCourse(request.getCourse());

		student.setBranch(request.getBranch());

		student.setEmail(request.getEmail());

		student.setPhone(request.getPhone());

		student.setFeesPaid(request.getFeesPaid());

		student.setRemainingFees(request.getRemainingFees());

		repository.save(student);

		return map(student);
	}

// DELETE STUDENT
	@Override
	public void deleteStudent(Long id) {

		// 1. Find student
		Student student = repository.findById(id)
				.orElseThrow(() -> new StudentNotFoundException("Student Not Found with ID: " + id));

		// 2. Get QR path
		String qrCodePath = student.getQrCodePath();

		// 3. Delete QR code
		qrCodeService.deleteQRCode(qrCodePath);

		// 4. Delete student from database
		repository.delete(student);
	}
	// ENTITY -> DTO MAPPING

	private StudentResponse map(Student student) {

		return StudentResponse.builder()

				.studentId(student.getStudentId())

				.studentName(student.getStudentName())

				.course(student.getCourse())

				.branch(student.getBranch())

				.email(student.getEmail())

				.phone(student.getPhone())

				.feesPaid(student.getFeesPaid())

				.remainingFees(student.getRemainingFees())

				.joiningDate(student.getJoiningDate())

				.qrCodePath(student.getQrCodePath())

				.build();
	}

}