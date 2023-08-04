package com.spring.service;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.spring.domain.MyMovieListDTO;
import com.spring.domain.UserProfileDTO;

public interface UserProfileService {
	
	int setUserProfile(UserProfileDTO user);
	
	int changeUserProfile(UserProfileDTO user);
	
	int deleteUserProfile(UserProfileDTO user);
	
	UserProfileDTO getUserProfile(String user_id);

	List<MyMovieListDTO> selectMyMovieList(String user_id);

	int insertMyMovieList(@Param("movielist_name")String movielist_name, @Param("user_id") String user_id, @Param("docid") String docid);

	int deleteMyMovieList(int mymovielist_no);		
	
	List<UserProfileDTO> getAllUserProfiles();
}
