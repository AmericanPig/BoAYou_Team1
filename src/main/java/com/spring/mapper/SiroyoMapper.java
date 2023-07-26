package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;

public interface SiroyoMapper {
	
	//커뮤니티 글에 특정 user_id 시러요 있는지 확인 select
	int selectCommunitySiroyoById(@Param("community_no") int community_no, @Param("user_id") String user_id);
	
	//커뮤니티 글에 특정 user_id가 시러요 insert
	int insertCommunitySiroyoById(@Param("community_no") int community_no, @Param("user_id") String user_id);
	
	//커뮤니티 글에 특정 user_id가 시러요 delete
	int deleteCommunitySiroyoById(@Param("community_no") int community_no, @Param("user_id") String user_id);
	
	//커뮤니티 페이지에서 해당 글의 누적시러요 개수 select
	int selectCommunitySiroyoCnt(int community_no);
	
	//특정 comment의 특정 user_id 시러요 있는지 확인 select
	int selectCommentSiroyoById(@Param("comment_no") int comment_no,  @Param("user_id") String user_id);
	
	//특정 comment의 특정 user_id가 시러요 insert
	int insertCommentSiroyoById(@Param("comment_no") int comment_no,  @Param("user_id") String user_id);
	
	//특정 comment에 특정 user_id 시러요 delete
	int deleteCommentSiroyoById(@Param("comment_no") int comment_no,  @Param("user_id") String user_id);
	
	//community의 글 열람 시 각 comment들의 누적 시러요 select
	int selectCommentSiroyoCnt(int comment_no);
	
	//마이페이지 내가 시러요 누른 community 목록
	List<CommunityDTO> selectCommunitySiroyoList(String user_id);
	
	//마이페이지 내가 시러요 누른 comment 목록
	List<CommentDTO> selectCommentSiroyoList(String user_id);
}
