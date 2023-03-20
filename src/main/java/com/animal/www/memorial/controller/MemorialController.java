package com.animal.www.memorial.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.memorial.model.service.MemorialService;

@Controller
public class MemorialController {
	@Autowired
	private MemorialService memorialService;

	public void setMemorialService(MemorialService memorialService) {
		this.memorialService = memorialService;
	}
	
	@RequestMapping("memorial.do")
	public ModelAndView home() {
		return new ModelAndView("memorial/r_home");
	}
}
