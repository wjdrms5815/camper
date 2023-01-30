package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.controller.dto.User;
import com.camper.mapper.UserMapper;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired UserMapper userMapper;
	
	@RequestMapping("list")
	
	public String list(Model m) {
		List<User> user = userMapper.findAll();
		m.addAttribute("user",user);
		return "list";
	}

}
