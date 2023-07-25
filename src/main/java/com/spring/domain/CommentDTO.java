package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommentDTO {

	private int comment_no;				// number
	private String user_id;				// varchar2(30)
	private int community_no;			// number
	private String comment_content;		// number
	private int joayo;					// number
    private int siroyo;					// number
}