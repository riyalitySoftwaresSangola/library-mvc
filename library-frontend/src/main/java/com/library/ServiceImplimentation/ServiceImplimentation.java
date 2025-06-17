package com.library.ServiceImplimentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.library.model.SignupValidationResponseDto;
import com.library.model.UserDto;
import com.library.model.UserLoginDto;
import com.library.model.UserResponceDto;
import com.library.serviceLearys.UserServiceInterface;

@Service
public class ServiceImplimentation implements UserServiceInterface {

	@Autowired
	private RestTemplate restTemplate;

	@Override
	public SignupValidationResponseDto signup(UserDto user) {
		
		final String url = "http://localhost:8181/SignUpController/sigunup"; // ✅ Add http://

	    // 1. Set headers
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_JSON); // application/json

	    // 2. Create HttpEntity with headers + body
	    HttpEntity<UserDto> request = new HttpEntity<>(user, headers);

	    // 3. Send POST request to Boot controller
	    SignupValidationResponseDto response = restTemplate.postForObject(url, request, SignupValidationResponseDto.class);

	    // 4. Return response from backend
	    return response;

			
		
		

	}

	@Override
	public UserResponceDto loginpage(UserLoginDto userLoginDto) {
    
		final String url = "http://localhost:8181/LoginController/addloginuser";
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<UserLoginDto> httploginrequest = new HttpEntity <>(userLoginDto , headers );
		
		UserResponceDto  httploginresponce = restTemplate.postForObject(url, httploginrequest, UserResponceDto.class);
		
		System.out.println(httploginresponce);
	   return httploginresponce;
	}





	
	
	
	
}
