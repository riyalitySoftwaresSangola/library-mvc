package com.library.ServiceImplimentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.function.ServerRequest.Headers;

import com.library.model.LibrarianDTO;
import com.library.model.LibrarianResponseDTO;
import com.library.serviceLearys.LibrarianServiceInterface;

@Service
public class LibrarianServiceImpl implements LibrarianServiceInterface {

	@Autowired
	private RestTemplate restTemplate;

	@Override
	public LibrarianDTO librarianInfo(LibrarianDTO librarian) {
		
		System.out.println(librarian.getDateOfBirth());
		System.out.println(librarian.getPhoneNumber());

		final String url = "http://localhost:8181/addlibririyan/addlibririyan";

		HttpHeaders Headers = new HttpHeaders();
		Headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<LibrarianDTO> request = new HttpEntity<>(librarian, Headers);

		String responce = restTemplate.postForObject(url, request, String.class);

		return null;
	}

	@Override
	public LibrarianResponseDTO getAllLibrarians() {
		final String url = "http://localhost:8181/addlibririyan/getAllLibrarian"; // ✅ Your working backend API

		ResponseEntity<LibrarianResponseDTO> response = restTemplate.exchange(url, HttpMethod.GET, null,
				LibrarianResponseDTO.class);

		return response.getBody();
	}

	@Override
	public LibrarianDTO getLibrarianById(LibrarianResponseDTO librarianResponseDTO) {
		
		final String url = "http://localhost:8181/addlibririyan/update/"+ librarianResponseDTO.getId();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<LibrarianResponseDTO> request = new HttpEntity<>(librarianResponseDTO, headers);
		try {
			ResponseEntity<LibrarianDTO> response = restTemplate.exchange(url, HttpMethod.POST, request,
					LibrarianDTO.class);

			return response.getBody();

		} catch (HttpClientErrorException | HttpServerErrorException ex) {
			System.err.println("❌ Error fetching librarian: " + ex.getMessage());
			throw new RuntimeException("Librarian not found with ID: " + librarianResponseDTO.getId());
		}
	}

	@Override
	public void deletById(LibrarianResponseDTO librarianResponseDTO) {
		String url = "http://localhost:8181/delete/" + librarianResponseDTO.getId();
	    restTemplate.delete(url);
		
	}

	
			
	}


