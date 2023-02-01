package com.camper.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camper.domain.BoardVO;
import com.camper.mapper.BoardMapper;

import jakarta.servlet.http.HttpSession;

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
}
