package com.movie.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.MemberShipDTO;
import com.spring.mapper.AdminMapper;
import com.spring.service.AdminService;
import com.spring.util.Criteria;
import com.spring.util.PageMaker;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/boayou/*")
@RequiredArgsConstructor
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminMapper adminmapper;	
	
	@PostMapping(value="/delete")
	public String userDelete (HttpServletRequest request) {
	    String[] ajaxMsg = request.getParameterValues("valueArr");
	    int size = ajaxMsg.length;
	    List<String> userIds = new ArrayList<>();
	    for (int i = 0; i < size; i++) {
	        userIds.add(ajaxMsg[i]);
	    }
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("list", userIds);
	    adminService.deleteUserList(paramMap);
	    return "redirect:userList";	
	}
	
	
	@PostMapping(value="/communityDelete")
	public String communityDelete (HttpServletRequest request) {
	    String[] ajaxMsg = request.getParameterValues("valueArr");
	    int size = ajaxMsg.length;
	    List<String> communityNo = new ArrayList<>();
	    for (int i = 0; i < size; i++) {
	    	communityNo.add(ajaxMsg[i]);
	    }
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("list", communityNo);
	    adminService.deleteCommunityList(paramMap);
	    return "redirect:communityList";	
	}
		
	@GetMapping("/communityList")
	public String communityList(Model model, Criteria cri) {
		PageMaker pageMaker = new PageMaker(cri, 101);
		model.addAttribute("communityList", adminmapper.selectCommunityList(pageMaker));
		model.addAttribute("pageMaker", pageMaker);
		return "boayou/communityList";
	}
	
	@GetMapping("/userList")
	public String userList(Model model, Criteria cri) {
		PageMaker pageMaker = new PageMaker(cri, 101);
		model.addAttribute("userList", adminmapper.selectUserList(pageMaker));
		model.addAttribute("pageMaker", pageMaker);
		return "boayou/userList";
	}
	
	@GetMapping("/membershipList")
	public String membershipList(Model model, Criteria cri) {
		PageMaker pageMaker = new PageMaker(cri, 101);
		model.addAttribute("membershipList", adminmapper.membershipList(pageMaker));
		model.addAttribute("pageMaker", pageMaker);
		return "boayou/membershipList";
	}
	
	// 사용자 레벨 업데이트
	  @PostMapping("/updateUserLevel")
	  @ResponseBody
	  public String updateUserLevel(@RequestParam("user_id") String user_id, @RequestParam("user_level") int user_level) {
		  System.out.println("user_id: "+user_id);
		  System.out.println("user_level: "+user_level);
		  adminService.updateUserLevel(user_id, user_level);
		  return "boayou/membershipList";
	  }


		
}