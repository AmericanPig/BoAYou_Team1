package com.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.domain.CommunityDTO;
import com.spring.domain.MovieListDTO;
import com.spring.domain.TitlePosterListDTO;
import com.spring.domain.UserDTO;
import com.spring.mapper.UserMapper;
import com.spring.service.CommunityService;
import com.spring.service.MovieListService;
import com.spring.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@RestController
@RequestMapping("/api/*")
@RequiredArgsConstructor
@Log4j
public class MovieAPIController {
  
   @Autowired
   private MovieListService service;
   
 
      
//      @RequestMapping(value = "MovieListAPI", produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
//     public MovieListDTO MovieListAPI() {
//                       
//        
//         MovieListDTO df = new MovieListDTO();
//                
//                 df.setDocid(service.getTitlePostersMovieList().get(0).getDocid());
//                 df.setTitle(service.getTitlePostersMovieList().get(0).getTitle());
//                 df.setDirectornm(service.getTitlePostersMovieList().get(0).getDirectornm());
//                 df.setActornm(service.getTitlePostersMovieList().get(0).getActornm());
//                 df.setNation(service.getTitlePostersMovieList().get(0).getNation());
//                 df.setCompany(service.getTitlePostersMovieList().get(0).getCompany());
//                 df.setPlot(service.getTitlePostersMovieList().get(0).getPlot());
//                 df.setRuntime(service.getTitlePostersMovieList().get(0).getRuntime());
//                 df.setRating(service.getTitlePostersMovieList().get(0).getRating());
//                 df.setReprlsdate(service.getTitlePostersMovieList().get(0).getReprlsdate());
//                 df.setPosters(service.getTitlePostersMovieList().get(0).getPosters());
//                 df.setFlocation(service.getTitlePostersMovieList().get(0).getFlocation());
//                 df.setGenre(service.getTitlePostersMovieList().get(0).getGenre());
//                
//             return df;
//        
//     }
      
	   @RequestMapping(value = "MovieListAPI", produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	   public List<TitlePosterListDTO> MovieListAPI() {
	        
	           return service.getTitlePostersMovieList();
	      
	   }

      
 

}