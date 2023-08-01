package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.domain.MovieListDTO;
import com.spring.domain.TitlePosterListDTO;
@Mapper
public interface MovieListMapper {
   

   List<MovieListDTO> selectMovieList();
   
   List<MovieListDTO> koreaMovieList();
   List<MovieListDTO> foreignMovieList();
   
   List<MovieListDTO> ratingAllMovieList();
   List<MovieListDTO> rating12MovieList();
   List<MovieListDTO> rating15MovieList();
   List<MovieListDTO> rating18MovieList();
   List<MovieListDTO> ratingEtcMovieList();
   
   List<MovieListDTO> repRlsDate2023MovieList();
   List<MovieListDTO> repRlsDate2022MovieList();
   List<MovieListDTO> repRlsDate2021MovieList();
   List<MovieListDTO> repRlsDateBeforeMovieList();
   
   List<MovieListDTO> genre1MovieList();
   List<MovieListDTO> genre2MovieList();
   List<MovieListDTO> genre3MovieList();
   List<MovieListDTO> genre4MovieList();
   List<MovieListDTO> genre5MovieList();
   
   List<MovieListDTO> getTitleSearchResults(String title);
   
   List<TitlePosterListDTO> titlePostersMovieList();
   
   MovieListDTO selectDocid(String docid);
   
   List<MovieListDTO> movieSearchList(String title);
}