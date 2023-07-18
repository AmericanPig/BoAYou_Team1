package com.spring.service;

import com.spring.domain.UserDTO;

public interface UserService {

	int InsertJoin(UserDTO userDTO);

	UserDTO login(UserDTO userDTO);

	boolean isPasswordMatched(String rawPassword, String encodedPassword);

	UserDTO selectUserById(String user_id);

	
	
	

}
