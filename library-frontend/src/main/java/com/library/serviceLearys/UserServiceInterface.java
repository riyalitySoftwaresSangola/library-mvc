package com.library.serviceLearys;

import com.library.model.SignupValidationResponseDto;
import com.library.model.UserDto;
import com.library.model.UserLoginDto;
import com.library.model.UserResponceDto;

public interface UserServiceInterface {

	SignupValidationResponseDto signup(UserDto user);

	UserResponceDto loginpage(UserLoginDto user);
	
	
	
	

}
