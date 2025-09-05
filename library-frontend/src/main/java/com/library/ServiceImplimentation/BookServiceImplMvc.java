package com.library.ServiceImplimentation;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.library.model.BookRequestDTO;
import com.library.model.BookResponceDto;
import com.library.model.StudentResponceDto;
import com.library.serviceLearys.BookServiceInterfaceMvc;

@Service
public class BookServiceImplMvc implements BookServiceInterfaceMvc {

	@Autowired
	private RestTemplate restTemplate;

	private static final String BOOK_API_URL = "http://localhost:8181/Book/AddBook";

	@Override
	public BookRequestDTO createBook(BookRequestDTO bookDto) {
		try {
			// 1. Log the incoming request data
			System.out.println("Creating book with data: " + bookDto.toString());

			// 2. Set up headers
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON);

			// 3. Create request entity
			HttpEntity<BookRequestDTO> request = new HttpEntity<>(bookDto, headers);

			// 4. Log the API endpoint being called
			System.out.println("Calling API endpoint: " + BOOK_API_URL);

			// 5. Make the POST request (simplified like your signup example)
			BookRequestDTO response = restTemplate.postForObject(BOOK_API_URL, request, BookRequestDTO.class);

			// 6. Log successful response
			System.out.println("Book created successfully: " + response);

			return response;

		} catch (Exception e) {
			// 7. Log the full error details
			System.err.println("Error creating book: " + e.getMessage());
			e.printStackTrace();

			throw new RuntimeException("Failed to create book: " + e.getMessage());
		}
	}

	@Override
	public List<BookResponceDto> getAllBooks() {

		// Backend URL
		final String url = "http://localhost:8181/Book/getAllBooks";

		// Call backend API and get list of books
		ResponseEntity<List<BookResponceDto>> response = restTemplate.exchange(url, HttpMethod.GET, null,
				new ParameterizedTypeReference<List<BookResponceDto>>() {
				});

		// Extract the body (actual list of books)
		List<BookResponceDto> bookList = response.getBody();

		System.out.println(bookList);

		// Print each book (optional)
		if (bookList != null) {
			for (BookResponceDto book : bookList) {
				System.out.println(book);
			}
		}

		return bookList;
	}

	@Override
	public BookResponceDto getid(Long id) {
		 final String url = "http://localhost:8181/Book/getById/" + id;

		BookResponceDto book = restTemplate.getForObject(url, BookResponceDto.class);

		return book;
	}
}