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
	
	// 탈퇴회원 관리
	@RequestMapping("mbr_withdrawal.do")
	public ModelAndView memberwithdrawal() {
		return new ModelAndView("admin/member/mbr_withdrawal");
	}
	// 고객등록 페이지
	@RequestMapping("member_update.do")
	public ModelAndView admMemberUpdate() {
		return new ModelAndView("admin/member/adm_mbr_update");
	}
	
	@RequestMapping("admin_mbr_admin.do")
	public ModelAndView admAdminInfo() {
		return new ModelAndView("admin/member/adm_mbr_admin");
	}
	
	// 관리자 등록페이지
	@RequestMapping("ad_acc_create.do")
	public ModelAndView admAdmAccountCreate() {
		return new ModelAndView("admin/member/admin_account");
	}
	// 관리자 메시지 확인
	@RequestMapping("admin_mbr_message.do")
	public ModelAndView admAdminMessage() {
		return new ModelAndView("admin/member/adm_mbr_message");
	}
	// 관리자 메시지 보내기
	@RequestMapping("adm_send_msg.do")
	public ModelAndView admAdminSendMessage() {
		return new ModelAndView("admin/member/adm_mbr_sendmsg");
	}
	
	@RequestMapping("admin_mbr_point.do")
	public ModelAndView admMemberPoint() {
		return new ModelAndView("admin/member/adm_mbr_point");
	}
	
	@RequestMapping("point_chk.do")
	public ModelAndView pointChk() {
		return new ModelAndView("admin/member/point_chk_p");
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
	
	// 마켓관리-쿠폰관리
	@RequestMapping("admin_mkt_coupon.do")
	public ModelAndView admMktCoupon() {
		return new ModelAndView("admin/market/adm_mkt_coupon");
	}
	// 마켓관리-쿠폰등록
	@RequestMapping("adm_mkt_addcp.do")
	public ModelAndView admMktAddCoupon() {
		return new ModelAndView("admin/market/adm_mkt_add_coupon");
	}
	
	@RequestMapping("admin_mkt_delivery.do")
	public ModelAndView admMktDlvr() {
		return new ModelAndView("admin/market/adm_mkt_delivery");
	}
	
	@RequestMapping("admin_mkt_inven.do")
	public ModelAndView admMktInven() {
		return new ModelAndView("admin/market/adm_mkt_inven");
	}
	//마켓관리-주문관리페이지
	@RequestMapping("admin_mkt_order.do")
	public ModelAndView admMktOrder() {
		return new ModelAndView("admin/market/adm_mkt_order");
	}
	// 마켓관리-주문상세
	@RequestMapping("adm_order_more.do")
	public ModelAndView admMktOrderMore() {
		return new ModelAndView("admin/market/adm_mkt_order_onelist");
	}
	
	// 마켓관리-상품관리
	@RequestMapping("admin_mkt_product.do")
	public ModelAndView admMktPdt() {
		return new ModelAndView("admin/market/adm_mkt_product");
	}
	// 마켓관리-상품등록페이지
	@RequestMapping("adm_add_pdt.do")
	public ModelAndView admMktAddPdt() {
		return new ModelAndView("admin/market/adm_add_pdt");
	}
	// 마켓관리-리뷰관리
	@RequestMapping("admin_mkt_review.do")
	public ModelAndView admMktReview() {
		return new ModelAndView("admin/market/adm_mkt_review");
	}
	// 마켓관리-리뷰상세
	@RequestMapping("adm_review_onelist.do")
	public ModelAndView admMktReviewOneList() {
		return new ModelAndView("admin/market/adm_review_onelist");
	}
	
	@RequestMapping("admin_mkt_sup.do")
	public ModelAndView admMktSup() {
		return new ModelAndView("admin/market/adm_mkt_sup");
	}
	
	@RequestMapping("admin_comm_post.do")
	public ModelAndView admCommPost() {
		return new ModelAndView("admin/community/adm_comm_post");
	}

	@RequestMapping("adm_comm_post_management.do")
	public ModelAndView admCommPostManagement() {
		return new ModelAndView("admin/community/adm_comm_post_management");
	}

	@RequestMapping("adm_comm_post_registration.do")
	public ModelAndView admCommPostRegistration() {
		return new ModelAndView("admin/community/adm_comm_post_registration");
	}
	
	@RequestMapping("admin_comm_comment.do")
	public ModelAndView admCommComment() {
		return new ModelAndView("admin/community/adm_comm_comment");
	}

	@RequestMapping("admin_comm_comment_management.do")
	public ModelAndView admCommCommentManagement() {
		return new ModelAndView("admin/community/adm_comm_comment_management");
	}
	
	@RequestMapping("admin_comm_comment_registration.do")
	public ModelAndView admCommCommentRegistration() {
		return new ModelAndView("admin/community/adm_comm_comment_registration");
	}
}
