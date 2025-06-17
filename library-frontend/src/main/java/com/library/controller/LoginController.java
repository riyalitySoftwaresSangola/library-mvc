package com.library.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.library.model.UserLoginDto;
import com.library.model.UserResponceDto;
import com.library.serviceLearys.UserServiceInterface;

@Controller
public class LoginController {

	@Autowired
	private UserServiceInterface userServiceInterface;
	
	
	
	
	@GetMapping("/")
	public String ShowLoginPage() {
		return "loginPage";
	}
	
	@PostMapping("/login")
	public String loginpage(@ModelAttribute UserLoginDto user,Model model , HttpSession session) {
		
		UserResponceDto data = userServiceInterface.loginpage(user);
		
		
		
		String role = data.getRole(); // "ADMIN", "LIBRARIAN", or "USER"
		
		
		
		
		if (data != null) {
			
			

			session.setAttribute("username", data.getUsername());
			session.setAttribute("role", data.getRole());
			
			System.out.println(data.getUsername());
			System.out.println(data.getRole());
			
			return "index" ;
		}
		
		return "login" ;
		
	}
}
