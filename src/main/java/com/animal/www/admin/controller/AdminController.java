package com.animal.www.admin.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.admin.model.service.AdminService;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.FileReName;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;

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
	//탈퇴회원리스트
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

	@RequestMapping("admin_intg_announce.do")
	public ModelAndView admIntgAnnoun() {
		return new ModelAndView("admin/integrate/adm_intg_announce");
	}

	@RequestMapping("admin_intg_announce_up.do")
	public ModelAndView admIntgAnnounUp() {
		return new ModelAndView("admin/integrate/adm_intg_announce_up");
	}

	@RequestMapping("admin_intg_announce_regist.do")
	public ModelAndView admIntgAnnounRegist() {
		return new ModelAndView("admin/integrate/adm_intg_announce_regist");
	}

	@RequestMapping("admin_intg_banner.do")
	public ModelAndView admIntgBanner() {
		return new ModelAndView("admin/integrate/adm_intg_banner");
	}

	@RequestMapping("admin_intg_banner_ins.do")
	public ModelAndView admIntgBannerInsert(BannerVO bvo, HttpSession session) {
		System.out.println(bvo.getBnr_state());
		System.out.println(bvo.getBnr_div());
		
		ModelAndView mv = new ModelAndView("redirect:admin_intg_banner.do");
		try {
			String path = session.getServletContext().getRealPath("/resources/images");
			MultipartFile bvo_img = bvo.getBnr_param();

			String reName1 = fileReName.exec(path, bvo_img.getOriginalFilename());

			bvo.setBnr_img(reName1);

			if (adminService.bannerInsert(bvo) > 0) {
				bvo_img.transferTo(new File(path + "/" + reName1));
			}
		} catch (Exception e) {
		}
		return mv;
	}

	@RequestMapping("admin_intg_banner_up.do")
	public ModelAndView admIntgBannerUp() {
		return new ModelAndView("admin/integrate/adm_intg_banner_update");
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

	@RequestMapping("admin_intg_terms.do")
	public ModelAndView admIntgTerms() {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_terms");
		List<TermsVO> termslist = adminService.termsList();
		mv.addObject("termslist", termslist);
		return mv;
	}

	@RequestMapping("admin_intg_terms_reg.do")
	public ModelAndView admIntgTermsRegist() {
		return new ModelAndView("admin/integrate/adm_intg_terms_regist");
	}

	@RequestMapping("admin_intg_terms_ins.do")
	public ModelAndView admIntgTermsInsert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_terms.do");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int result = adminService.termsInsert(title, content);
		mv.addObject(result);
		return mv;
	}

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
	//관리자 - 마켓 재고
	@RequestMapping("admin_mkt_inven.do")
	public ModelAndView admMktInven() {
		return new ModelAndView("admin/market/adm_mkt_inven");
	}
	//관리자 - 마켓 재고 수정
	@RequestMapping("adm_mkt_inven_up.do")
	public ModelAndView admMktInvenUpdate() {
		return new ModelAndView("admin/market/adm_mkt_inven_update");
	}
	//관리자 - 마켓 재고 등록
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
	
	// 관리자 상품관리 > 상품검색
	@RequestMapping(value = "adm_mkt_pdt_search.do", method = RequestMethod.POST)
	public ModelAndView admMktSearchProduct(@RequestParam("top_idx") String top_idx, @RequestParam("mid_idx") String mid_idx,
			@RequestParam("bott_idx") String bott_idx, @RequestParam("search_type") String search_type,
			@RequestParam("keyword") String keyword, @RequestParam("pdt_inven") String pdt_inven,
			@RequestParam("pdt_state") String pdt_state) {
		
		ModelAndView mv = new ModelAndView("admin/market/adm_mkt_product");
		try {
			String kate_idx = null;
			if(top_idx.length() != 0) {
				kate_idx = top_idx;
				if( mid_idx.length() != 0) {
					kate_idx = mid_idx;
					if (bott_idx.length() != 0) {
						kate_idx = bott_idx;
					}
				}
			}
			List<ProductVO> searchpdtlist = adminService.getProductSearchList(kate_idx, search_type, keyword, pdt_inven, pdt_state);
			mv.addObject("searchpdtlist", searchpdtlist);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}
	
	// 관리자 - 마켓 상품등록
	@RequestMapping("adm_add_pdt.do")
	public ModelAndView admMktAddPdt() {
		return new ModelAndView("admin/market/adm_add_pdt");
	}
	

	// 관리자 - 마켓 등록 상위 카테고리
	@RequestMapping(value = "/adm_pdt_top_selectboxlist.do", produces = "text/html; charset=utf-8")
	@ResponseBody
	public String admMktPdtTopSelectBox(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> toplist = adminService.getTopKategoryList();
		try {
			sb.append("[{\"kate_idx\" : \""+toplist.get(0).getKate_idx()+"\",\"kate_name\" : \""+toplist.get(0).getKate_name()+"\", \"kate_kind\" : \""+toplist.get(0).getKate_kind()+"\", \"kate_ref\" : \""+toplist.get(0).getKate_ref()+"\"},");
			sb.append("{\"kate_idx\" : \""+toplist.get(1).getKate_idx()+"\",\"kate_name\" : \""+toplist.get(1).getKate_name()+"\", \"kate_kind\" : \""+toplist.get(1).getKate_kind()+"\", \"kate_ref\" : \""+toplist.get(1).getKate_ref()+"\"}]");
		} catch (Exception e) {
			System.out.println(e);
		}
		return sb.toString();
		
	}
	// 관리자 - 마켓 등록 중분류 카테고리
	@RequestMapping(value = "/adm_pdt_mid_selectboxlist.do", method =RequestMethod.POST, produces = "text/html; charset=utf-8")
	@ResponseBody
	public String admMktMidPdtSelectBox(@RequestParam("top_idx") String top_idx,
			HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> midlist = adminService.getKategoryList(Integer.parseInt(top_idx));
		try {
			sb.append("[");
			for (int i = 0; i < midlist.size(); i++) {
				sb.append("{\"m_kate_idx\" : \""+midlist.get(i).getKate_idx()+"\",\"m_kate_name\" : \""+midlist.get(i).getKate_name()+"\", \"m_kate_kind\" : \""+midlist.get(i).getKate_kind()
																																+"\", \"m_kate_ref\" : \""+midlist.get(i).getKate_ref()+"\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length()-1);
			str = str + "]";
			return str;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null ;
	}
	
	// 관리자 - 마켓 등록 최하위 카테고리
	@RequestMapping(value = "/adm_pdt_bott_selectboxlist.do", method =RequestMethod.POST, produces = "text/html; charset=utf-8")
	@ResponseBody
	public String admMktBottPdtSelectBox(@RequestParam("mid_idx") String mid_idx,
			HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> bottlist = adminService.getKategoryList(Integer.parseInt(mid_idx));
		try {
			sb.append("[");
			for (int i = 0; i < bottlist.size(); i++) {
				sb.append("{\"b_kate_idx\" : \""+bottlist.get(i).getKate_idx()+"\",\"b_kate_name\" : \""+bottlist.get(i).getKate_name()+"\", \"b_kate_kind\" : \""+bottlist.get(i).getKate_kind()+"\", \"b_kate_ref\" : \""+bottlist.get(i).getKate_ref()+"\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length()-1);
			str = str + "]";
			return str;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null ;
	}
	
	// 관리자 - 마켓 상품등록- 등록사 리스트
	@RequestMapping(value = "/adm_mkt_search_corp_idx.do")
	public ModelAndView admMktSearchCorp() {
		ModelAndView mv = new ModelAndView("admin/market/adm_mkt_search_corplist");
		List<CorporationVO> corplist = adminService.getCorpList();
		mv.addObject("corplist", corplist);
		return mv;
	}
	
	// 관리자 - 마켓 상품등록- 택배사 리스트
	@RequestMapping(value = "/adm_mkt_search_pcl_idx.do")
	public ModelAndView admMktSearchPcl() {
		ModelAndView mv = new ModelAndView("admin/market/adm_mkt_search_pcllist");
		List<ParcelVO> pcllist = adminService.getPclList();
		mv.addObject("pcllist", pcllist);
		return mv;
	}
	
	// 관리자 - 마켓 상품insert
	@RequestMapping(value = "/adm_mkt_pdt_insert_go.do")
	public ModelAndView admMktProductInsert(ProductVO pdtvo, HttpSession session) {
		//ModelAndView mv = new ModelAndView("redirect:admin_mkt_product.do");
		ModelAndView mv = new ModelAndView("redirect:admin_mkt_product.do");
		// 이미지 저장경로
		String path = session.getServletContext().getRealPath("/resources/img/upload");
		MultipartFile pdt_img_param = pdtvo.getPdt_profile_param();
		MultipartFile[] pdt_info_param = pdtvo.getPdt_info_param();
		
		String[] getPdt_info_param = new String[pdtvo.getPdt_info_param().length];
		try {
			// 상품 메인이미지 파일 리네임
			String pdt_img = fileReName.exec(path, pdtvo.getPdt_profile_param().getOriginalFilename());	
			// 상품상세 이미지 배열 파일 리네임
		    for (int i = 0; i < pdtvo.getPdt_info_param().length; i++) {
		    	getPdt_info_param[i] = pdtvo.getPdt_info_param()[i].getOriginalFilename();		    
		    }
		    String[] pdt_info = fileReName.exec2(path, getPdt_info_param);
		    // 배열로 저장되어있는 상세정보 이미지들의 앞 뒤 [, ] 를 제거해 문자열 형태로 디비에 저장한다.
		    String info_str = Arrays.toString(pdt_info);
		    pdtvo.setPdt_img(pdt_img);
		    pdtvo.setPdt_info(info_str.substring(1, info_str.length()-1));
		    System.out.println(info_str.substring(1, info_str.length()-1));
		    
		   /* System.out.println("pdt_price : "+ pdtvo.getPdt_price()+ ", pdt_name :"+ pdtvo.getPdt_name()
		    				+", pdt_info : "+pdtvo.getPdt_info() + ", pdt_img : "+pdtvo.getPdt_img()
		    				+", pdt_saleprice : "+ pdtvo.getPdt_saleprice() + ", kate_idx : " + pdtvo.getKate_idx() 
		    				+ ", pcl_idx : " + pdtvo.getPcl_idx() + ", corp_idx : " + pdtvo.getCorp_idx()
		    				+ ", pdt_state : " + pdtvo.getPdt_state() + ", pdt_inven : " + pdtvo.getPdt_inven());
		    */
		    int result = adminService.ProductInsert(pdtvo);
		    System.out.println(result);
		    if(result>0) {
		    	pdt_img_param.transferTo(new File(path+"/"+pdt_img));
		    	
		    	for (int i = 0; i < pdt_info.length; i++) {
	                File pdtInfoFile = new File(path+"/"+pdt_info[i]);
	                pdt_info_param[i].transferTo(pdtInfoFile);
	            }
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}
	
	// 관리자 - 마켓 상품수정
	@RequestMapping(value = "adm_update_pdt.do", method = RequestMethod.POST)
	public ModelAndView admMktUpdatePdt(@RequestParam("pdt_idx") String pdt_idx, @RequestParam("kate_idx") String kate_idx) {
		ModelAndView mv = new ModelAndView("admin/market/adm_update_pdt");
		
		// 소분류 카테고리 정보vo
		KategorieVO bottkatevo = adminService.getKateInfo(kate_idx);
		// 중분류 카테고리vo를 가져오기 위한 idx
		String mid_idx = bottkatevo.getKate_kind();
		
		// 중분류 카테고리 정보vo
		KategorieVO midkatevo = adminService.getKateInfo(mid_idx);
		// 대분류 카테고리vo를 가져오기 위한 idx
		String top_idx = midkatevo.getKate_kind();
		
		// 대분류 카테고리 정보 vo
		KategorieVO topkatevo = adminService.getKateInfo(top_idx);
		
		mv.addObject("bottkatevo", bottkatevo);
		mv.addObject("midkatevo", midkatevo);
		mv.addObject("topkatevo", topkatevo);
		
		// 상품vo idx로 가져오기
		ProductVO pdtvo = adminService.getProductInfo(pdt_idx);
		
		mv.addObject("pdtvo", pdtvo);
		
		return mv;
	}
	
	// 관리자 - 상품정보 업데이트
	//@RequestMapping(value = "adm_pdt_update_ok.do" , method = RequestMethod.POST)
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
