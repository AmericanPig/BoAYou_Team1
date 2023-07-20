package com.movie.controller;

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
      
      model.addAttribute("Movie_List", service.getMovieList());
      
      return "movie";
   }
   @GetMapping("homePage")
      public void movie(Model model) {
         log.info("movie");
         model.addAttribute("Movie_List", service.getMovieList());
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
    @GetMapping("myPage")
	   public void myPage() {
		 
	 }


    @PostMapping(value = "/InsertJoin", produces = MediaType.APPLICATION_JSON_VALUE)
      public String InsertJoin(UserDTO user, RedirectAttributes redirectAttributes) {
          
          int message = UserService.InsertJoin(user);
          System.out.println(UserService.InsertJoin(user));
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
    

      @GetMapping("movieListPage")
      public void movieListPage(Model model) {
         model.addAttribute("getMovie", service.getMovieList());
         
         model.addAttribute("getKoreaMovie", service.getKoreaMovieList());
         model.addAttribute("getForeignMovie", service.getForeignMovieList());
         
         model.addAttribute("getRatingAllMovie", service.getRatingAllMovieList());
         model.addAttribute("getRating12Movie", service.getRating12MovieList());
         model.addAttribute("getRating15Movie", service.getRating15MovieList());
         model.addAttribute("getRating18Movie", service.getRating18MovieList());
         model.addAttribute("getRatingEtcMovie", service.getRatingEtcMovieList());
         
         model.addAttribute("getRepRlsDate2023Movie", service.getRepRlsDate2023MovieList());
         model.addAttribute("getRepRlsDate2022Movie", service.getRepRlsDate2022MovieList());
         model.addAttribute("getRepRlsDate2021Movie", service.getRepRlsDate2021MovieList());
         model.addAttribute("getRepRlsDateBeforeMovie", service.getRepRlsDateBeforeMovieList());
         
         model.addAttribute("getGenre1Movie", service.getGenre1MovieList());
         model.addAttribute("getGenre2Movie", service.getGenre2MovieList());
         model.addAttribute("getGenre3Movie", service.getGenre3MovieList());
         model.addAttribute("getGenre4Movie", service.getGenre4MovieList());
         model.addAttribute("getGenre5Movie", service.getGenre5MovieList());
               
      }
      
      @GetMapping("movieInfoPage")
      public void movieInfoPage(@RequestParam("Index") int index,Model model) {
         
         model.addAttribute("getKoreaMovie", service.getKoreaMovieList().get(index));
         model.addAttribute("getForeignMovie", service.getForeignMovieList().get(index));
      
         model.addAttribute("getRatingAllMovie", service.getRatingAllMovieList().get(index));
         model.addAttribute("getRating12Movie", service.getRating12MovieList().get(index));
         model.addAttribute("getRating15Movie", service.getRating15MovieList().get(index));
         model.addAttribute("getRating18Movie", service.getRating18MovieList().get(index));
         model.addAttribute("getRatingEtcMovie", service.getRatingEtcMovieList().get(index));
         
         model.addAttribute("getRepRlsDate2023Movie", service.getRepRlsDate2023MovieList().get(index));
         model.addAttribute("getRepRlsDate2022Movie", service.getRepRlsDate2022MovieList().get(index));
         model.addAttribute("getRepRlsDate2021Movie", service.getRepRlsDate2021MovieList().get(index));
         model.addAttribute("getRepRlsDateBeforeMovie", service.getRepRlsDateBeforeMovieList().get(index));
         
         model.addAttribute("getGenre1Movie", service.getGenre1MovieList().get(index));
         model.addAttribute("getGenre2Movie", service.getGenre2MovieList().get(index));
         model.addAttribute("getGenre3Movie", service.getGenre3MovieList().get(index));
         model.addAttribute("getGenre4Movie", service.getGenre4MovieList().get(index));
         model.addAttribute("getGenre5Movie", service.getGenre5MovieList().get(index));
      
      }
      
      @RequestMapping(value = "/search", produces = "text/html;charset=UTF-8")
      @ResponseBody
      public String search(@RequestParam("title") String title, Model model) {
          List<String> searchResults = service.getTitleSearchResults(title);
          model.addAttribute("searchResults", searchResults);
          return generateSearchResultsHtml(searchResults);
      }
      
      private String generateSearchResultsHtml(List<String> searchResults) {
    	    StringBuilder searchResultsHtml = new StringBuilder();
    	    searchResultsHtml.append("<ul>");
    	    for (String docId : searchResults) {
    	        searchResultsHtml.append("<li onclick=\"selectDocId('")
    	                .append(docId)
    	                .append("')\">")
    	                .append(docId)
    	                .append("</li>");
    	    }
    	    searchResultsHtml.append("</ul>");
    	    return searchResultsHtml.toString();
    	}

   

}