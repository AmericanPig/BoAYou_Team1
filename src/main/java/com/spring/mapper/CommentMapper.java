package com.spring.mapper;

import java.util.List;

import com.spring.domain.CommentDTO;

public interface CommentMapper {
	
	List<CommentDTO> SelectCommentList();

}
