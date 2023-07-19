package com.spring.mapper;

import java.util.List;

import com.spring.domain.CommunityDTO;

public interface CommunityMapper {
	
	List<CommunityDTO> SelectCommunityList();
	
	int InsertCommunity(CommunityDTO communityDTO);

}