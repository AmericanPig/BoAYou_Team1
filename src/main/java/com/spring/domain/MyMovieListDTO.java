package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class MyMovieListDTO {
	
	private String title;
	private String directorNm;
	private String nation;
	private String posters;
	private String genre;
	private String rating;
	private String docid;
	private String user_id;
	private String movielist_name;
	private int mymovielist_no;

}