package com.spring.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.CommunityDTO;
import com.spring.domain.MemberShipDTO;
import com.spring.domain.UserDTO;
import com.spring.util.PageMaker;

public interface AdminMapper {
	
	List<UserDTO> selectUserList(PageMaker pageMaker);
	List<CommunityDTO> selectCommunityList(PageMaker pageMaker);
	List<MemberShipDTO> membershipList(PageMaker pageMaker);  
	
    int deleteUserList(Map<String, Object> paramMap);
    int deleteCommunityList(Map<String, Object> paramMap);
    int updateUserLevel(@Param("user_id") String user_id, @Param("user_level") int user_level);

}
