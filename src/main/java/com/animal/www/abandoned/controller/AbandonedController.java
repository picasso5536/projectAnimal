package com.animal.www.abandoned.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.abandoned.model.service.AbandonedService;

@Controller
public class AbandonedController {
	@Autowired
	private AbandonedService abandonedService;

	public void setAbandonedService(AbandonedService abandonedService) {
		this.abandonedService = abandonedService;
	}
	
	@RequestMapping("abandoned.do")
	public ModelAndView marketHome() {
		return new ModelAndView("abandoned/a_home");
	}
}
