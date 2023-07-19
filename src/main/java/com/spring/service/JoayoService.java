package com.spring.service;

import java.util.List;

import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;

public interface JoayoService {
	
	//커뮤니티 페이지 특정 글의 좋아요 버튼 toggle
	int pushCommunityJoayo(int community_no, String user_id);
	
	//커뮤니티 특정 글 페이지 특정 댓글의 좋아요 버튼 toggle
	int pushCommentJoayo(int comment_no, String user_id);
	
	//커뮤니티 페이지 특정 글의 누적 조아요 개수 출력
	int getCommunityJoayoAmount(int community_no);
	
	//커뮤니티 특정 글 페이지 특정 댓글의 누적 조아요 개수 출력
	int getCommentJoayoAmount(int comment_no);
	
	//마이페이지 커뮤니티 나의 조아요 목록 출력
	List<CommunityDTO> getCommunityJoayoList(String user_id);
	
	//마이페이지 커뮤니티 댓글 나의 조아요 목록 출력
	List<CommentDTO> getCommentJoayoList(String user_id);
}
