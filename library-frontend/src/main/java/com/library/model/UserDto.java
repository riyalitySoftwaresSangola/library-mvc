package com.library.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {

	
	
	private String username;
	private String Email;
	private int phone_number;
	private String passwoard ;
	private String role;	
	
	
}



