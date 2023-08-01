package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserProfileDTO {
	
	private String user_id;
	private String name;
	private String img;
	private String intro;
	
	public UserProfileDTO() {
		user_id = this.user_id;
		name = this.name;
		img = "../resources/assets/img/default.jpg";
		intro = user_id + " 님의 소개글을 작성해주세요";
	}
}
