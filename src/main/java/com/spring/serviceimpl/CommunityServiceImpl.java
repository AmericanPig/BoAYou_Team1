package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CommunityDTO;
import com.spring.mapper.CommunityMapper;
import com.spring.service.CommunityService;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityMapper mapper;
	
	@Override
	public int InsertCommunity(CommunityDTO communityDTO) {
		
		return mapper.InsertCommunity(communityDTO);
	}
	@Override
	public List<CommunityDTO> SelectCommunityList(){
		
		return mapper.SelectCommunityList();
	}
	@Override
	public int DeleteCommunity(CommunityDTO communityDTO) {
		return mapper.DeleteCommunity(communityDTO);
	}
	@Override
	public List<CommunityDTO> CommunityRanking(){
		return mapper.CommunityRanking();
	}
	@Override
	public List<CommunityDTO> selectCommunityById(String user_id){
		return mapper.selectCommunityById(user_id);
	}
}
