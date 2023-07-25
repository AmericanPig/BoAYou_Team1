package com.spring.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.UserDTO;

public interface UserMapper {

	int InsertJoin(UserDTO userDTO);
	
	int checkId(String user_id);
	
	UserDTO login(UserDTO userDTO);

	UserDTO selectUserById(String user_id);
	
	int changeUserByIdPwd(@Param("user_id") String user_id, @Param("pwd") String pwd);
	
	int deleteUserById(String user_id);
}
