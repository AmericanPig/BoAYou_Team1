package com.spring.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.spring.domain.UserDTO;

public interface UserMapper {

	int InsertJoin(UserDTO userDTO);
	
	int checkId(String user_id);
	
	UserDTO login(UserDTO userDTO);

	UserDTO selectUserById(String user_id);
	
	int changeUserByIdPwd(@Param("user_id") String user_id, @Param("pwd") String pwd);
	
	int deleteUserById(String user_id);
	
	List<String> getUsersByUserId(String keyword);
	
	String findId(@Param("name")String name, @Param("jumin")String jumin);
	
	String checkUser(@Param("user_id") String user_id, @Param("name") String name, @Param("jumin") String jumin);

	int updateUserPassword(@Param("userId")String userId, @Param("newPassword")String newPassword);
}
