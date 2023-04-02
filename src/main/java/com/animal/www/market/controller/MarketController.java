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
	
	@RequestMapping("test.do")
	public ModelAndView m_product_ok() {
		return new ModelAndView("market/m_product_ok");
	}

	@RequestMapping("coupon.do") // 쿠폰함
	public ModelAndView coupon() {
		return new ModelAndView("market/m_coupon");
	}
	@RequestMapping("shipping.do")  // 저장배송지
	public ModelAndView shipping() {
		return new ModelAndView("market/m_shipping");
	}
	@RequestMapping("completion.do")  // 구매완료
	public ModelAndView completion() {
		return new ModelAndView("market/m_completion");
	}
}
