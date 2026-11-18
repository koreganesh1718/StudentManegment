package com.gk.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {

	// Student Not Found
	@ExceptionHandler(StudentNotFoundException.class)
	public String handleStudentNotFound(StudentNotFoundException ex, Model model) {

		model.addAttribute("message", ex.getMessage());

		return "studentNotFound";
	}

	// Wrong URL (404)
	@ExceptionHandler(NoHandlerFoundException.class)
	public String handle404(Model model) {

		model.addAttribute("message", "The page you are looking for does not exist.");

		return "404";
	}

	// Internal Server Error (500)
	@ExceptionHandler(RuntimeException.class)
	public String handle500(RuntimeException ex, Model model) {

		model.addAttribute("message", "Internal Server Error. Please try again later.");

		return "500";
	}

	// Any Other Exception
	@ExceptionHandler(Exception.class)
	public String handleException(Exception ex, Model model) {

		model.addAttribute("message", "Something went wrong. Please contact administrator.");

		return "error";
	}

}