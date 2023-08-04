package com.spring.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.UserDTO;

public interface UserService {

	int InsertJoin(UserDTO userDTO);

	UserDTO login(UserDTO userDTO);

	boolean isPasswordMatched(String rawPassword, String encodedPassword);

	UserDTO selectUserById(String user_id);
	
	int updateUser(@Param("user_id") String user_id, @Param("pwd") String pwd);
	
	int deleteUser(String user_id);

	List<String> getUsersByUserId(String keyword);

	String findId(@Param("name")String name, @Param("jumin")String jumin);

	boolean checkUser(String user_id, String name, String jumin);

	boolean updatePasswordForReset(@Param("userId")String userId, @Param("newPassword")String newPassword);
	
	List<UserDTO> getAllUsers();

}
