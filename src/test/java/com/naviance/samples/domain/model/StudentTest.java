package com.naviance.samples.domain.model;

import static org.junit.Assert.*;
import org.junit.Test;

import com.naviance.samples.domain.model.Student;

public class StudentTest {

	public final static String VALID_STUDENT_NAME = "Optimus Prime";
	public final static String VALID_STUDENT_ID = "9912345US";
	public final static double VALID_STUDENT_GPA = 3.93;

	@Test
	public void initializeValidStudent() {

		Student student = new Student(StudentTest.VALID_STUDENT_ID,
				StudentTest.VALID_STUDENT_NAME);
		student.setGpa(StudentTest.VALID_STUDENT_GPA);
		assertEquals("getStudentId", StudentTest.VALID_STUDENT_ID,
				student.getStudentId());
		assertEquals("getName", StudentTest.VALID_STUDENT_NAME,
				student.getName());
		assertEquals("getGpa", StudentTest.VALID_STUDENT_GPA, student.getGpa());

	}

}
