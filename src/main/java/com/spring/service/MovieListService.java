package com.spring.service;

import java.util.List;

import com.spring.domain.MovieListDTO;

public interface MovieListService {

	List<MovieListDTO> selectMovieList();

}
