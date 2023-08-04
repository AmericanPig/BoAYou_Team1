package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class MemberShipDTO {
	
	private String user_id; //                  varchar2(30) 
	private String name; //            not null varchar2(30) 
	private int community_count; //          number       
	private int user_level; //               number    

}
