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
import com.spring.domain.MovieListDTO;
import com.spring.domain.UserDTO;
import com.spring.mapper.UserMapper;
import com.spring.service.CommunityService;
import com.spring.service.JoayoService;
import com.spring.service.MovieListService;
import com.spring.service.ReviewService;
import com.spring.service.SiroyoService;
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
	@Autowired
	private JoayoService joayoService;
	@Autowired
	private SiroyoService siroyoService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MovieListService service;

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
		listInit();
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
	public void movieInfoPage(@RequestParam("Index") int index, Model model) {
		listInit();
		model.addAttribute("getKoreaMovie", koreaMovie.get(index));
		model.addAttribute("getForeignMovie", foreignMovie.get(index));

		model.addAttribute("getRatingAllMovie", ratingAllMovie.get(index));
		model.addAttribute("getRating12Movie", rating12Movie.get(index));
		model.addAttribute("getRating15Movie", rating15Movie.get(index));
		model.addAttribute("getRating18Movie", rating18Movie.get(index));
		model.addAttribute("getRatingEtcMovie", ratingEtcMovie.get(index));

		model.addAttribute("getRepRlsDate2023Movie", repRlsDate2023Movie.get(index));
		model.addAttribute("getRepRlsDate2022Movie", repRlsDate2022Movie.get(index));
		model.addAttribute("getRepRlsDate2021Movie", repRlsDate2021Movie.get(index));
		model.addAttribute("getRepRlsDateBeforeMovie", repRlsDateBeforeMovie.get(index));

		model.addAttribute("getGenre1Movie", genre1Movie.get(index));
		model.addAttribute("getGenre2Movie", genre2Movie.get(index));
		model.addAttribute("getGenre3Movie", genre3Movie.get(index));
		model.addAttribute("getGenre4Movie", genre4Movie.get(index));
		model.addAttribute("getGenre5Movie", genre5Movie.get(index));

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
			searchResultsHtml.append("<li onclick=\"selectDocId('").append(docId).append("')\">").append(docId)
					.append("</li>");
		}
		searchResultsHtml.append("</ul>");
		return searchResultsHtml.toString();
	}

}