package com.spring.service;

import java.util.List;

import com.spring.domain.MyMovieListDTO;
import com.spring.domain.UserProfileDTO;

public interface UserProfileService {
	
	int setUserProfile(UserProfileDTO user);
	
	int changeUserProfile(UserProfileDTO user);
	
	int deleteUserProfile(UserProfileDTO user);
	
	UserProfileDTO getUserProfile(String user_id);

	List<MyMovieListDTO> selectMyMovieList(String user_id);

	int insertMyMovieList(String user_id, String docid);

	int deleteMyMovieList(String user_id, String docid);
	
	
}
