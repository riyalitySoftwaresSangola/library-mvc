package com.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.library.ServiceImplimentation.ServiceImplimentation;
import com.library.model.UserDto;

@Controller
public class AddLibrarian {


	@Autowired
	private ServiceImplimentation signupService;
		
	@GetMapping("/SignUpPage")
	public String showsignuppage(){
	
		return "SignUpPage";
			
	}
	
	
	@PostMapping("/addLibrarian")
	public String signupPage(@ModelAttribute  UserDto user , Model model) {
		
		System.out.println(user.getUsername());
		
		
		String response=signupService.signup(user);
		model.addAttribute("message", response);
		
		return "loginPage";
		
	}
     
   
     
	
}
