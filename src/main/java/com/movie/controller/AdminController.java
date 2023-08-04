package com.movie.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	@PostMapping("/updateUserLevelUp")
	@ResponseBody
	public Map<String, Object> updateUserLevelUp(MemberShipDTO membershipDTO) {
	    Map<String, Object> result = new HashMap<>();
	    try {
	        adminmapper.updateUserLevel(membershipDTO);
	        result.put("success", true);
	        System.out.println("실행중 : true - result: " + result);
	    } catch (Exception e) {
	        result.put("success", false);
	        System.out.println("실행중 : false - result: " + result);
	        e.printStackTrace(); // 추가: 예외 정보 출력
	    }

	    // 처리된 결괏값 출력
	    System.out.println("result: " + result);
	    return result;
	}

	
}