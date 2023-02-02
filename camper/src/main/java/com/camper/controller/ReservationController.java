package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camper.domain.RsrvVO;
import com.camper.mapper.ReservationMapper;

@Controller
@RequestMapping("/member")
public class ReservationController {
	
	@Autowired
	ReservationMapper reservationMapper;
	
	@GetMapping("/reservation")
	public String getReservation(Model model) {
		List<RsrvVO> reservation = reservationMapper.getAllReservation();
		System.out.println(reservation);
		model.addAttribute("reservation", reservation);
		return "reservation";
	}
	
	@PostMapping("/reservationDelete")
	public String reservationDelete(@RequestParam List<String> rid, RsrvVO vo) {
		for(int i=0; i<rid.size(); i++) {
			System.out.println(rid.get(i));
			reservationMapper.removeReservation(Integer.parseInt(rid.get(i)));
		}
		return "redirect:/member/reservation";
	}
	
}