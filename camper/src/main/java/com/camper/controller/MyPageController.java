package com.camper.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.MyPageVO;
import com.camper.mapper.MyPageMapper;

@Controller
@RequestMapping("/")
public class MyPageController {
	
	@Autowired
	MyPageMapper myPageMapper;

	@GetMapping("/myPage")
	public String myPage(Model model) throws Exception {
		MyPageVO mypage = myPageMapper.getMyPage();
		System.out.println(mypage);
		model.addAttribute("mypage", mypage);
		return "myPage";
	}
}
