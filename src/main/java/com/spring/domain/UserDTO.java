package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UserDTO {
	
	private String user_id;
	private String pwd;
	private String name;
	private int age;
	private String jumin;
	private int user_level;

}
