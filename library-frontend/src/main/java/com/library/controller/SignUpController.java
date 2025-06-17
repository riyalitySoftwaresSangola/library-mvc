package com.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.ServiceImplimentation.ServiceImplimentation;
import com.library.model.SignupValidationResponseDto;
import com.library.model.UserDto;



@Controller
public class SignUpController {
	
	@Autowired
	private ServiceImplimentation signupService;
	@GetMapping("/AddLibrarian")
	public String addLibrarian(){
		return "addLibrarian";
		
		
	}
	
	
	@PostMapping("/signup")
	public String signupPage(@ModelAttribute UserDto user, Model model) {
	    System.out.println(user.getUsername());

	    SignupValidationResponseDto response = signupService.signup(user);
	    
	    
	    model.addAttribute("formSubmitted", true);  // <--- flag to control alerts

	    // Use JS alert message
	    if (!response.isSuccess()) {
	        model.addAttribute("alertMessage", response.getMessage());
	        return "SignUpPage";  // return same page to show alert
	    }

	    // If success
	    model.addAttribute("alertMessage", response.getMessage());
	    return "loginPage";
	}

	
	
	
     
   
     
}
