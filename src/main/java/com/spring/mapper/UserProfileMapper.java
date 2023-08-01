package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.UserProfileDTO;
import com.spring.domain.MyMovieListDTO;

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
	
//	user_id의 나만의 무비 리스트 검색
	List<MyMovieListDTO> selectMyMovieList(String user_id);
	
//	user_id와 docid로 나만의 무비리스트 추가
	int insertMyMovieList(@Param("user_id") String user_id, @Param("docid") String docid);
	
//  user_id와 docid로 나만의 무비리스트 삭제
	int deleteMyMovieList(@Param("user_id") String user_id, @Param("docid") String docid);
}
