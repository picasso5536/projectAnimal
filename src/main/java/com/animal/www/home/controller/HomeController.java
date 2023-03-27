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
	
	@RequestMapping("my_inquire_view.do")
	public ModelAndView myInquireView() {
		return new ModelAndView("home/mypage/mypage_inquire_view");
	}

	@RequestMapping("my_answer_view.do")
	public ModelAndView myAnswerView() {
		return new ModelAndView("home/mypage/mypage_answer_view");
	}
	
	@RequestMapping("my_message.do")
	public ModelAndView myMessage() {
		return new ModelAndView("home/mypage/mypage_message");
	}
	
	@RequestMapping("my_message_view.do")
	public ModelAndView myMessageView() {
		return new ModelAndView("home/mypage/mypage_message_view");
	}
	
	@RequestMapping("my_message_send.do")
	public ModelAndView myMessageSend() {
		return new ModelAndView("home/mypage/mypage_message_send");
	}
	
	@RequestMapping("my_cartlist.do")
	public ModelAndView myCartList() {
		return new ModelAndView("home/mypage/mypage_cartlist");
	}
	
	@RequestMapping("my_shipping_address.do")
	public ModelAndView myShippingAddress() {
		return new ModelAndView("home/mypage/mypage_shipping_address");
	}
	
	@RequestMapping("my_dibs.do")
	public ModelAndView myDibs() {
		return new ModelAndView("home/mypage/mypage_dibs");
	}

	@RequestMapping("my_coupon.do")
	public ModelAndView myCoupon() {
		return new ModelAndView("home/mypage/mypage_coupon");
	}
	
//	관리자 페이지
	
	@RequestMapping("admin_login.do")
	public ModelAndView logInAdmin() {
		return new ModelAndView("admin/adm_login");
	}
	
	@RequestMapping("admin_main.do")
	public ModelAndView adminMain() {
		return new ModelAndView("admin/adm_main");
	}
	
	@RequestMapping("admin_mbr_info.do")
	public ModelAndView admMemberInfo() {
		return new ModelAndView("admin/member/adm_mbr_info");
	}
	
	@RequestMapping("admin_mbr_admin.do")
	public ModelAndView admAdminInfo() {
		return new ModelAndView("admin/member/adm_mbr_admin");
	}
	
	@RequestMapping("admin_mbr_point.do")
	public ModelAndView admMemberPoint() {
		return new ModelAndView("admin/member/adm_mbr_point");
	}
	
	@RequestMapping("admin_intg_announce.do")
	public ModelAndView admIntgAnnoun() {
		return new ModelAndView("admin/integrate/adm_intg_announce");
	}
	
	@RequestMapping("admin_intg_banner.do")
	public ModelAndView admIntgBanner() {
		return new ModelAndView("admin/integrate/adm_intg_banner");
	}
	
	@RequestMapping("admin_intg_inquire.do")
	public ModelAndView admIntgInquire() {
		return new ModelAndView("admin/integrate/adm_intg_inquire");
	}
	
	@RequestMapping("admin_intg_kate.do")
	public ModelAndView admIntgKate() {
		return new ModelAndView("admin/integrate/adm_intg_kategorie");
	}
	
	@RequestMapping("admin_intg_report.do")
	public ModelAndView admIntgReport() {
		return new ModelAndView("admin/integrate/adm_intg_report");
	}
	
	@RequestMapping("admin_intg_terms.do")
	public ModelAndView admIntgTerms() {
		return new ModelAndView("admin/integrate/adm_intg_terms");
	}
	
	@RequestMapping("admin_mkt_coupon.do")
	public ModelAndView admMktCoupon() {
		return new ModelAndView("admin/market/adm_mkt_coupon");
	}
	
	@RequestMapping("admin_mkt_delivery.do")
	public ModelAndView admMktDlvr() {
		return new ModelAndView("admin/market/adm_mkt_delivery");
	}
	
	@RequestMapping("admin_mkt_inven.do")
	public ModelAndView admMktInven() {
		return new ModelAndView("admin/market/adm_mkt_inven");
	}
	
	@RequestMapping("admin_mkt_order.do")
	public ModelAndView admMktOrder() {
		return new ModelAndView("admin/market/adm_mkt_order");
	}
	
	@RequestMapping("admin_mkt_product.do")
	public ModelAndView admMktPdt() {
		return new ModelAndView("admin/market/adm_mkt_product");
	}
	
	@RequestMapping("admin_mkt_review.do")
	public ModelAndView admMktReview() {
		return new ModelAndView("admin/market/adm_mkt_review");
	}
	
	@RequestMapping("admin_mkt_sup.do")
	public ModelAndView admMktSup() {
		return new ModelAndView("admin/market/adm_mkt_sup");
	}
	
	@RequestMapping("admin_comm_post.do")
	public ModelAndView admCommPost() {
		return new ModelAndView("admin/community/adm_comm_post");
	}
	
	@RequestMapping("admin_comm_comment.do")
	public ModelAndView admCommComment() {
		return new ModelAndView("admin/community/adm_comm_comment");
	}
}
