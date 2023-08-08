package com.spring.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CommunityDTO;
import com.spring.domain.MemberShipDTO;
import com.spring.domain.UserDTO;
import com.spring.mapper.AdminMapper;
import com.spring.service.AdminService;
import com.spring.util.PageMaker;

@Service
public class AdminServiceImpl implements AdminService {
	 
	@Autowired
	private AdminMapper adminmapper;
	
	@Override
	public List<CommunityDTO> selectCommunityList(PageMaker pageMaker){
		return adminmapper.selectCommunityList(pageMaker);
	}
	
    @Override
    public List<UserDTO> selectUserList(PageMaker pageMaker) {
        return adminmapper.selectUserList(pageMaker);
    }
    

    @Override
    public int deleteUserList(Map<String, Object> paramMap) {
        return adminmapper.deleteUserList(paramMap);
    }
    
    @Override
    public int deleteCommunityList(Map<String, Object> paramMap) {
        return adminmapper.deleteCommunityList(paramMap);
    }

	@Override
	public List<MemberShipDTO> membershipList(PageMaker pageMaker) {
		return adminmapper.membershipList(pageMaker);
	}

	@Override
	public int updateUserLevel(String user_id, int user_level) {
		return adminmapper.updateUserLevel(user_id, user_level);
	}


   
	
}
