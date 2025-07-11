package com.library.serviceLearys;

import com.library.model.LibrarianDTO;
import com.library.model.LibrarianResponseDTO;


public interface LibrarianServiceInterface {

	LibrarianDTO librarianInfo(LibrarianDTO librarian);

	LibrarianResponseDTO getAllLibrarians();

	LibrarianDTO getLibrarianById(LibrarianResponseDTO librarianDTO);


	void deletById(LibrarianResponseDTO librarianResponseDTO);

	
	
	
}
