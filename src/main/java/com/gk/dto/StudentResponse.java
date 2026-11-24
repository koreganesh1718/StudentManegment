package com.gk.dto;

import java.time.LocalDate;

import lombok.*;

@Data
@Builder
public class StudentResponse {

	private Long studentId;

	private String studentName;

	private String course;

	private String branch;

	private String email;

	private String phone;

	private Double feesPaid;

	private Double remainingFees;

	private LocalDate joiningDate;

	private String qrCodePath;

}