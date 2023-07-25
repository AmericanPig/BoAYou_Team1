package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;
import com.spring.mapper.SiroyoMapper;
import com.spring.service.SiroyoService;

@Service
public class SiroyoServiceImpl implements SiroyoService{
	
	@Autowired
	private SiroyoMapper mapper;
	
	//커뮤니티 페이지 특정 글의 좋아요 버튼 toggle
	@Override
	public int pushCommunitySiroyo(int community_no, String user_id) {
		int SiroyoFlag = mapper.selectCommunitySiroyoById(community_no, user_id);
		
		switch(SiroyoFlag) {
			
		case 0:
			mapper.insertCommunitySiroyoById(community_no, user_id);
			break;
		case 1:
			mapper.deleteCommunitySiroyoById(community_no, user_id);
			break;
		}
		 int newSoroyoCount = mapper.selectCommunitySiroyoCnt(community_no);
		    return newSoroyoCount;
	}
	
	//커뮤니티 특정 글 페이지 특정 댓글의 좋아요 버튼 toggle
	@Override
	public int pushCommentSiroyo(int comment_no, String user_id) {
		int SiroyoFlag = mapper.selectCommentSiroyoById(comment_no, user_id);
		
		switch(SiroyoFlag) {
			
		case 0:
			mapper.insertCommentSiroyoById(comment_no, user_id);
			break;
		case 1:
			mapper.deleteCommentSiroyoById(comment_no, user_id);
			break;
		}
		int newSoroyoCount = mapper.selectCommentSiroyoCnt(comment_no);
	    return newSoroyoCount;
	}
	
	//커뮤니티 페이지 특정 글의 누적 시러요 개수 출력
	@Override
	public int getCommunitySiroyoAmount(int community_no) {
		return mapper.selectCommunitySiroyoCnt(community_no);
	}
	
	//커뮤니티 특정 글 페이지 특정 댓글의 누적 시러요 개수 출력
	@Override
	public int getCommentSiroyoAmount(int comment_no) {
		return mapper.selectCommentSiroyoCnt(comment_no);
	}
	
	//마이페이지 커뮤니티 나의 시러요 목록 출력
	@Override
	public List<CommunityDTO> getCommunitySiroyoList(String user_id){
		return mapper.selectCommunitySiroyoList(user_id);
	}
	
	//마이페이지 커뮤니티 댓글 나의 시러요 목록 출력
	@Override
	public List<CommentDTO> getCommentSiroyoList(String user_id){
		return mapper.selectCommentSiroyoList(user_id);
	}
}
