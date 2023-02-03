package com.camper.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.camper.domain.MyPageVO;
import com.camper.domain.UserVO;
import com.camper.mapper.QuestionMapper;
import com.camper.mapper.UserMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired 
	UserMapper userMapper;
	
	public String list(Model m) {
		List<UserVO> user = userMapper.getAllUser();
		m.addAttribute("user",user);
		return "myPage";
	}
	
	//로그인
	@PostMapping("/Login")
	public String loginPage(@RequestParam Map<String, String> map, Model model, UserVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println(vo);
		if(userMapper.loginOkay(vo.getUid(),vo.getUpw()) == 1) {
			System.out.println("로그인 성공");
			
			session.setAttribute("sessionId", userMapper.getUid(map.get("uid"))); // 세션값 등록 
		    model.addAttribute("sessionId", session.getAttribute("sessionId"));
			 
	        
			return "redirect:/";
		}
		else {
			System.out.println("실패");
			return "login";
		}
	}
	
	//로그아웃
	@GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
	
	//회원가입
	@PostMapping("/signUp")
	public String signUpPage(UserVO vo) {
		userMapper.signUpOkay(vo);
		System.out.println(vo);
		return "login";
	}
	
	//아이디 중복 체크
	@GetMapping("/idCheck")
	@ResponseBody
	public String idCheck(@RequestParam String id) {
		int result = userMapper.idCheck(id);
		System.out.println(id);
		if(result == 0) {
			System.out.println("로그인 성공");
			return "success";
		}
		else {
			System.out.println("로그인 실패");
			return "fail";
		}
	}
	
	//아이디 찾기
	@PostMapping("/findID")
	public String findId(UserVO vo, Model m) {
		UserVO user = userMapper.findID(vo.getUaddr(), vo.getUfirstname(), vo.getUlastname());
		System.out.println(user);
		m.addAttribute("user", user);
		return "idOkay";
	}
	
	//비밀번호 찾기
	@PostMapping("/findPW")
	public String findPw(UserVO vo, Model m) {
		System.out.println(vo);
		UserVO user = userMapper.findPW(vo.getUid(), vo.getUfirstname(), vo.getUlastname(),
				vo.getQid(), vo.getUanswer());
		System.out.println(user);
		m.addAttribute("user", user);
		return "pwOkay";
	}

}
