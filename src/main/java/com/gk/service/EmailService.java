package com.gk.service;

import com.gk.entity.Student;

public interface EmailService {

	void sendRegistrationEmail(Student student, String qrCodePath);

}