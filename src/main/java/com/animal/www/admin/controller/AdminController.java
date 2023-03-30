package com.animal.www.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	
	 @RequestMapping("admin_login.do") 
	 public ModelAndView logInAdmin() { 
     return new ModelAndView("admin/adm_login"); }
			 
	 @RequestMapping("admin_main.do") 
	 public ModelAndView adminMain() { 
	return new ModelAndView("admin/adm_main"); }
	
	@RequestMapping("admin_mbr_info.do")
	public ModelAndView admMemberInfo() {
		return new ModelAndView("admin/member/adm_mbr_info");
	}
	
	@RequestMapping("admin_mbr_admin.do")
	public ModelAndView admAdminInfo() {
		return new ModelAndView("admin/member/adm_mbr_admin");
	}
	
	@RequestMapping("admin_mbr_message.do")
	public ModelAndView admAdminMessage() {
		return new ModelAndView("admin/member/adm_mbr_message");
	}
	
	@RequestMapping("admin_mbr_point.do")
	public ModelAndView admMemberPoint() {
		return new ModelAndView("admin/member/adm_mbr_point");
	}
	
	@RequestMapping("admin_intg_announce.do")
	public ModelAndView admIntgAnnoun() {
		return new ModelAndView("admin/integrate/adm_intg_announce");
	}
	
	@RequestMapping("admin_intg_announce_regist.do")
	public ModelAndView admIntgAnnounRegist() {
		return new ModelAndView("admin/integrate/adm_intg_announce_regist");
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
