package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.UserProfileDTO;

public interface UserProfileMapper {
	
//	user_id로 UserProfile 있는지 확인
	int selectUserProfileCnt(String user_id);
	 	
//	user_id로 UserProfile Select
	UserProfileDTO selectUserProfile(String user_id);
	
//	UserProfile 추가 
	int insertUserProfile(UserProfileDTO userProfile);
	
//	user_id의 intro 정보 변경
	int updateUserProfileIntro(@Param("user_id") String user_id, @Param("intro") String intro);
	
//	user_id의 프사 변경
	int updateUserProfileImg(@Param("user_id") String user_id, @Param("img") String img);
	
//	user_id의 UserProfile 삭제
	int deleteUserProfile(String user_id);
}
