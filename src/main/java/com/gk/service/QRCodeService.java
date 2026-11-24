package com.gk.service;

import com.gk.entity.Student;

public interface QRCodeService {

	String generateQRCode(Student student);

	void deleteQRCode(String qrCodePath);

}