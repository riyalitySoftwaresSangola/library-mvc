package com.library.ServiceImplimentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.library.model.BookRequestDTO;
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
            BookRequestDTO response = restTemplate.postForObject(
                BOOK_API_URL, 
                request, 
                BookRequestDTO.class);
            
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
}