package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camper.domain.ReservationVO;
import com.camper.domain.UserVO;
import com.camper.mapper.BoardMapper;
import com.camper.mapper.MyPageMapper;
import com.camper.mapper.ReservationMapper;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class ReservationController {
	
	@Autowired
	ReservationMapper reservationMapper;
	@Autowired
	BoardMapper boardMapper;
	@Autowired MyPageMapper myPageMapper;
	
	private int sum = 0;
	
	@GetMapping("/reservation")
	public String getReservation(Model model, HttpSession session, UserVO uvo) {
		String userId = (String) session.getAttribute("sessionId");
		List<ReservationVO> reservation = reservationMapper.getAllReservation(userId);
		model.addAttribute("reservation", reservation);
		model.addAttribute("check",reservationMapper.searchReservationCount(userId));
		model.addAttribute("userVO",myPageMapper.getMyPage(userId));
		boardMapper.updateWallet(uvo);
		
		return "reservation";
	}
	
	
	@PostMapping("/reservationDelete")
	public String reservationDelete(@RequestParam List<String> rid, @RequestParam List<String> cid,
			HttpSession session, @RequestParam List<Integer> cmoney, ReservationVO vo,  UserVO uvo) {
		String userId = (String) session.getAttribute("sessionId");
		for(int i=0; i<rid.size(); i++) {
			reservationMapper.removeReservation(Integer.parseInt(rid.get(i)));
			int wallet = reservationMapper.findWallet(userId);
			System.out.println("캠프장 금액 : " + cmoney.get(i));
			sum = wallet + cmoney.get(i);
			System.out.println("합계 : " + sum);
			reservationMapper.returnMoney(sum, userId);
//			boardMapper.updateWallet(uvo);
		}  
		for(int i=0; i<cid.size(); i++) {
			reservationMapper.upateCampInfo(Integer.parseInt(cid.get(i)));
//			boardMapper.updateWallet(uvo);
		}
		return "redirect:/reservation";
	}
	
}
