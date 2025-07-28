package com.library.ServiceImplimentation;


import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.library.model.StudentInfoDto;
import com.library.model.StudentResponceDto;
import com.library.serviceLearys.StudentinfoInterface;

@Service
public class StudentServiceImplimention implements StudentinfoInterface  {
	
	@Autowired
	private RestTemplate restTemplate;

	@Override
	public StudentInfoDto Studentinfo(StudentInfoDto studentInfoDto) {
		
		final String url = "http://localhost:8181/Student/AddStudent";
		HttpHeaders Headers = new HttpHeaders();
		Headers.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<StudentInfoDto> request = new HttpEntity<>(studentInfoDto ,Headers);
		String responce = restTemplate.postForObject(url, request, String.class);
		
		
		return null;
	}

	@Override
	public List<StudentResponceDto> getallStudent() {
	    final String url = "http://localhost:8181/Student/getAllStudent";

	    // Fetch array of StudentResponceDto
	    StudentResponceDto[] dtoArray = restTemplate.getForObject(url, StudentResponceDto[].class);

	    // Convert array to list
	    List<StudentResponceDto> responcelist = Arrays.asList(dtoArray);

	    // Print each student data
//	    System.out.println("---- All Student Data ----");
	    for (StudentResponceDto student : responcelist) {
//	        System.out.println(student);
	    }

	    return responcelist;
	}

	@Override
	public StudentResponceDto getid(int id) {
		final String url = "http://localhost:8181/Student/getById/"+id;
		
		StudentResponceDto  dto = restTemplate.getForObject(url, StudentResponceDto.class);
		return dto;
	}

	@Override
	public StudentResponceDto updateStudent(StudentResponceDto dto) {
	    String url = "http://localhost:8181/Student/update"; 
	    HttpEntity<StudentResponceDto> request = new HttpEntity<>(dto);
	    ResponseEntity<StudentResponceDto> response = restTemplate.exchange(
	        url,
	        HttpMethod.PUT,
	        request,
	        StudentResponceDto.class
	    );
	    return response.getBody();
	}

	@Override
	public void softDeleteStudent(int id) {
		String url = "http://localhost:8181/Student/softDelete";
		  RestTemplate restTemplate = new RestTemplate();
	        restTemplate.postForObject(url + id, HttpMethod.POST, String.class);
		
	}


}
