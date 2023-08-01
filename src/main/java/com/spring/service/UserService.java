package com.spring.service;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.UserDTO;

public interface UserService {

	int InsertJoin(UserDTO userDTO);

	UserDTO login(UserDTO userDTO);

	boolean isPasswordMatched(String rawPassword, String encodedPassword);

	UserDTO selectUserById(String user_id);
	
	int updateUser(@Param("user_id") String user_id, @Param("pwd") String pwd);
	
	int deleteUser(String user_id);	

}
