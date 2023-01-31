package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.UserVO;
import com.camper.mapper.UserMapper;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired UserMapper userMapper;
	
	
	public String list(Model m) {
		List<UserVO> user = userMapper.getAllUser();
		m.addAttribute("user",user);
		return "myPage";
	}

}
