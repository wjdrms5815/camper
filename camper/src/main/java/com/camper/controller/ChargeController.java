package com.camper.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.camper.domain.MyPageVO;
import com.camper.mapper.MyPageMapper;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class ChargeController {
	
	@Autowired
	MyPageMapper myPageMapper;

	@GetMapping("/charge")
	public String charge(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("sessionId");
		MyPageVO mypage = myPageMapper.getMyPage(userId);
		model.addAttribute("mypage", mypage);
		return "charge";
	}
	
	@GetMapping("/chargeSuccess")
	public @ResponseBody String chargePoint(int amount, HttpSession session) {
		String userId = (String) session.getAttribute("sessionId");
		int money = myPageMapper.getMoney(userId);
		int finalMoney = amount + money;
		myPageMapper.updateWallet(userId, finalMoney);
		return "redirect:/charge";
	}
}
