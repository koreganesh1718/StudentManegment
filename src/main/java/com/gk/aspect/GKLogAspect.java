package com.gk.aspect;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.gk.annotation.GKLog;

@Aspect
@Component
public class GKLogAspect {

	private static final Logger log = LoggerFactory.getLogger(GKLogAspect.class);

	private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");

	@Around("@annotation(gkLog)")
	public Object logMethod(ProceedingJoinPoint joinPoint, GKLog gkLog) throws Throwable {

		String methodName = joinPoint.getSignature().getName();

		// Starting time
		String startTime = LocalDateTime.now().format(formatter);

		log.info("Method: {} | Start Time: {}", methodName, startTime);

		Object result;

		try {

			result = joinPoint.proceed();

		} catch (Exception e) {

			throw e;
		}

		// Ending time
		String endTime = LocalDateTime.now().format(formatter);

		log.info("Method: {} | End Time: {}", methodName, endTime);

		return result;
	}
}