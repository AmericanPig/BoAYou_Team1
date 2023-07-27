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
		user_id = "";
		name = "";
		img = "../resources/assets/img/default.jpg";
		intro = "";
	}
}
