package com.gk.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gk.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}