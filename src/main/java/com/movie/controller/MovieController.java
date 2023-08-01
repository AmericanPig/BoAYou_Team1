package com.movie.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.fasterxml.jackson.databind.annotation.JsonAppend.Attr;
import com.spring.domain.CommentDTO;
import com.spring.domain.CommunityDTO;
import com.spring.domain.MovieListDTO;
import com.spring.domain.MyMovieListDTO;
import com.spring.domain.ReviewDTO;
import com.spring.domain.UserDTO;
import com.spring.domain.UserProfileDTO;
import com.spring.mapper.UserMapper;
import com.spring.service.CommentService;
import com.spring.service.CommunityService;
import com.spring.service.JoayoService;
import com.spring.service.MovieListService;
import com.spring.service.ReviewService;
import com.spring.service.SiroyoService;
import com.spring.service.UserProfileService;
import com.spring.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

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
   @Autowired
   private ReviewService reviewService;
   @Autowired
   private MovieListService service;
   @Autowired
   private CommentService commentservice;
   @Autowired
   private JoayoService joayoservice;
   @Autowired
   private SiroyoService siroyoservice;
   @Autowired
   private UserProfileService userProfileService;
 

   public List<MovieListDTO> movie;

   public List<MovieListDTO> koreaMovie;

   public List<MovieListDTO> foreignMovie;

   public List<MovieListDTO> ratingAllMovie;

   public List<MovieListDTO> rating12Movie;

   public List<MovieListDTO> rating15Movie;

   public List<MovieListDTO> rating18Movie;

   public List<MovieListDTO> ratingEtcMovie;

   public List<MovieListDTO> repRlsDate2023Movie;

   public List<MovieListDTO> repRlsDate2022Movie;

   public List<MovieListDTO> repRlsDate2021Movie;

   public List<MovieListDTO> repRlsDateBeforeMovie;

   public List<MovieListDTO> genre1Movie;

   public List<MovieListDTO> genre2Movie;

   public List<MovieListDTO> genre3Movie;

   public List<MovieListDTO> genre4Movie;

   public List<MovieListDTO> genre5Movie;

   public Boolean InitState = false;
   
   @Autowired
   private ServletContext servletContext;

   public void listInit() {
      if(InitState == true) return;
      
      movie = service.getMovieList();
      koreaMovie = service.getKoreaMovieList();
      foreignMovie = service.getForeignMovieList();
      ratingAllMovie = service.getRatingAllMovieList();
      rating12Movie = service.getRating12MovieList();
      rating15Movie = service.getRating15MovieList();
      rating18Movie = service.getRating18MovieList();
      ratingEtcMovie = service.getRatingEtcMovieList();
      repRlsDate2023Movie = service.getRepRlsDate2023MovieList();
      repRlsDate2022Movie = service.getRepRlsDate2022MovieList();
      repRlsDate2021Movie = service.getRepRlsDate2021MovieList();
      repRlsDateBeforeMovie = service.getRepRlsDateBeforeMovieList();
      genre1Movie = service.getGenre1MovieList();
      genre2Movie = service.getGenre2MovieList();
      genre3Movie = service.getGenre3MovieList();
      genre4Movie = service.getGenre4MovieList();
      genre5Movie = service.getGenre5MovieList();
      
      InitState = true;
   }

   // http://localhost:8080/controller/movie/movie
   @GetMapping("movie")
   public String boardAll(Model model) {
      listInit();      
      model.addAttribute("Movie_List", movie);      

      return "movie";
   }

   @GetMapping("homePage")
   public void movie(Model model) {
      listInit();
      log.info("movie");
      model.addAttribute("Movie_List", movie);
   }

   @GetMapping("community")
   public void community(Model model) {
       List<CommunityDTO> communityList = communityservice.SelectCommunityList();
       List<CommunityDTO> communityrank = communityservice.CommunityRanking();
       for (CommunityDTO community : communityList) {
           int joayoCount = joayoservice.getCommunityJoayoAmount(community.getCommunity_no());
           int siroyoCount = siroyoservice.getCommunitySiroyoAmount(community.getCommunity_no());
           community.setJoayo(joayoCount);
           community.setSiroyo(siroyoCount);
       }
       for (CommunityDTO community : communityrank) {
           int joayoCount = joayoservice.getCommunityJoayoAmount(community.getCommunity_no());
           int siroyoCount = siroyoservice.getCommunitySiroyoAmount(community.getCommunity_no());
           community.setJoayo(joayoCount);
           community.setSiroyo(siroyoCount);
       }

       model.addAttribute("community_List", communityList);
       model.addAttribute("communityRank", communityrank);
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
   public void myPage(Model model, HttpSession session) {	   
	   UserDTO user = (UserDTO)session.getAttribute("loginUser");
	   UserProfileDTO userProfile = (UserProfileDTO)session.getAttribute("loginUserProfile");
	   List<ReviewDTO> myReviewList = reviewService.getMyReviewList(user.getUser_id());
	   List<MovieListDTO> myReviewMovieList = new ArrayList<MovieListDTO>();
	   List<CommunityDTO> myCommunityList = communityservice.selectCommunityById(user.getUser_id());
	   List<MyMovieListDTO> mymovielist = userProfileService.selectMyMovieList(user.getUser_id());
	   System.out.println(mymovielist);
	   for(ReviewDTO review : myReviewList) {
		   myReviewMovieList.add(service.getDocid(review.getDocid()));
	   }
	   model.addAttribute("userprofile", userProfile);
	   model.addAttribute("myReviewList", myReviewList);
	   model.addAttribute("myCommunityList", myCommunityList);
	   model.addAttribute("myReviewMovieList", myReviewMovieList);
	   model.addAttribute("myMovieList", mymovielist);
	   Set<String> uniqueMovieListNames = new LinkedHashSet<>();
       for (MyMovieListDTO movie : mymovielist) {
           uniqueMovieListNames.add(movie.getMovielist_name());
       }
       model.addAttribute("uniqueMovieListNames", uniqueMovieListNames);

   }

   @PostMapping("/updateUserPwd")
   public String updateUserPwd(UserDTO user, HttpSession session) {
	   BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	   UserDTO currentUser = (UserDTO)session.getAttribute("loginUser");
	   String user_id = currentUser.getUser_id();
	   String pwd = passwordEncoder.encode(user.getPwd());
	  
	   int result = UserService.updateUser(user_id, pwd);
	   currentUser.setPwd(pwd);
	   
	   System.out.println(result+"명의 회원정보 수정완료");
       session.setAttribute("loginUser", currentUser);
       
       return "redirect:/boayou/myPage";
   }
   
   @PostMapping("/boayou/updateProfileProcess")
   public String updateProfileProcess(@RequestParam("profileImage") MultipartFile profileImage,
                                      @RequestParam("profileMessage") String profileMessage,
                                      HttpServletRequest request, HttpSession session) {
       UserProfileDTO loginUserProfile = (UserProfileDTO) session.getAttribute("loginUserProfile");
       
       String realPath = "";
       String realFileName = "";
       try {
           // 파일을 받아와서 저장할 경로 생성
           byte[] bytes = profileImage.getBytes();
           // 실제 경로 얻기
           realPath = servletContext.getRealPath("/resources/assets/img/");
           realFileName = profileImage.getOriginalFilename();
           Path path = Paths.get(realPath + realFileName);
           
           Files.write(path, bytes);
           loginUserProfile.setImg(path.toString());
           System.out.println("프로필 이미지 저장 : " + path.toString());

       } catch (Exception e) {
           e.printStackTrace();
       }

       if (profileMessage != null) {
           loginUserProfile.setIntro(profileMessage);
           System.out.println("프로필 메시지 변경 : " + profileMessage);
       }

       userProfileService.changeUserProfile(loginUserProfile);
       
       String webPath = "../resources/assets/img/" + realFileName;
       System.out.println("이미지 세션용 경로 : " + webPath);
       loginUserProfile.setImg(webPath);
       session.setAttribute("loginUserProfile", loginUserProfile);

       return "redirect:/boayou/myPage";
   }

   @PostMapping(value = "/InsertJoin", produces = MediaType.APPLICATION_JSON_VALUE)
   public String InsertJoin(UserDTO user, RedirectAttributes redirectAttributes) {

      int message = UserService.InsertJoin(user);
      System.out.println(UserService.InsertJoin(user));
      System.out.println("프로필 생성 : " + userProfileInit(user.getUser_id(), user.getName()));
      redirectAttributes.addFlashAttribute("message", message);
      return "redirect:/boayou/login";
   }

   @PostMapping(value = "/checkId", produces = MediaType.APPLICATION_JSON_VALUE)
   public @ResponseBody int checkId(String user_id) {
      log.info(user_id);

      int result = mapper.checkId(user_id);
      log.info(result);
      return result;
   }

   @PostMapping("/loginProcess")
   public String loginProcess(UserDTO userDTO, HttpSession session, Model model) {
      UserDTO storedUser = UserService.selectUserById(userDTO.getUser_id());
      
      if (storedUser == null || !UserService.isPasswordMatched(userDTO.getPwd(), storedUser.getPwd())) {
         model.addAttribute("msg", "아이디나 비밀번호를 확인해주세요.");
         return "boayou/login";
      }
      UserProfileDTO storedUserProfile = userProfileInit(storedUser.getUser_id(), storedUser.getName());
      int profileInit = userProfileService.changeUserProfile(storedUserProfile);
      System.out.println(profileInit + "개의 프로필 로드됨");
      
      Path originPath = Paths.get(storedUserProfile.getImg());
      String fileName = originPath.getFileName().toString();
      String webPath = Paths.get("../resources/assets/img",fileName).toString();
      storedUserProfile.setImg(webPath);
      
      session.setAttribute("loginUser", storedUser);
      session.setAttribute("loginUserProfile", storedUserProfile);
      return "redirect:/boayou/homePage";
   }

   @GetMapping("/logout")
   public String logout(HttpSession session) {

      session.removeAttribute("loginUser");
      session.removeAttribute("loginUserProfile");

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
      listInit();
      model.addAttribute("getMovie", movie);

      model.addAttribute("getKoreaMovie", koreaMovie);
      model.addAttribute("getForeignMovie", foreignMovie);

      model.addAttribute("getRatingAllMovie", ratingAllMovie);
      model.addAttribute("getRating12Movie", rating12Movie);
      model.addAttribute("getRating15Movie", rating15Movie);
      model.addAttribute("getRating18Movie", rating18Movie);
      model.addAttribute("getRatingEtcMovie", ratingEtcMovie);

      model.addAttribute("getRepRlsDate2023Movie", repRlsDate2023Movie);
      model.addAttribute("getRepRlsDate2022Movie", repRlsDate2022Movie);
      model.addAttribute("getRepRlsDate2021Movie", repRlsDate2021Movie);
      model.addAttribute("getRepRlsDateBeforeMovie", repRlsDateBeforeMovie);

      model.addAttribute("getGenre1Movie", genre1Movie);
      model.addAttribute("getGenre2Movie", genre2Movie);
      model.addAttribute("getGenre3Movie", genre3Movie);
      model.addAttribute("getGenre4Movie", genre4Movie);
      model.addAttribute("getGenre5Movie", genre5Movie);

   }

   @GetMapping("movieInfoPage")
   public void movieInfoPage(@RequestParam("Docid") String docid, Model model) {
      listInit();
      List<ReviewDTO> reviewList = reviewService.getMovieReviewList(docid);
      MovieListDTO movieList = service.getDocid(docid);
      System.out.println(movieList);
      model.addAttribute("movieList", movieList);
      model.addAttribute("reviewList", reviewList);
   }

   @RequestMapping(value = "/search", produces = "text/html;charset=UTF-8")
   @ResponseBody
   public String search(@RequestParam("title") String title, Model model) {
       List<MovieListDTO> searchResults = service.getTitleSearchResults(title); // 수정해야하는 부분
       model.addAttribute("searchResults", searchResults);
       return generateSearchResultsHtml(searchResults);
   }

   private String generateSearchResultsHtml(List<MovieListDTO> searchResults) {
       StringBuilder searchResultsHtml = new StringBuilder();
       searchResultsHtml.append("<ul>");
       for (MovieListDTO result : searchResults) {
           String docId = result.getDocid();
           String posterUrl = result.getPosters();
           String movieTitle = result.getTitle();
           searchResultsHtml.append("<li onclick=\"selectDocId('").append(docId).append("')\">")
             .append("<img src='").append(posterUrl).append("' alt='").append(movieTitle).append("' class='poster' />")
             .append("</li>");
       }
       searchResultsHtml.append("</ul>");
       return searchResultsHtml.toString();
   }

   

   @GetMapping("/comments")
   public String getComments(@RequestParam("community_no") int community_no, Model model) {
       List<CommentDTO> comments = commentservice.getCommentList(community_no);
       model.addAttribute("comments", comments);
       model.addAttribute("community_no", community_no);
       for (CommentDTO comment : comments) {
           int joayoCount = joayoservice.getCommentJoayoAmount(comment.getComment_no());
           int siroyoCount = siroyoservice.getCommentSiroyoAmount(comment.getComment_no());
           comment.setJoayo(joayoCount);
           comment.setSiroyo(siroyoCount);
       }
       return "/boayou/comment";
   }

   @PostMapping("/comments/{community_no}")
   public @ResponseBody String addComment(@PathVariable int community_no, @RequestParam("user_id") String user_id, @RequestParam("comment_content") String comment_content) {
       commentservice.addComment(user_id, community_no, comment_content);
       return "댓글이 성공적으로 추가되었습니다.";
   }
   @PostMapping("deletecommunity")
   public String DeleteCommunity(CommunityDTO communityDTO) {
	   communityservice.DeleteCommunity(communityDTO);
	   return "redirect:/boayou/community";
   }
   @PostMapping("pushcommunityjoayo")
   public ResponseEntity<Map<String, Integer>> pushcommunityjoayo(@RequestParam("community_no") int community_no, @RequestParam("user_id") String user_id) {     
     int newJoayoCount = joayoservice.pushCommunityJoayo(community_no, user_id);
     

     Map<String, Integer> response = new HashMap<>();
     response.put("newJoayoCount", newJoayoCount);
     return new ResponseEntity<>(response, HttpStatus.OK);
   }
   @PostMapping("pushcommunitysiroyo")
   public ResponseEntity<Map<String, Integer>> pushcommunitysiroyo(@RequestParam("community_no") int community_no, @RequestParam("user_id") String user_id) {
     int newSiroyoCount = siroyoservice.pushCommunitySiroyo(community_no, user_id);


     Map<String, Integer> response = new HashMap<>();
     response.put("newSiroyoCount", newSiroyoCount);
     return new ResponseEntity<>(response, HttpStatus.OK);
   }
   @PostMapping("pushcommentjoayo")
   public ResponseEntity<Map<String, Integer>> pushcommentjoayo(@RequestParam("comment_no") int comment_no, @RequestParam("user_id") String user_id) {     
     int newJoayoCount = joayoservice.pushCommentJoayo(comment_no, user_id);
     

     Map<String, Integer> response = new HashMap<>();
     response.put("newJoayoCount", newJoayoCount);
     return new ResponseEntity<>(response, HttpStatus.OK);
   }
   @PostMapping("pushcommentsiroyo")
   public ResponseEntity<Map<String, Integer>> pushcommentsiroyo(@RequestParam("comment_no") int comment_no, @RequestParam("user_id") String user_id) {     
     int newJoayoCount = siroyoservice.pushCommentSiroyo(comment_no, user_id);
     

     Map<String, Integer> response = new HashMap<>();
     response.put("newJoayoCount", newJoayoCount);
     return new ResponseEntity<>(response, HttpStatus.OK);
   }
   @PostMapping("deletecomment")
   public  String DeleteComment(int comment_no, String community_no) {	   	   
	   commentservice.DeleteComment(comment_no);	   
	   return "redirect:/boayou/comments?community_no=" + community_no;
   }
   @PostMapping("insertReview")
   public ResponseEntity<String> insertReview(ReviewDTO reviewDTO) {
       reviewService.MakeUserReview(reviewDTO);
       return new ResponseEntity<>("리뷰 작성 성공", HttpStatus.OK);
   }
   @PostMapping("deletereview")
   public String deleteUserReview(ReviewDTO reviewDTO, String docid ) {
	   reviewService.deleteUserReview(reviewDTO);
	   
	   return "redirect:/boayo/movieInfoPage?Docid="+docid;
   }
   
   
   public UserProfileDTO userProfileInit(String user_id, String name) {
	  UserProfileDTO user = new UserProfileDTO(); 
	  user.setUser_id(user_id);
	  user.setName(name);
	  
	  int result = userProfileService.setUserProfile(user);
	  user = userProfileService.getUserProfile(user_id);
	  System.out.println(user);
	  
	  switch(result) {
	  case 0:
		  System.out.println(user.getUser_id() + " 님의 프로필 로드");
		  break;
	  case 1:
		  System.out.println(user.getUser_id() + " 님의 프로필 생성");
		  break;
	  }
	  
	  return user;
   }
   
   @GetMapping("userPage")
   public void userPage(@RequestParam("user_id")String user_id, Model model) {	
	   UserDTO user = UserService.selectUserById(user_id);
	   UserProfileDTO userprofile = userProfileService.getUserProfile(user_id);
	   List<MyMovieListDTO> mymovielist = userProfileService.selectMyMovieList(user_id); 
	   model.addAttribute("myMovieList", mymovielist);
	   model.addAttribute("user", user);
	   model.addAttribute("userprofile", userprofile);	   
	   Set<String> uniqueMovieListNames = new LinkedHashSet<>();
       for (MyMovieListDTO movie : mymovielist) {
           uniqueMovieListNames.add(movie.getMovielist_name());
       }

       model.addAttribute("uniqueMovieListNames", uniqueMovieListNames);
   }
   @GetMapping("movieSearchListPage")
   public void movieSearchListPage(@RequestParam("title") String title, Model model) {
      listInit();
      List<MovieListDTO> searchMovie = service.getMovieSearchList(title);
      model.addAttribute("searchMovie", searchMovie);
      // log.info(searchMovie);
     // System.out.println("확인");
     // System.out.println(searchMovie.get(0).getActornm());
     
     // System.out.println("확인2");
     // System.out.println(searchMovie.get(0).getActornm()); 
   }
   @PostMapping("insertMyMovieList")
   public String insertMyMovieList(@RequestParam("movielist_name") String movielist_name, @RequestParam("user_id") String user_id, @RequestParam("docid") String docid, RedirectAttributes redirectAttributes, HttpSession session) {       
       try {
           userProfileService.insertMyMovieList(movielist_name, user_id, docid);
       } catch (DataIntegrityViolationException e) {
    	    session.setAttribute("errorMessage", "하나의 리스트에 하나의 영화만 등록가능합니다.");
    	    return "redirect:/boayou/movieInfoPage?Docid=" + docid;
    	}
       return "redirect:/boayou/movieInfoPage?Docid=" + docid;
   }
   @PostMapping("deleteMyMovieList")
   public String deleteMyMovieList(int mymovielist_no, String user_id) {	   
	   userProfileService.deleteMyMovieList(mymovielist_no);	   
	   return "redirect:/boayou/myPage";
   }
   @PostMapping("searchUser")
   public RedirectView searchUser(String user_id) {
       RedirectView redirectView = new RedirectView();
       redirectView.setUrl("boayou/userPage?user_id=" + user_id);
       return redirectView;
   }

   
}