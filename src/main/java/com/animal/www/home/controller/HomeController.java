package com.animal.www.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.home.model.service.HomeService;

@Controller
public class HomeController {
	@Autowired
	private HomeService homeService;

	public void setHomeService(HomeService homeService) {
		this.homeService = homeService;
	}
	
	@RequestMapping("home.do")
	public ModelAndView home() {
		return new ModelAndView("home/home");
	}
	
	@RequestMapping("login.do")
	public ModelAndView logIn() {
		return new ModelAndView("home/login");
	}
	
	@RequestMapping("my_info.do")
	public ModelAndView myInfo() {
		return new ModelAndView("home/mypage_member");
	}
	
	@RequestMapping("my_point.do")
	public ModelAndView myPoint() {
		return new ModelAndView("home/mypage_point");
	}
}
