package com.camper.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.UserVO;
import com.camper.mapper.QuestionMapper;
import com.camper.mapper.UserMapper;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired 
	UserMapper userMapper;
	
	@Autowired
	QuestionMapper questionMapper;
	
	public String list(Model m) {
		List<UserVO> user = userMapper.getAllUser();
		m.addAttribute("user",user);
		return "myPage";
	}
	
	//로그인
	@PostMapping("/Login")
	public String loginPage(UserVO vo) {
		System.out.println(vo);
		if(userMapper.loginOkay(vo.getUid(),vo.getUpw()) == 1) {
			System.out.println("성공");
			return "redirect:/";
		}
		else {
			System.out.println("실패");
			return "login";
		}
	}
	
	//회원가입
	@PostMapping("/signUp")
	public String signUpPage(UserVO vo) {
		userMapper.signUpOkay(vo);
		System.out.println(vo);
		return "login";
	}
	
	//아이디 중복 체크
	public String idCheck(UserVO vo) throws Exception{
		UserVO userid = userMapper.idCheck(vo);
		if(userid == null) {
			return "null";
		}
		return "success";
	}
	//public String getLogin(Model m, Long uid, Long upw) {
		
		//System.out.println(userMapper.getLogin(uid, upw));
		
		
		//for(int i = 0; i < list.size(); i++) {
		//	UserVO user = list.get(i);
		//	if(user.getUid().equals(uid)) {
		//		Sysltem.out.println(uid);
		//	}
		//}
		//UserVO id = userMapper.getLogin(uid, upw);
		//id.getUid().equals(uid);
		//m.addAttribute("login", userMapper.getLogin(uid, upw));
		//System.out.println("상세정보 : " + userMapper.getLogin(uid, upw));
		
	

}
