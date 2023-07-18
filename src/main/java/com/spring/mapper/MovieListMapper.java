package com.spring.mapper;

import java.util.List;

import com.spring.domain.MovieListDTO;

public interface MovieListMapper {
	

	List<MovieListDTO> selectMovieList();
}
