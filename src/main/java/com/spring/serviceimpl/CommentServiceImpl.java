package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.domain.CommentDTO;
import com.spring.mapper.CommentMapper;
import com.spring.service.CommentService;

public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper mapper;
	
	@Override
	public List<CommentDTO> SelectCommentList(){
		
		return mapper.SelectCommentList();
	}

}
