package com.spring.service;

import java.util.List;

import com.spring.domain.CommunityDTO;

public interface CommunityService {

	int InsertCommunity(CommunityDTO communityDTO);

	List<CommunityDTO> SelectCommunityList();

	int DeleteCommunity(CommunityDTO communityDTO);

}