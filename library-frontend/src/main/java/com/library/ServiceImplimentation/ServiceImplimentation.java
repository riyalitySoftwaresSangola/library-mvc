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
	public UserResponceDto loginpage(UserLoginDto userLoginDto) {
    
		final String url = "http://localhost:8181/LoginController/addloginuser";
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		HttpEntity<UserLoginDto> httploginrequest = new HttpEntity <>(userLoginDto , headers );
		
		UserResponceDto  httploginresponce = restTemplate.postForObject(url, httploginrequest, UserResponceDto.class);
		
		System.out.println(httploginresponce);
	   return httploginresponce;
	}



	@Override
	public SignupValidationResponseDto signup(UserDto user) {
		// TODO Auto-generated method stub
		return null;
	}





	
	
	
	
}
