package com.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.model.StudentInfoDto;
import com.library.model.StudentResponceDto;
import com.library.serviceLearys.StudentinfoInterface;

@Controller

public class StudentController {
	@Autowired
	private StudentinfoInterface studentinfoInterface;

	@GetMapping("/AddUser")
	public String add() {
		return "addUser";
	}

	@PostMapping("/AddUser")
	public String adduser(@ModelAttribute StudentInfoDto studentInfoDto, Model model) {

		StudentInfoDto response = studentinfoInterface.Studentinfo(studentInfoDto);
		model.addAttribute("message", response);

		return "index";

	}

	@GetMapping("/getallStudents")
	public String getallStudent(Model model) {
		List<StudentResponceDto> student = studentinfoInterface.getallStudent();

		model.addAttribute("student", student);

		return "ShowAllStudents";

	}

	@GetMapping("/getid{id}")
	public String getid(@RequestParam(name = "id", required = false) Integer id, Model model) {

		System.out.println(id);
		StudentResponceDto student = studentinfoInterface.getid(id);
		
		System.out.println("the student data" +student);
		System.out.println("the student data" +student.getId());
		model.addAttribute("student", student);
		System.out.println("this is the mvc student controller "+student);
		
		return "viewStudent";
	}
	
	@PostMapping("/updateStudent")
	public String updateStudent(@ModelAttribute StudentResponceDto studentDto) {
	    studentinfoInterface.updateStudent(studentDto);
	    return "redirect:/getallStudents"; // go back to list after update
	}
	
	 @PostMapping("/deletestudent")
	    public String deleteStudent(@RequestParam("id") int id) {
		 studentinfoInterface.softDeleteStudent(id);
	        return "redirect:/getallStudents"; // refresh list after delete
	    }

}
