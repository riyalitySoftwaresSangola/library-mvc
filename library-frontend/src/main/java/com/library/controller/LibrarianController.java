package com.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.ServiceImplimentation.ServiceImplimentation;
import com.library.model.LibrarianDTO;
import com.library.model.LibrarianResponseDTO;
import com.library.model.UserDto;
import com.library.serviceLearys.LibrarianServiceInterface;

@Controller
public class LibrarianController {
	@Autowired
	private LibrarianServiceInterface librarianServiceInterface;

	@PostMapping("/SignUpPage")
	public String showsignuppage() {

		return "SignUpPage";

	}

	@PostMapping("/Librarian")
	public String signupPage(@ModelAttribute LibrarianDTO librarian, Model model) {

		System.out.println(librarian.getUsername());
		System.out.println("this is the mvc controller" + librarian.getPhoneNumber());
		System.out.println(librarian.getDateOfBirth());

		LibrarianDTO response = librarianServiceInterface.librarianInfo(librarian);

		model.addAttribute("message", response);

		return "index";

	}

	@GetMapping("/LibrarianViwe")
	public String showLibrarian(Model model) {

		LibrarianResponseDTO response = librarianServiceInterface.getAllLibrarians();

		model.addAttribute("librarian", response); // send to JSP

		return "showLibririyan"; // → /WEB-INF/views/librarian-details.jsp
	}

	@PostMapping("/updateLibrarian")
	public String showUpdateForm(@ModelAttribute LibrarianResponseDTO librarianDTO, Model model) {

		System.out.println("this is libriryan update controller ");

		System.out.println("👤 DTO from form: " + librarianDTO);

		System.out.println("Email from form: " + librarianDTO.getEmail());

		LibrarianDTO librarian = librarianServiceInterface.getLibrarianById(librarianDTO);
		model.addAttribute("librarian", librarian);
		return "index"; // this is your JSP form
	}
	@PostMapping("//deleteLibrarian")
	public String deleteLibrarian(@ModelAttribute LibrarianResponseDTO librarianResponseDTO,Model model ) {
		
		 librarianServiceInterface.deletById(librarianResponseDTO);
		
		return "index";
		
		
	}

}
