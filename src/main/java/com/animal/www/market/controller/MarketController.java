package com.animal.www.market.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.market.model.service.MarketService;

@Controller
public class MarketController {
	@Autowired
	private MarketService marketService;

	public void setMarketService(MarketService marketService) {
		this.marketService = marketService;
	}
	
	@RequestMapping("market.do")
	public ModelAndView marketHome() {
		return new ModelAndView("market/m_home");
	}
}
