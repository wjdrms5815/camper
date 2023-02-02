package com.camper.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.MyPageVO;
import com.camper.domain.QuestionVO;
import com.camper.mapper.MyPageMapper;
import com.camper.mapper.QuestionMapper;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class MyPageController {
	
	@Autowired
	MyPageMapper myPageMapper;
	
	@Autowired
	QuestionMapper questionMapper;

	@GetMapping("/myPage")
	public String myPage(Model model, HttpSession session) throws Exception {
		String userId = (String) session.getAttribute("sessionId");
		MyPageVO mypage = myPageMapper.getMyPage(userId);
		List<QuestionVO> question = questionMapper.getQuestion();
		System.out.println(mypage);
		model.addAttribute("mypage", mypage);
		model.addAttribute("question", question);
		return "myPage";
	}
	
	@PostMapping("/myPageModify")
	public String myPage(MyPageVO vo){
		myPageMapper.updateMyPage(vo);
		System.out.println(vo);
		return "redirect:/myPage";
	}
	
}
