package com.gk.entity;

import java.time.LocalDate;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

import lombok.*;

@Entity
@Table(name = "student_tbl")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long studentId;

	@NotBlank
	@Column(nullable = false, length = 50)
	private String studentName;

	@NotBlank
	private String course;

	@NotBlank
	private String branch;

	@Email
	@Column(unique = false)
	private String email;

	@Column(nullable = false)
	private String password;

	@Column(unique = false)
	private String phone;

	@PositiveOrZero
	private Double feesPaid;

	@PositiveOrZero
	private Double remainingFees;

	private LocalDate joiningDate;

	private String qrCodePath;
}