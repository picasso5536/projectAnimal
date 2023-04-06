package com.animal.www.admin.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.admin.model.service.AdminService;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.FileReName;
import com.animal.www.commons.Paging;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.NotificationVO;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	// 관리자 페이지에서 처리
	@Autowired
	private FileReName fileReName;

	public void setFileReName(FileReName fileReName) {
		this.fileReName = fileReName;
	}

	@Autowired
	private Paging paging;

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

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

	// 탈퇴회원리스트
	@RequestMapping("mbr_withdrawal.do")
	public ModelAndView memberWithdrawal() {
		return new ModelAndView("admin/member/mbr_withdrawal");
	}

	// 탈퇴회원정보
	@RequestMapping("adm_mbr_withdrawal_info.do")
	public ModelAndView memberWithdrawalInfo() {
		return new ModelAndView("admin/member/adm_mbr_withdrawal_info");
	}

	@RequestMapping("member_update.do")
	public ModelAndView admMemberUpdate() {
		return new ModelAndView("admin/member/adm_mbr_update");
	}

	@RequestMapping("admin_mbr_admin.do")
	public ModelAndView admAdminInfo() {
		return new ModelAndView("admin/member/adm_mbr_admin");
	}

	// 관리자
	@RequestMapping("adm_more_info.do")
	public ModelAndView admAdmMoreInfo() {
		return new ModelAndView("admin/member/adm_more_info");
	}

	@RequestMapping("ad_acc_create.do")
	public ModelAndView admAdmAccountCreate() {
		return new ModelAndView("admin/member/admin_account");
	}

	// 관리자 내정보 수정페이지
	@RequestMapping("ad_acc_update.do")
	public ModelAndView admAdmAccountUpdate() {
		return new ModelAndView("admin/member/adm_account_update");
	}

	// 관리자 메시지 확인
	@RequestMapping("admin_mbr_message.do")
	public ModelAndView admAdminMessage() {
		return new ModelAndView("admin/member/adm_mbr_message");
	}

	@RequestMapping("adm_send_msg.do")
	public ModelAndView admAdminSendMessage() {
		return new ModelAndView("admin/member/adm_mbr_sendmsg");
	}

	// 관리자 메시지 상세보기
	@RequestMapping("mbr_msg_onelist.do")
	public ModelAndView admAdminMessageOneList() {
		return new ModelAndView("admin/member/adm_mbr_msgonelist");
	}

	// 관리자 포인트 관리
	@RequestMapping("admin_mbr_point.do")
	public ModelAndView admMemberPoint() {
		return new ModelAndView("admin/member/adm_mbr_point");
	}

	// 관리자 포인트 지급/차감
	@RequestMapping("point_chk.do")
	public ModelAndView pointChk() {
		return new ModelAndView("admin/member/point_chk_p");
	}

	// 관리자 회원 포인트 상세
	@RequestMapping("adm_point_info.do")
	public ModelAndView adminPointInfo() {
		return new ModelAndView("admin/member/adm_mbr_point_info");
	}

	// 관리자 회원 포인트 충전 신청
	@RequestMapping("adm_p_add_req.do")
	public ModelAndView adminPointAddReq() {
		return new ModelAndView("admin/member/adm_point_add_reqest");
	}

	// 공지 리스트 페이지 호출
	/*
	 * @RequestMapping("admin_intg_announce.do") public ModelAndView
	 * admIntgAnnoun(HttpServletRequest request) { ModelAndView mv = new
	 * ModelAndView("admin/integrate/adm_intg_banner"); int count =
	 * adminService.getNoticeCount(); paging.setTotalRecord(count);
	 * 
	 * if (paging.getTotalRecord() <= paging.getNumPerPage()) {
	 * paging.setTotalpage(1); } else { paging.setTotalpage(paging.getTotalRecord()
	 * / paging.getNumPerPage()); if (paging.getTotalRecord() %
	 * paging.getNumPerPage() != 0) { paging.setTotalpage(paging.getTotalpage() +
	 * 1); } } String cPage = request.getParameter("cPage"); if (cPage == null) {
	 * paging.setNowPage(1); } else { paging.setNowPage(Integer.parseInt(cPage)); }
	 * 
	 * paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
	 * paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());
	 * 
	 * paging.setBeginBlock( (int) ((paging.getNowPage() - 1) /
	 * paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
	 * paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
	 * 
	 * if (paging.getEndBlock() > paging.getTotalpage()) {
	 * paging.setEndBlock(paging.getTotalpage()); }
	 * 
	 * List<NotificationVO> noticelist = adminService.noticeList(paging.getBegin(),
	 * paging.getEnd());
	 * 
	 * mv.addObject("noticelist", noticelist); mv.addObject("paging", paging);
	 * return mv; }
	 */

	// 공지 수정 페이지 호출
	@RequestMapping("admin_intg_announce_up.do")
	public ModelAndView admIntgAnnounUp() {
		return new ModelAndView("admin/integrate/adm_intg_announce_up");
	}

	// 공지 작성 페이지로 호출
	@RequestMapping("admin_intg_announce_regist.do")
	public ModelAndView admIntgAnnounRegist() {
		return new ModelAndView("admin/integrate/adm_intg_announce_regist");
	}

	// 작성된 공지 등록
	@RequestMapping("admin_intg_announce_ins.do")
	public ModelAndView admIntgAnnounRegistOk(NotificationVO nvo, HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_announce.do");
		try {
			String path = session.getServletContext().getRealPath("/resources/upload");
			MultipartFile nvo_img = nvo.getNotice_profile_param();

			if (nvo_img.isEmpty()) {
				nvo.setNotice_img("");
			} else {
				String reName1 = fileReName.exec(path, nvo_img.getOriginalFilename());
				nvo.setNotice_img(reName1);
			}
			mv.addObject("cPage", "1");
			if (adminService.noticeInsert(nvo) > 0) {
				nvo_img.transferTo(new File(path + "/" + nvo.getNotice_img()));
			}
		} catch (Exception e) {
		}
		System.out.println(nvo.getNotice_img() + 111);

		return mv;
	}

	// 배너 리스트 페이징 처리
	@RequestMapping("admin_intg_banner.do")
	public ModelAndView admIntgBanner(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_banner");
		int count = adminService.getBannerCount();
		paging.setTotalRecord(count);

		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalpage(1);
		} else {
			paging.setTotalpage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalpage(paging.getTotalpage() + 1);
			}
		}
		String cPage = request.getParameter("cPage");
		if (cPage == null) {
			paging.setNowPage(1);
		} else {
			paging.setNowPage(Integer.parseInt(cPage));
		}

		paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
		paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

		if (paging.getEndBlock() > paging.getTotalpage()) {
			paging.setEndBlock(paging.getTotalpage());
		}

		List<BannerVO> bannerlist = adminService.BannerList(paging.getBegin(), paging.getEnd());

		mv.addObject("bannerlist", bannerlist);
		mv.addObject("paging", paging);
		return mv;
	}

	// 배너 등록
	@RequestMapping("admin_intg_banner_ins.do")
	public ModelAndView admIntgBannerInsert(BannerVO bvo, HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_banner.do");
		try {
			String path = session.getServletContext().getRealPath("/resources/upload");
			MultipartFile bvo_img = bvo.getBnr_param();

			if (bvo_img.isEmpty()) {
				bvo.setBnr_img("");
			} else {
				String reName1 = fileReName.exec(path, bvo_img.getOriginalFilename());
				bvo.setBnr_img(reName1);
			}
			mv.addObject("cPage", "1");
			if (adminService.bannerInsert(bvo) > 0) {
				bvo_img.transferTo(new File(path + "/" + bvo.getBnr_img()));
			}
		} catch (Exception e) {
		}
		return mv;
	}

	// 등록된 배너 수정 페이지 호출
	@RequestMapping("admin_intg_banner_up.do")
	public ModelAndView admIntgBannerUp(@RequestParam("bnr_idx") int bnr_idx) {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_banner_update");
		BannerVO bvo = adminService.BannerOneList(bnr_idx);
		mv.addObject("bvo", bvo);
		return mv;
	}

	// 등록된 배너 수정
	@RequestMapping("admin_intg_banner_up_ok.do")
	public ModelAndView admIntgBannerUpOk(BannerVO bvo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_banner.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/upload");

			MultipartFile bvo_img = bvo.getBnr_param();
			String old_f_name = request.getParameter("old_f_name");
			String ori_filename = bvo_img.getOriginalFilename();

			if (ori_filename.equals("") || ori_filename == null) {
				bvo.setBnr_img(old_f_name);
			} else {
				String str = fileReName.exec(path, bvo.getBnr_param().getOriginalFilename());
				bvo.setBnr_img(str);
			}

			if (adminService.bannerUpdate(bvo) > 0) {
				bvo_img.transferTo(new File(path + "/" + bvo.getBnr_img()));
			}
			mv.addObject(request.getParameter("bnr_idx"));
			mv.addObject(request.getParameter("cPage"));
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 등록된 배너 삭제
	@RequestMapping("admin_intg_banner_del.do")
	public ModelAndView admIntgBannerDelete(@RequestParam("bnr_idx") int bnr_idx) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_banner.do");
		int result = adminService.bannerDelete(bnr_idx);
		mv.addObject(result);
		return mv;
	}

	@RequestMapping("admin_intg_banner_reg.do")
	public ModelAndView admIntgBannerWrite() {
		return new ModelAndView("admin/integrate/adm_intg_banner_regist");
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

	// 약관 리스트 페이지
	@RequestMapping("admin_intg_terms.do")
	public ModelAndView admIntgTerms() {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_terms");
		List<TermsVO> termslist = adminService.termsList();
		mv.addObject("termslist", termslist);
		return mv;
	}

	// 약관 등록 페이지 호출
	@RequestMapping("admin_intg_terms_reg.do")
	public ModelAndView admIntgTermsRegist() {
		return new ModelAndView("admin/integrate/adm_intg_terms_regist");
	}

	// 약관 등록
	@RequestMapping("admin_intg_terms_ins.do")
	public ModelAndView admIntgTermsInsert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_terms.do");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int result = adminService.termsInsert(title, content);
		mv.addObject(result);
		return mv;
	}

	// 약관 삭제
	@RequestMapping(value = "/admin_delete_terms.do", method = RequestMethod.POST)
	@ResponseBody
	public String admIntgTermsDelete(@RequestParam("termsName") String termsName) {
		int result = 0;
		try {
			result = adminService.termsDelete(termsName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return String.valueOf(result);
	}

	// 약관 수정
	@RequestMapping(value = "/admin_update_terms.do", method = RequestMethod.POST)
	@ResponseBody
	public String admIntgTermsUpdate(@RequestParam("termsName") String termsName,
			@RequestParam("termsInfo") String termsInfo) {
		int result = 0;
		try {
			result = adminService.termsUpdate(termsName, termsInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return String.valueOf(result);
	}

	// 관리자-쿠폰 관리목록
	@RequestMapping("admin_mkt_coupon.do")
	public ModelAndView admMktCoupon() {
		return new ModelAndView("admin/market/adm_mkt_coupon");
	}

	// 관리자 - 쿠폰 등록
	@RequestMapping("adm_mkt_addcp.do")
	public ModelAndView admMktAddCoupon() {
		return new ModelAndView("admin/market/adm_mkt_add_coupon");
	}

	// 관리자 - 쿠폰 수정
	@RequestMapping("adm_mkt_cp_update.do")
	public ModelAndView admMktCouponUpdate() {
		return new ModelAndView("admin/market/adm_mkt_coupon_update");
	}

	@RequestMapping("admin_mkt_delivery.do")
	public ModelAndView admMktDlvr() {
		return new ModelAndView("admin/market/adm_mkt_delivery");
	}

	// 관리자 - 마켓 재고
	@RequestMapping("admin_mkt_inven.do")
	public ModelAndView admMktInven() {
		return new ModelAndView("admin/market/adm_mkt_inven");
	}

	// 관리자 - 마켓 재고 수정
	@RequestMapping("adm_mkt_inven_up.do")
	public ModelAndView admMktInvenUpdate() {
		return new ModelAndView("admin/market/adm_mkt_inven_update");
	}

	// 관리자 - 마켓 재고 등록
	@RequestMapping("adm_mkt_inven_insert.do")
	public ModelAndView admMktInvenInsert() {
		return new ModelAndView("admin/market/adm_mkt_inven_insert");
	}

	// 관리자 - 마켓 주문관리
	@RequestMapping("admin_mkt_order.do")
	public ModelAndView admMktOrder() {
		return new ModelAndView("admin/market/adm_mkt_order");
	}

	// 관리자 - 마켓 주문상세
	@RequestMapping("adm_order_more.do")
	public ModelAndView admMktOrderMore() {
		return new ModelAndView("admin/market/adm_mkt_order_onelist");
	}

	// 관리자 - 마켓 상품관리
	@RequestMapping("admin_mkt_product.do")
	public ModelAndView admMktPdt() {
		return new ModelAndView("admin/market/adm_mkt_product");
	}

	// 관리자 - 마켓 상품등록
	@RequestMapping("adm_add_pdt.do")
	public ModelAndView admMktAddPdt() {
		return new ModelAndView("admin/market/adm_add_pdt");
	}

	// 관리자 - 마켓 상품수정
	@RequestMapping("adm_up_pdt.do")
	public ModelAndView admMktUpdatePdt() {
		return new ModelAndView("admin/market/adm_update_pdt");
	}

	// 관리자 - 마켓 상품리뷰
	@RequestMapping("admin_mkt_review.do")
	public ModelAndView admMktReview() {
		return new ModelAndView("admin/market/adm_mkt_review");
	}

	// 관리자 - 마켓 상품리뷰상세
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

	@RequestMapping("admin_comm_comment.do")
	public ModelAndView admCommComment() {
		return new ModelAndView("admin/community/adm_comm_comment");
	}
}
