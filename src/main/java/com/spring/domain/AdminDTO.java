package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminDTO {

	private String admin_id;		// varchar2(30)
	private String pwd;				// varchar2(30)
}