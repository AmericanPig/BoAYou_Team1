package com.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.domain.CommunityDTO;
import com.spring.domain.UserDTO;
import com.spring.mapper.UserMapper;
import com.spring.service.CommunityService;
import com.spring.service.MovieListService;
import com.spring.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/boayou/*")
@RequiredArgsConstructor
@Log4j
public class MovieController {
	@Autowired
	private UserService UserService;
	@Autowired
	private UserMapper mapper;
	@Autowired
	private CommunityService communityservice;
	
	private final MovieListService service;
	
	//  http://localhost:8080/controller/movie/movie
	@GetMapping("movie")
	public String boardAll(Model model) {
		
		model.addAttribute("Movie_List", service.selectMovieList());
		
		return "movie";
	}
	@GetMapping("homePage")
	   public void movie() {
	      log.info("movie");
	}
	@GetMapping("community")
	   public void community(Model model) {
		
		model.addAttribute("community_List", communityservice.SelectCommunityList());
	      
	 }
	 @GetMapping("join")
	   public void join() {
		 
	 }
	 @GetMapping("login")
	   public void login() {
		 
	 }
	 @GetMapping("contact")
	   public void contact() {
		 
	 }
	 

	 @PostMapping(value = "/InsertJoin", produces = MediaType.APPLICATION_JSON_VALUE)
		public String InsertJoin(UserDTO user, RedirectAttributes redirectAttributes) {
		    
		    int message = UserService.InsertJoin(user);

		    redirectAttributes.addFlashAttribute("message", message);
		    return "redirect:/boayou/login";
		}
	 @PostMapping(value = "/checkId",produces = MediaType.APPLICATION_JSON_VALUE)
		public @ResponseBody int checkId(String user_id) {
		   log.info(user_id);

		    int result = mapper.checkId(user_id);
		    log.info( result);
		    return result;
		}
	 @PostMapping("/loginProcess")
	    public String loginProcess(UserDTO userDTO, HttpSession session, Model model) {
		 UserDTO storedUser = UserService.selectUserById(userDTO.getUser_id());

		    if (storedUser == null || !UserService.isPasswordMatched(userDTO.getPwd(), storedUser.getPwd())) {
		        model.addAttribute("msg", "아이디나 비밀번호를 확인해주세요.");
		        return "boayou/login";
		    }
		    session.setAttribute("loginUser", storedUser);
	        return "redirect:/boayou/homePage";
	    }
	 @GetMapping("/logout")
	 public String logout(HttpSession session) {
	    
	     session.removeAttribute("loginUser");
	    
	     return "redirect:/boayou/homePage";
	 }
	 @PostMapping("/community-insert")
	 @ResponseBody
	 public RedirectView InsertCommunity(CommunityDTO community) {
		    System.out.println("InsertCommunity-" + community);
		    int result = communityservice.InsertCommunity(community);
		    RedirectView redirectView;

		    if (result > 0) {
		        redirectView = new RedirectView("community");
		    } else {
		        redirectView = new RedirectView("/글-작성-실패-페이지");
		    }
		    
		    return redirectView;
		}
	 
	

}
