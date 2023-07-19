package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommentJoayoDTO {

	private int community_no;		// number
	private int comment_no;			// number
	private String user_id;			// varchar2(30)
	private int joayo;				// number
}