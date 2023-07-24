package com.spring.service;

import java.util.List;

import com.spring.domain.CommentDTO;

public interface CommentService {
	
	void addComment(String user_id, int community_no, String comment_content);
	List<CommentDTO> getCommentList(int community_no);

}
