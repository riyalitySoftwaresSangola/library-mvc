package com.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.library.model.BookRequestDTO;
import com.library.model.BookResponceDto;
import com.library.serviceLearys.BookServiceInterfaceMvc;

@Controller
public class BookControllerMvc {

	@Autowired
	private BookServiceInterfaceMvc bookService;

	@GetMapping("/AddBooks")
	public String showAddBookForm(Model model) {
		model.addAttribute("book", new BookRequestDTO());
		return "addBooks";
	}

	@PostMapping("/AddNewBooks")
	public String addBook(@ModelAttribute("book") BookRequestDTO bookDto, BindingResult result,
			RedirectAttributes redirectAttributes) {

		try {
			BookRequestDTO savedBook = bookService.createBook(bookDto);
			redirectAttributes.addFlashAttribute("success", "Book '" + savedBook.getTitle() + "' added successfully!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("error", "Failed to add book: " + e.getMessage());
		}

		return "redirect:/AddBooks";
	}

	@GetMapping("/getAllBooks")
	public String getAllBoos(Model model) {
		List<BookResponceDto> data = bookService.getAllBooks();

		model.addAttribute("book", data);

		return "viewBooks";
	}
	@GetMapping("/getbookbyid/{id}")
	public String getByid(@PathVariable("id")  Long id ,Model model) {
		
		System.out.println("this is the is of book "+id);
		BookResponceDto book = bookService.getid(id);
		
	model.addAttribute("book" ,book);
		
	System.out.println("this si the book by id "+book);
		
		return "updatebook";
		
	}
}