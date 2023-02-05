package com.camper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camper.domain.UserVO;
import com.camper.mapper.UserMapper;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired UserMapper userMapper;
	
	//메인페이지
    @RequestMapping("/index")
    public String index() {
        return "index";
    }
    
    
    //elements
    @RequestMapping("/elements")
    public String elements() {
        return "elements";
    }
    
    //findId
    @RequestMapping("/findId")
    public String findId() {
        return "findId";
    }
    
    //findPw
    //@RequestMapping("/findPw")
    //public String findPw() {
    //    return "findPw";
    //}
    
    
    //generic 상세보기
    @RequestMapping("/generic")
    public String generic() {
        return "detailInfo";
    }
    
    //join 회원가입
    @RequestMapping("/join")
    public String join() {
        return "join";
    }
    
    
    //login
    @RequestMapping("/login")
    public String login() {
        return "login";
    }
    
    //myPage
//postMapping(데이터를 입력(회원가입 로그인))
//getMapping(데이터를 불러옴(마이페이지, 게시판))
//    @GetMapping("/myPage")
//    public String myPage(Model m)throws Exception {
//    	List<UserVO> user = userMapper.getAllUser();
//    	System.out.println(user);
//		m.addAttribute("user",user);
//		return "myPage";
//    }
    
    //payment
    @RequestMapping("/payment")
    public String payment() {
        return "payment";
    }
    
    
    //reservation
    @RequestMapping("/reservation")
    public String reservation() {
        return "reservation";
    }
    
//    //404
//    @RequestMapping("/error1")
//    public String error1() {
//        return "error1";
//    }
//    
//    //505
//    @RequestMapping("/error2")
//    public String error2() {
//        return "error2";
//    }
    
    
}

