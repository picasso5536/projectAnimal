package com.animal.www.market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.market.model.service.MarketService;
import com.animal.www.market.model.vo.ProductVO;

@Controller
public class MarketController {
	@Autowired
	private MarketService marketService;

	public void setMarketService(MarketService marketService) {
		this.marketService = marketService;
	}

	@RequestMapping("market.do")
	public ModelAndView marketHome() {
		ModelAndView mv = new ModelAndView("market/m_home_main");
		List<KategorieVO> toplist = marketService.getTopKategoryList();
		mv.addObject("toplist", toplist);
		
		// 디폴트 세팅을 위해 toplist중 배열의 index가 0번인 idx를 가지고 하위 카테고리리스트 정보를 함께 가져간다.
		String top_idx = toplist.get(0).getKate_idx();
		List<KategorieVO> default_midlist = marketService.getKategoryList(top_idx);
		mv.addObject("default_midlist", default_midlist);
		
		// best 상품 list top 5
		List<ProductVO> best_pdt_list = marketService.getBestPdtList();
		mv.addObject("best_pdt_list", best_pdt_list);
		
		
		return mv;
	}
	
	

	// 마켓 로드시 디폴트 카테고리 + 중위 카테고리 클릭시 이벤트
	@RequestMapping(value = "/market_home_katelist.do", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	@ResponseBody
	public String MktPdtKategorie(@RequestParam("kate_idx") String kate_idx, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> katelist = marketService.getKategoryList(kate_idx);
		
		try {
			sb.append("[");
			for (int i = 0; i < katelist.size(); i++) {
				sb.append("{\"kate_idx\" : \"" + katelist.get(i).getKate_idx() + "\",\"kate_name\" : \""
						+ katelist.get(i).getKate_name() + "\", \"kate_kind\" : \"" + katelist.get(i).getKate_kind()
						+ "\", \"kate_ref\" : \"" + katelist.get(i).getKate_ref() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";
			return str;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	@RequestMapping(value = "/market_home_bottkatelist.do", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	@ResponseBody
	public String MktPdtBottKategorie(HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> bottlist = marketService.getbottKategoryList();
		
		try {
			sb.append("[");
			for (int i = 0; i < bottlist.size(); i++) {
				sb.append("{\"bott_idx\" : \"" + bottlist.get(i).getKate_idx() + "\",\"bott_name\" : \""
						+ bottlist.get(i).getKate_name() + "\", \"bott_kind\" : \"" + bottlist.get(i).getKate_kind()
						+ "\", \"bott_ref\" : \"" + bottlist.get(i).getKate_ref() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";
			return str;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
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

	@RequestMapping("coupon.do")
	public ModelAndView coupon() {
		return new ModelAndView("market/m_coupon");
	}
}
