package com.gk.dto;

import lombok.Data;

@Data
public class StudentRequest {

	private String studentName;

	private String course;

	private String branch;

	private String email;

	private String phone;

	private Double feesPaid;

	private Double remainingFees;

}
