package com.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
//@RequestMapping("")
public class HomeController {

	@GetMapping("/")
	public String getIndex() {
		System.out.println("library ");
		return "index";
		
  }
	
		
		
	}
	
	
		

