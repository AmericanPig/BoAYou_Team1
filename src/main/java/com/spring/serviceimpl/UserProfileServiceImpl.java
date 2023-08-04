package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.domain.MyMovieListDTO;
import com.spring.domain.UserProfileDTO;
import com.spring.mapper.UserProfileMapper;
import com.spring.service.UserProfileService;

@Service
public class UserProfileServiceImpl implements UserProfileService{
	
	@Autowired
	UserProfileMapper mapper;
	
	//user의 UserProfile이 존재하지않으면 프로필 생성
	public int setUserProfile(UserProfileDTO user) {
		int result = 0;
		String user_id = user.getUser_id();
		int profileFlag = mapper.selectUserProfileCnt(user_id);
		switch(profileFlag) {
		case 0:
			user.setIntro(user_id + " 님의 소개글입니다.");
			result = mapper.insertUserProfile(user);
			break;
		case 1:
			System.out.println(user_id+" 님의 프로필이 이미 존재함");
		}
		return result;
	}
	
	//UserProfileDTO의 user_id에 해당하는 프로필 정보 변경
	public int changeUserProfile(UserProfileDTO user) {
		int result = 0;
		String user_id = user.getUser_id();
		String img = user.getImg();
		String intro = user.getIntro();
		System.out.println(user);
		
		if(img.length()>0) {
			result += mapper.updateUserProfileImg(user_id, img);
			System.out.println("프사 변경성공");
		}
		if(intro.length()>0) {
			result += mapper.updateUserProfileIntro(user_id, intro);
			System.out.println("소개글 변경성공");
		}
		System.out.println(user_id + "의 프로필 정보 중 " + result + "개의 정보 변경성공");
		return result;
	}
	
	//user에 해당하는 프로필 삭제
	public int deleteUserProfile(UserProfileDTO user) {
		int result = 0;
		String user_id = user.getUser_id();
		result = mapper.deleteUserProfile(user_id);
		System.out.println(result + "개의 프로필 삭제성공");
		
		return result;
	}
	
	//user_id의 프로필 불러오기
	public UserProfileDTO getUserProfile(String user_id) {
		return mapper.selectUserProfile(user_id);
	}
	
	//user_id의 나만의 무비 리스트 불러오기
	@Override
	public List<MyMovieListDTO> selectMyMovieList(String user_id){
		return mapper.selectMyMovieList(user_id);
	}
	
	//나만의 무비리스트 추가
	@Override
	public int insertMyMovieList(String movielist_name, String user_id, String docid) {		
		return mapper.insertMyMovieList(movielist_name, user_id, docid);
	}
	
	//나만의 무비리스트 삭제
	@Override
	public int deleteMyMovieList(int mymovielist_no) {		
		return mapper.deleteMyMovieList(mymovielist_no);
	}
	
	//모든 유저 프로필 init
	@Override
	public List<UserProfileDTO> getAllUserProfiles(){
		return mapper.selectAllUserProfiles();
	}
}
