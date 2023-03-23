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
		return new ModelAndView("market/m_home_main");
	}
	
	@RequestMapping("m_pdt_list.do")
	public ModelAndView marketProductList() {
		return new ModelAndView("market/m_category");
	}
	
	@RequestMapping("m_select_product.do")
	public ModelAndView marketselectPDT() {
		return new ModelAndView("market/m_product");
	}
}
