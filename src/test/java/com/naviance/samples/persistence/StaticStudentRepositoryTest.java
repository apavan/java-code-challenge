package com.naviance.samples.persistence;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import com.naviance.samples.domain.model.*;

public class StaticStudentRepositoryTest {

	public final static String VALID_STUDENT_NAME = "Optimus Prime";
	public final static String VALID_STUDENT_ID = "9912345US";
	public final static double VALID_STUDENT_GPA = 4.0;

	@Test
	public void findAllReturnsStaticDataList() {
		StudentRepository studentRepo = new StaticStudentRepository();
		List<Student> students = studentRepo.findAll();
		assertEquals(25, students.size());
		Student student1 = students.get(0);
		assertEquals("student1.getName",
				StaticStudentRepositoryTest.VALID_STUDENT_NAME,
				student1.getName());
		assertEquals("student1.getGpa",
				StaticStudentRepositoryTest.VALID_STUDENT_GPA,
				student1.getGpa());
		assertEquals("student1.getId",
				StaticStudentRepositoryTest.VALID_STUDENT_ID,
				student1.getStudentId());

	}

}
