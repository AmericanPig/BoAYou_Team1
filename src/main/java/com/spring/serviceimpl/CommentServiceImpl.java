package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.CommentDTO;
import com.spring.mapper.CommentMapper;
import com.spring.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper mapper;
	
	@Override
    public List<CommentDTO> getCommentList(int community_no) {
        return mapper.SelectCommentList(community_no);
    }

    @Override
    @Transactional
    public void addComment(String user_id, int community_no, String comment_content) {
        mapper.InsertComment(user_id, community_no, comment_content);
    }
 
}
