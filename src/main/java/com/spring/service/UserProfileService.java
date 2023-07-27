package com.spring.service;

import com.spring.domain.UserProfileDTO;

public interface UserProfileService {
	
	int setUserProfile(UserProfileDTO user);
	
	int changeUserProfile(UserProfileDTO user);
	
	int deleteUserProfile(UserProfileDTO user);
	
	UserProfileDTO getUserProfile(String user_id);
}
