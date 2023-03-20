package com.animal.www.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.community.model.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;

	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}

	@RequestMapping("community.do")
	public ModelAndView marketHome() {
		return new ModelAndView("community/c_home");
	}
}
