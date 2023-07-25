package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CommunityDTO {
	
	private int community_no;
	private String user_id;
	private String docid;
	private String community_title;
	private String community_content;
	private String posters;
    private int comment_count;
    private int joayo;
    private int siroyo;
}