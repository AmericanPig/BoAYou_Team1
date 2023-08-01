package com.spring.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.MovieListDTO;
import com.spring.domain.TitlePosterListDTO;
import com.spring.mapper.MovieListMapper;
import com.spring.service.MovieListService;


@Service
public class MovieListServiceImpl implements MovieListService {
	
//	private static final MovieListServiceImpl instance = new MovieListServiceImpl();
//	
//	private final MovieListService service = MovieListServiceImpl.getInstance();
//	
	@Autowired
	private MovieListMapper mapper;
   
	@Override
	public List<MovieListDTO> getMovieList(){
		return mapper.selectMovieList();
	}
   
//	private static MovieListService getInstance() {
//		// TODO Auto-generated method stub
//		return instance;
//	}

	public List<MovieListDTO> getKoreaMovieList(){
		return mapper.koreaMovieList();
	}
   
	public List<MovieListDTO> getForeignMovieList(){
		return mapper.foreignMovieList();
	}

	public List<MovieListDTO> getRatingAllMovieList(){
		return mapper.ratingAllMovieList();
	}
   
	public List<MovieListDTO> getRating12MovieList(){
		return mapper.rating12MovieList();
	}

	public List<MovieListDTO> getRating15MovieList(){
		return mapper.rating15MovieList();
	}
   
	public List<MovieListDTO> getRating18MovieList(){
		return mapper.rating18MovieList();
	}
   
	public List<MovieListDTO> getRatingEtcMovieList(){
		return mapper.ratingEtcMovieList();
	}
   
	public List<MovieListDTO> getRepRlsDate2023MovieList(){
		return mapper.repRlsDate2023MovieList();
	}

	public List<MovieListDTO> getRepRlsDate2022MovieList(){
		return mapper.repRlsDate2022MovieList();
	}
   
	public List<MovieListDTO> getRepRlsDate2021MovieList(){
		return mapper.repRlsDate2021MovieList();
	}
   
	public List<MovieListDTO> getRepRlsDateBeforeMovieList(){
		return mapper.repRlsDateBeforeMovieList();
	}
   
	public List<MovieListDTO> getGenre1MovieList(){
		return mapper.genre1MovieList();
	}
   
	public List<MovieListDTO> getGenre2MovieList(){
		return mapper.genre2MovieList();
	}
   
	public List<MovieListDTO> getGenre3MovieList(){
		return mapper.genre3MovieList();
	}
   
	public List<MovieListDTO> getGenre4MovieList(){
		return mapper.genre4MovieList();
	}
   
	public List<MovieListDTO> getGenre5MovieList(){
		return mapper.genre5MovieList();
	}
   
	@Override
	public List<MovieListDTO> getTitleSearchResults(String title) {
		return mapper.getTitleSearchResults(title);
	}
      
	@Override
	public MovieListDTO getDocid(String docid) {
	      return mapper.selectDocid(docid);
	}
	      
	public List<TitlePosterListDTO> getTitlePostersMovieList(){
        return mapper.titlePostersMovieList();
}

	public List<MovieListDTO> getMovieSearchList(String title){
	     return mapper.movieSearchList(title);
	}
}