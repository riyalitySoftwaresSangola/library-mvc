package com.library.serviceLearys;

import java.util.List;

import org.springframework.stereotype.Service;

import com.library.model.BookRequestDTO;
import com.library.model.BookResponceDto;


public interface BookServiceInterfaceMvc {

	BookRequestDTO createBook(BookRequestDTO bookDto);

	List<BookResponceDto> getAllBooks();

	BookResponceDto getid(Long id);

	
	
	

}
