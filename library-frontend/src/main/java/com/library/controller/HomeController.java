package com.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller

public class HomeController {



	@PostMapping("/Submmit")
	public String loginpage() {
		System.out.println("library ");
		return "index";
		
		
		
  }
	
	
	@GetMapping("/librarianButton")
	public String librarianbutton(){
		return "librarianButton";
		
		
	}
	@GetMapping("/showLibrarian")
	public String addLibrarian() {
		return "showLibririyan";
		
	}
	
	
	
}



