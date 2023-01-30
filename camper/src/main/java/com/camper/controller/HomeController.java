package com.camper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

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
    
    //findPw
    @RequestMapping("/findPw")
    public String findPw() {
        return "findPw";
    }
    
    
    //generic 상세보기
    @RequestMapping("/generic")
    public String generic() {
        return "generic";
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
    @RequestMapping("/myPage")
    public String myPage() {
        return "myPage";
    }
    
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
    
}

