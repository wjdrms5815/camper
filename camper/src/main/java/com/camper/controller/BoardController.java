package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.BoardVO;
import com.camper.domain.MyPageVO;
import com.camper.domain.RsrvVO;
import com.camper.mapper.BoardMapper;

@Controller
@RequestMapping("/")
public class BoardController {

	@Autowired BoardMapper boardMapper;
	
	
	//메인페이지 게시판
	@GetMapping("/")
	public String getAllCampInfo(Model m)throws Exception {
		List<BoardVO> board = boardMapper.getAllCampInfo();
		System.out.println(board);
		m.addAttribute("board", board);
		return "index";
	}
	
	//상세보기 이동
	@GetMapping("/goDetail")
	public String getDetailCampInfo(Model m, Long cid) {
		m.addAttribute("board", boardMapper.getDetailCampInfo(cid));
		System.out.println("상세정보 : " + boardMapper.getDetailCampInfo(cid));
		return "detailInfo";
	}
	
	
	//예약하기 이동
	@GetMapping("/goRsrv")
	public String goRsrv(Model m, Long cid) {
		m.addAttribute("board", boardMapper.getDetailCampInfo(cid));
		System.out.println("예약하러가기 : " + boardMapper.getDetailCampInfo(cid));
		return "goRsrv";
	}
	
	//예약하기
	@PostMapping("goRsrv")
	public String goRsrvInput(RsrvVO rvo, MyPageVO vo) {
		boardMapper.goRsrv(rvo);
		boardMapper.check(vo);
		System.out.println(rvo);
		System.out.println(vo);
		return "redirect:/member/reservation";
	}
}
