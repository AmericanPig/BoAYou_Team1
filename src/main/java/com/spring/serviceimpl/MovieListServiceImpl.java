package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.MovieListDTO;
import com.spring.mapper.MovieListMapper;
import com.spring.service.MovieListService;


@Service
public class MovieListServiceImpl implements MovieListService {
	
	@Autowired
	private MovieListMapper mapper;
	
	@Override
	public List<MovieListDTO> selectMovieList() {
		// TODO Auto-generated method stub
		return  mapper.selectMovieList();
	}
}
