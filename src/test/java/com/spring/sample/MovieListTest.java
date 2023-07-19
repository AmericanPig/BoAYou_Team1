package com.spring.sample;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.service.MovieListService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MovieListTest {

	@Setter(onMethod_ = @Autowired)
	private MovieListService service;
	
	@Test
	public void movie_ListTest() {
		log.info(service);
		assertNotNull(service.getMovieList());
		log.info(service.getMovieList());
		
	}

}
