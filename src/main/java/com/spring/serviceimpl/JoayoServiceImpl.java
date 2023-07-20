package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;
import com.spring.mapper.JoayoMapper;
import com.spring.service.JoayoService;

@Service
public class JoayoServiceImpl implements JoayoService{
	
	@Autowired
	private JoayoMapper mapper;
	
	//커뮤니티 페이지 특정 글의 좋아요 버튼 toggle
	@Override
	public int pushCommunityJoayo(int community_no, String user_id) {
		int result = 0;
		int joayoFlag = mapper.selectCommunityJoayoById(community_no, user_id);
		
		switch(joayoFlag) {
			
		case 0:
			result = mapper.insertCommunityJoayoById(community_no, user_id);
			break;
		case 1:
			result = mapper.deleteCommunityJoayoById(community_no, user_id);
			break;
		}
		
		return result;
	}
	
	//커뮤니티 특정 글 페이지 특정 댓글의 좋아요 버튼 toggle
	@Override
	public int pushCommentJoayo(int comment_no, String user_id) {
		int result = 0;
		int joayoFlag = mapper.selectCommentJoayoById(comment_no, user_id);
		
		switch(joayoFlag) {
			
		case 0:
			result = mapper.insertCommentJoayoById(comment_no, user_id);
			break;
		case 1:
			result = mapper.deleteCommunityJoayoById(comment_no, user_id);
			break;
		}
		return result;
	}
	
	//커뮤니티 페이지 특정 글의 누적 조아요 개수 출력
	@Override
	public int getCommunityJoayoAmount(int community_no) {
		return mapper.selectCommunityJoayoCnt(community_no);
	}
	
	//커뮤니티 특정 글 페이지 특정 댓글의 누적 조아요 개수 출력
	@Override
	public int getCommentJoayoAmount(int comment_no) {
		return mapper.selectCommentJoayoCnt(comment_no);
	}
	
	//마이페이지 커뮤니티 나의 조아요 목록 출력
	@Override
	public List<CommunityDTO> getCommunityJoayoList(String user_id){
		return mapper.selectCommunityJoayoList(user_id);
	}
	
	//마이페이지 커뮤니티 댓글 나의 조아요 목록 출력
	@Override
	public List<CommentDTO> getCommentJoayoList(String user_id){
		return mapper.selectCommentJoayoList(user_id);
	}
}
