package com.spring.mapper;

import java.util.Map;

import com.spring.domain.UserDTO;

public interface UserMapper {

	int InsertJoin(UserDTO userDTO);
	
	int checkId(String user_id);
	
	UserDTO login(UserDTO userDTO);

	UserDTO selectUserById(String user_id);
	
	int changeUserByIdPwd(String user_id, String pwd);
	
	int deleteUserById(String user_id);
}
