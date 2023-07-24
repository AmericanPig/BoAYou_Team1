package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.CommentDTO;

public interface CommentMapper {

	List<CommentDTO> SelectCommentList(@Param("community_no") int community_no);

	void InsertComment(@Param("user_id") String userId, @Param("community_no") int community_no,
			@Param("comment_content") String comment_content);

}
