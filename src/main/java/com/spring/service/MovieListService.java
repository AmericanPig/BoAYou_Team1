package com.spring.service;

import java.util.List;

import com.spring.domain.MovieListDTO;
import com.spring.domain.TitlePosterListDTO;

public interface MovieListService {
	
	public List<MovieListDTO> getMovieList();
	public List<MovieListDTO> getKoreaMovieList();
	public List<MovieListDTO> getForeignMovieList();
   
	public List<MovieListDTO> getRatingAllMovieList();
	public List<MovieListDTO> getRating12MovieList();
	public List<MovieListDTO> getRating15MovieList();
	public List<MovieListDTO> getRating18MovieList();
	public List<MovieListDTO> getRatingEtcMovieList();
   
	public List<MovieListDTO> getRepRlsDate2023MovieList();
	public List<MovieListDTO> getRepRlsDate2022MovieList();
	public List<MovieListDTO> getRepRlsDate2021MovieList();
	public List<MovieListDTO> getRepRlsDateBeforeMovieList();
   
	public List<MovieListDTO> getGenre1MovieList();
	public List<MovieListDTO> getGenre2MovieList();
	public List<MovieListDTO> getGenre3MovieList();
	public List<MovieListDTO> getGenre4MovieList();
	public List<MovieListDTO> getGenre5MovieList();
   
	List<MovieListDTO> getTitleSearchResults(String title);
	
	public List<TitlePosterListDTO> getTitlePostersMovieList();
	   
	public MovieListDTO getDocid(String docid);

	public List<MovieListDTO> getMovieSearchList(String title);

}