package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewDTO {

	private int review_no;			// number
	private String user_id;			// varchar2(30)
	private String docid;			// varchar2(1000)
	private int review_star;		// number(2,1)
	private String review_content;	// long
}