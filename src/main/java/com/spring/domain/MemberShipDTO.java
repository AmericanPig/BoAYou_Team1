package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class MemberShipDTO {
	
	  private String user_id;
	  private String name;
	  private int age;
	  private int user_level;
	  private int community_count;

}
