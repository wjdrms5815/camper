package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.BoardVO;
import com.camper.mapper.BoardMapper;

@Controller
@RequestMapping("/")
public class BoardController {

	@Autowired BoardMapper boardMapper;
	
	@GetMapping("/")
	public String getAllCampInfo(Model m)throws Exception {
		List<BoardVO> board = boardMapper.getAllCampInfo();
		System.out.println(board);
		m.addAttribute("board", board);
		return "index";
	}
}
