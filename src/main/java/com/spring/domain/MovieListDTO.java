package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MovieListDTO {

	private	String docid;
	private String title;
	private String directornm;
	private String actornm;
	private String nation;
	private String company;
	private String plot;
	private String runtime;
	private String rating;
	private String reprlsdate;
	private String posters;
	private String flocation;
	private String genre;
}
