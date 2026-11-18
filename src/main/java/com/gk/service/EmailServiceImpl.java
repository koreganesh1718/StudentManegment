package com.gk.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.gk.entity.Student;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailServiceImpl implements EmailService {

	private final JavaMailSender mailSender;

	public EmailServiceImpl(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	// =====================================================
	// REGISTRATION EMAIL
	// =====================================================

	@Override
	public void sendRegistrationEmail(Student student, String qrCodePath) {

		try {

			MimeMessage message = mailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setTo(student.getEmail());

			helper.setSubject("Student Registration Successful");

			String body = "Hello " + student.getStudentName() + ",\n\n"
					+ "Your registration has been completed successfully.\n\n" + "Student ID: " + student.getStudentId()
					+ "\n" + "Name: " + student.getStudentName() + "\n" + "Course: " + student.getCourse() + "\n"
					+ "Branch: " + student.getBranch() + "\n\n" + "Your QR Code is attached with this email.\n\n"
					+ "Thank you.";

			helper.setText(body);

			File qrFile = new File(qrCodePath);

			if (qrFile.exists()) {

				FileSystemResource resource = new FileSystemResource(qrFile);

				helper.addAttachment(qrFile.getName(), resource);
			}

			mailSender.send(message);

		} catch (MessagingException e) {

			e.printStackTrace();
		}
	}

}