package com.spring.mapper;

import java.util.List;

import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;

public interface JoayoMapper {
	
	//커뮤니티 글에 특정 user_id 조아요 있는지 확인 select
	int selectCommunityJoayoById(String user_id);
	
	//커뮤니티 글에 특정 user_id가 조아요 insert
	int insertCommunityJoayoById(int community_no, String user_id);
	
	//커뮤니티 글에 특정 user_id가 조아요 delete
	int deleteCommunityJoayoById(int community_no, String user_id);
	
	//커뮤니티 페이지에서 해당 글의 누적조아요 개수 select
	int selectCommunityJoayoCnt(int community_no);
	
	//특정 comment의 특정 user_id 조아요 있는지 확인 select
	int selectCommentJoayoById(int comment_no, String user_id);
	
	//특정 comment의 특정 user_id가 조아요 insert
	int insertCommentJoayoById(int comment_no, String user_id);
	
	//특정 comment에 특정 user_id 조아요 delete
	int deleteCommentJoayoById(int comment_no, String user_id);
	
	//community의 글 열람 시 각 comment들의 누적 조아요 select
	int selectCommentJoayoCnt(int comment_no);
	
	//마이페이지 내가 조아요 누른 community 목록
	List<CommunityDTO> selectCommunityJoayoList(String user_id);
	
	//마이페이지 내가 조아요 누른 comment 목록
	List<CommentDTO> selectCommentJoayoList(String user_id);
}
