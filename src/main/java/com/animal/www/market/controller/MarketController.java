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

import com.animal.www.commons.vo.CorporationVO;
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
	//@RequestParam("pdt_idx") String pdt_idx
	@RequestMapping("m_select_product.do")
	public ModelAndView marketselectPDT(@RequestParam("pdt_idx") String pdt_idx) {
		ModelAndView mv = new ModelAndView("market/m_product");
		System.out.println(pdt_idx);
		ProductVO pdtvo = marketService.getProductOneInfo(pdt_idx);
		
		// 상세보기에 경로네비게이션을 표시해 주기 위해 가져온 pdt정보에서 kate_idx만 따로 저장한 뒤 저장한 값으로
		// 소분류를 포함하는 중분류, 중분류를 포함하는 대분류의 값을 list로 저장한다
		String kate_idx = pdtvo.getKate_idx();
		
		// 회사의 이름을 함께 출력하기 위해 상품 테이블의 corp_idx값을 저장
		String corp_idx = pdtvo.getCorp_idx();
		// 저장한 corp_idx값을 이용해 회사정보를 select한다.
		CorporationVO corpvo = marketService.getCorpVO(corp_idx);
		mv.addObject("corpvo", corpvo);
		
		
		List<KategorieVO> katevo = marketService.getKategories(kate_idx);
		// 받아온 값을 대, 중, 소분류로 나누어 화면에 출력하기 위해 각각 vo를 따로 생성한다
		KategorieVO topvo;
		KategorieVO midvo;
		KategorieVO bottvo;
		
		// 반복문을 사용해 list에 들어가있는 vo값들을 kate_kind와 받아온 idx값으로 구분해 알맞은 변수에 집어넣고 addObject로 저장한다.
		for (int i = 0; i < katevo.size(); i++) {
			// 받아온 리스트중 kate_kind의 값이 null인 경우 대분류vo에 저장
			if(katevo.get(i).getKate_kind() == null) {
				topvo = katevo.get(i);
				mv.addObject("topvo", topvo);
				System.out.println(topvo.getKate_idx());
			// 받아온 카테고리 리스트 중 kate_idx의 값이 상세정보의 kate_idx와 같은경우 소분류vo에 저장 
			} else if (katevo.get(i).getKate_idx().equals(kate_idx)) {
				System.out.println("1111111111");
				bottvo = katevo.get(i);
				mv.addObject("bottvo", bottvo);
				System.out.println(bottvo.getKate_idx());
			// 둘다 해당하지 않는 경우 중분류vo에 저장 
			} else {
				midvo = katevo.get(i);
				mv.addObject("midvo", midvo);
				System.out.println(midvo.getKate_idx());
			}
		}
		
		
		mv.addObject("pdtvo", pdtvo);
		return mv;
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
