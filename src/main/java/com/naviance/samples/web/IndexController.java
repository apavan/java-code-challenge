package com.naviance.samples.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.naviance.samples.domain.model.Student;
import com.naviance.samples.domain.model.StudentRepository;
import com.naviance.samples.persistence.StaticStudentRepository;

@Controller
public class IndexController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexAction() {
		return "index";
	}

	@RequestMapping(value = "/rank-and-decile", method = RequestMethod.GET)
	public String rankAndDecileAction(Model model) {

		Map<String, String> studentList = new HashMap<String, String>();
		StudentRepository studentRepo = new StaticStudentRepository();
		List<Student> students = studentRepo.findAll();
		for (Student studentModel : students) {
			studentList
					.put(studentModel.getStudentId(), studentModel.getName());
		}
		model.addAttribute("studentList", studentList);
		return "rank";
	}

	@RequestMapping(value = "/rank-and-decile", method = RequestMethod.POST)
	public String generateRankReportAction(@RequestParam String student,
			Model model) {
		model.addAttribute("studentId", student);
		Map<String, String> studentList = new HashMap<String, String>();
		StudentRepository studentRepo = new StaticStudentRepository();
		List<Student> students = studentRepo.findAll();
		for (Student studentModel : students) {
			studentList
					.put(studentModel.getStudentId(), studentModel.getName());
		}
		model.addAttribute("studentList", studentList);
		return "rank";
	}

}