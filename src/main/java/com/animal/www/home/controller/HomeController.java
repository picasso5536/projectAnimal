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
		return new ModelAndView("home/mypage/mypage_info");
	}
	
	@RequestMapping("my_point.do")
	public ModelAndView myPoint() {
		return new ModelAndView("home/mypage/mypage_point");
	}
	
	@RequestMapping("my_pet.do")
	public ModelAndView myPet() {
		return new ModelAndView("home/mypage/mypage_pet");
	}
	
	@RequestMapping("my_banned.do")
	public ModelAndView myBanned() {
		return new ModelAndView("home/mypage/mypage_banned");
	}
	
	@RequestMapping("my_inquire.do")
	public ModelAndView myInquire() {
		return new ModelAndView("home/mypage/mypage_inquire");
	}
	
	@RequestMapping("my_message.do")
	public ModelAndView myMessage() {
		return new ModelAndView("home/mypage/mypage_message");
	}
}
