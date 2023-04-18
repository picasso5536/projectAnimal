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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.admin.model.service.AdminService;
import com.animal.www.admin.model.vo.AdminVO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.commons.vo.PointVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.FileReName;
import com.animal.www.commons.Paging;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;
import com.animal.www.commons.vo.MemberVO;
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

	// 회원 관리 페이지 호출
	@RequestMapping("admin_mbr_info.do")
	public ModelAndView admMemberInfo() {
		return new ModelAndView("admin/member/adm_mbr_info");
	}

	// 회원 리스트 조건 검색
	@RequestMapping(value = "/admin_mbr_info_search.do", produces = "text/xml; charset=utf-8")
	@ResponseBody
	public String search(@RequestParam("bott") String bott, @RequestParam("m_idx") String mIdx,
			@RequestParam("cPage") String cPage) {
		int count = adminService.getMbrCount();
		paging.setTotalRecord(count);

		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalpage(1);
		} else {
			paging.setTotalpage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalpage(paging.getTotalpage() + 1);
			}
		}
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

		int begin = paging.getBegin();
		int end = paging.getEnd();

		StringBuffer sb = new StringBuffer();
		List<MemberVO> mbrlist = null;
		try {
			if (bott.equals("name")) {
				// 이름로 검색
				mbrlist = adminService.getMbrByName(mIdx, begin, end);
			} else if (bott.equals("id")) {
				// id로 검색
				mbrlist = adminService.getMbrById(mIdx, begin, end);
			} else if (bott.equals("withdraw")) {
				// 탈퇴여부로 검색
				mbrlist = adminService.getMbrByWithdraw(mIdx, begin, end);
			}

		} catch (Exception e) {
			System.out.println(e + " db과정에서의 오류");
		}

		try {
			sb.append("[");
			for (int i = 0; i < mbrlist.size(); i++) {
				sb.append("{\"cnt\":\"" + (i + 1) + "\",\"name\":\"" + mbrlist.get(i).getMbr_name() + "\",\"id\":\""
						+ mbrlist.get(i).getMbr_id() + "\", \"nickname\":\"" + mbrlist.get(i).getMbr_nickname()
						+ "\", \"cellphone\":\"" + mbrlist.get(i).getMbr_cellphone() + "\", \"birth\":\""
						+ mbrlist.get(i).getMbr_birth() + "\",\"join\":\"" + mbrlist.get(i).getMbr_join()
						+ "\",\"withdraw\":\"" + mbrlist.get(i).getMbr_withdraw() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";

			return str;
		} catch (Exception e) {
			System.out.println(e + " josn 파싱에서의 오류");
		}
		return null;
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
	public ModelAndView admMemberUpdate(@RequestParam("mbr_nickname") String nickname) {
		ModelAndView mv = new ModelAndView("admin/member/adm_mbr_update");
		MemberVO mvo = adminService.memberOneList(nickname);

		String fullAddress = mvo.getMbr_address();
		String[] addressParts = fullAddress.split("/");
		String postcode = addressParts[0];
		String address = addressParts[1];
		String detailAddress = addressParts[2];
		String extraAddress = addressParts[3];

		mv.addObject("mvo", mvo);
		mv.addObject("postcode", postcode);
		mv.addObject("address", address);
		mv.addObject("detailAddress", detailAddress);
		mv.addObject("extraAddress", extraAddress);
		return mv;
	}

	@RequestMapping("member_update_ok.do")
	public ModelAndView admMemberUpdateOk(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:admin_mbr_info.do");

		String nickname = request.getParameter("m_nickname");
		String name = request.getParameter("m_name");
		String cellphone = request.getParameter("m_cellphone"); // 핸드폰번호
		String telephone = request.getParameter("m_telephone"); // 집전화번호
		String postcode = request.getParameter("sample6_postcode"); // 우편번호
		String address = request.getParameter("sample6_address"); // 주소
		String detailAddress = request.getParameter("sample6_detailAddress"); // 상세주소
		String extraAddress = request.getParameter("sample6_extraAddress"); // 참고항목

		MemberVO mvo = new MemberVO();
		mvo.setMbr_name(name);
		mvo.setMbr_nickname(nickname);
		mvo.setMbr_cellphone(cellphone);
		mvo.setMbr_telephone(telephone);
		mvo.setMbr_address(postcode + "/" + address + "/" + detailAddress + "/" + extraAddress);

		int result = adminService.memberUpdate(mvo);
		mv.addObject("result", result);
		return mv;
	}

	@RequestMapping("admin_mbr_admin.do")
	public ModelAndView admAdminInfo() {
		return new ModelAndView("admin/member/adm_mbr_admin");
	}

	// 관리자 검색조건 조회
	@RequestMapping(value = "/admin_mbr_admin_info_search.do", produces = "text/xml; charset=utf-8")
	@ResponseBody
	public String searchAdmin(@RequestParam("bott") String bott, @RequestParam("m_idx") String mIdx,
			@RequestParam("cPage") String cPage) {
		int count = adminService.getMbrCount();
		paging.setTotalRecord(count);

		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalpage(1);
		} else {
			paging.setTotalpage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalpage(paging.getTotalpage() + 1);
			}
		}
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

		int begin = paging.getBegin();
		int end = paging.getEnd();

		StringBuffer sb = new StringBuffer();
		List<AdminVO> admlist = null;
		try {
			if (bott.equals("name")) {
				// 이름로 검색
				admlist = adminService.getAdmByName(mIdx, begin, end);
			} else if (bott.equals("id")) {
				// id로 검색
				admlist = adminService.getAdmById(mIdx, begin, end);
			} else if (bott.equals("idx")) {
				// 관리자 번호로 검색
				admlist = adminService.getAdmByIdx(mIdx, begin, end);
			}

		} catch (Exception e) {
			System.out.println(e + " db과정에서의 오류");
		}

		try {
			sb.append("[");
			for (int i = 0; i < admlist.size(); i++) {
				sb.append("{\"cnt\":\"" + (i + 1) + "\", \"idx\":\"" + admlist.get(i).getAdm_idx() + "\", \"name\":\""
						+ admlist.get(i).getAdm_name() + "\",\"id\":\"" + admlist.get(i).getAdm_id()
						+ "\", \"access\":\"" + admlist.get(i).getAdm_access() + "\", \"join\":\""
						+ admlist.get(i).getAdm_join() + "\",\"state\":\"" + admlist.get(i).getAdm_state() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";

			return str;
		} catch (Exception e) {
			System.out.println(e + " josn 파싱에서의 오류");
		}
		return null;
	}

	// 관리자
	@RequestMapping("adm_more_info.do")
	public ModelAndView admAdmMoreInfo(@RequestParam("adm_idx") String idx) {
		ModelAndView mv = new ModelAndView("admin/member/adm_more_info");
		AdminVO avo = adminService.adminOneList(idx);

		mv.addObject("avo", avo);
		return mv;
	}

	// 관리자 계정 생성 페이지 호출
	@RequestMapping("ad_acc_create.do")
	public ModelAndView admAdmAccountCreate() {
		return new ModelAndView("admin/member/admin_account");
	}

	// 관리자 생성 시 아이디 중복 검사
	@RequestMapping(value = "/ad_acc_dupCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public String checkIdDuplication(@RequestParam("ad_id") String ad_id) {
		if (ad_id != "" && ad_id != null) {
			int result = adminService.getIdDupCheck(ad_id);
			if (result == 0) {
				return "useable";
			}
		}
		return "dup";
	}

	// 관리자 계정 생성
	@RequestMapping("ad_acc_create_ok.do")
	public ModelAndView admAdmAccountCreateOk(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:admin_mbr_admin.do");
		AdminVO avo = new AdminVO();

		avo.setAdm_id(request.getParameter("adm_id"));
		avo.setAdm_pw(request.getParameter("admin_pwd"));
		avo.setAdm_name(request.getParameter("adm_name"));
		if (request.getParameter("writeEmail") == "" || request.getParameter("writeEmail") == null) {
			avo.setAdm_email(request.getParameter("adm_email") + "@" + request.getParameter("mail_page"));
		} else {
			avo.setAdm_email(request.getParameter("adm_email") + "@" + request.getParameter("writeEmail"));
		}
		avo.setAdm_mgr(request.getParameter("adm_mgr"));

		int result = adminService.adminInsert(avo);

		mv.addObject(result);

		return mv;
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

	// 포인트 리스트 조건 조회
	@RequestMapping(value = "/admin_mbr_point_search.do", produces = "text/xml; charset=utf-8")
	@ResponseBody
	public String admMemberPointSearch(@RequestParam("bott") String bott, @RequestParam("m_idx") String mIdx,
			@RequestParam("cPage") String cPage) {
		int count = adminService.getPointCount();
		paging.setTotalRecord(count);

		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalpage(1);
		} else {
			paging.setTotalpage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalpage(paging.getTotalpage() + 1);
			}
		}
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

		int begin = paging.getBegin();
		int end = paging.getEnd();

		StringBuffer sb = new StringBuffer();
		List<MemberVO> mlist = null;
		try {
			if (bott.equals("name")) {
				// 이름으로 검색
				mlist = adminService.getPointByName(mIdx, begin, end);
			} else if (bott.equals("id")) {
				// id로 검색
				mlist = adminService.getPointById(mIdx, begin, end);
			}

		} catch (Exception e) {
			System.out.println(e + " db과정에서의 오류");
		}

		try {
			sb.append("[");
			for (int i = 0; i < mlist.size(); i++) {
				sb.append("{\"nickname\":\"" + mlist.get(i).getMbr_nickname() + "\", \"cnt\":\"" + (i + 1)
						+ "\", \"name\":\"" + mlist.get(i).getMbr_name() + "\",\"id\":\"" + mlist.get(i).getMbr_id()
						+ "\", \"point\":\"" + mlist.get(i).getPnt_now() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";
			System.out.println(str);
			return str;
		} catch (Exception e) {
			System.out.println(e + " josn 파싱에서의 오류");
		}
		return null;
	}

	// 관리자 포인트 지급/차감
	@RequestMapping("point_chk.do")
	public ModelAndView pointChk(@ModelAttribute("mbr_nickname") String mbr_nickname) {
		return new ModelAndView("admin/member/point_chk_p");
	}

	// 관리자 포인트 지급/차감
	@RequestMapping("point_chk_ok.do")
	public ModelAndView pointChkOk(HttpServletRequest request, @RequestParam("mbr_nickname") String mbr_nickname) {
		ModelAndView mv = new ModelAndView("redirect:admin_mbr_point.do");

		String state = request.getParameter("add_sub");
		String count = request.getParameter("point");
		String reason = request.getParameter("reason_ref");
		String content = request.getParameter("content");

		PointVO pvo = new PointVO();
		if (state.equals("add")) {
			pvo.setPnt_in(count);
		} else if (state.equals("subtraction")) {
			pvo.setPnt_out(count);
		}
		pvo.setPnt_record(reason + "/" + content);
		pvo.setMbr_nickname(mbr_nickname);

		int result = adminService.pointUpdate(pvo);

		mv.addObject(result);
//		mv.addObject(bott);
//		mv.addObject(m_idx);
//		mv.addObject(cPage);

		return mv;
	}

	// 관리자 회원 포인트 상세
	@RequestMapping("adm_point_info.do")
	public ModelAndView adminPointInfo(@ModelAttribute("mbr_nickname") String mbr_nickname) {
		return new ModelAndView("admin/member/adm_mbr_point_info");
	}

	// 관리자 회원 포인트 상세 조건 조회
	@RequestMapping(value = "admin_mbr_point_detail_search.do", produces = "text/xml; charset=utf-8")
	@ResponseBody
	public String adminPointInfoSearch(@RequestParam("bott") String bott, @RequestParam("s_date") String s_date,
			@RequestParam("e_date") String e_date, @RequestParam("nickname") String mbr_nickname,
			@RequestParam("cPage") String cPage) {

		int count = adminService.getPointDetailList();
		paging.setTotalRecord(count);

		System.out.println(count);

		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalpage(1);
		} else {
			paging.setTotalpage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalpage(paging.getTotalpage() + 1);
			}
		}
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

		int begin = paging.getBegin();
		int end = paging.getEnd();

		String.valueOf(begin);
		String.valueOf(end);
		
		StringBuffer sb = new StringBuffer();
		List<PointVO> plist = null;
		try {
			plist = adminService.pointDetail(mbr_nickname, bott, s_date, e_date, begin, end);

		} catch (Exception e) {
			System.out.println(e + " db과정에서의 오류");
		}

		try {
			sb.append("[");
			for (int i = 0; i < plist.size(); i++) {
				sb.append("{\"nickname\":\"" + plist.get(i).getMbr_nickname() + "\", \"cnt\":\"" + (i + 1)
						+ "\", \"amount\":\"" + (Integer.parseInt(plist.get(i).getPnt_in())-Integer.parseInt(plist.get(i).getPnt_out())) + "\",\"content\":\"" + plist.get(i).getPnt_record()
						+ "\", \"point\":\"" + plist.get(i).getPnt_now() + "\", \"date\":\""+ plist.get(i).getPnt_date()+"\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";

			return str;
		} catch (Exception e) {
			System.out.println(e + " josn 파싱에서의 오류");
		}
		return null;
	}

	// 관리자 회원 포인트 충전 신청
	@RequestMapping("adm_p_add_req.do")
	public ModelAndView adminPointAddReq() {
		return new ModelAndView("admin/member/adm_point_add_reqest");
	}

	// 공지 조건 검색
	@RequestMapping("adm_intg_announce_search.do")
	public ModelAndView admIntgAnnounceSearch(@RequestParam("search_option") String searchOption,
			@RequestParam("category_option") String categoryOption, @RequestParam("search_ann") String searchAnn) {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_announce");

		return mv;
	}

	// 공지 리스트 페이지 호출
	@RequestMapping("admin_intg_announce.do")
	public ModelAndView admIntgAnnounce(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_announce");
		int count = adminService.getNoticeCount();
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

		List<NotificationVO> noticelist = adminService.noticeList(paging.getBegin(), paging.getEnd());
		mv.addObject("noticelist", noticelist);
		mv.addObject("paging", paging);
		return mv;
	}

	// 공지 상세정보
	@RequestMapping("admin_intg_announce_detail.do")
	public ModelAndView admIntgAnnounceDetail() {
		return new ModelAndView("admin/integrate/adm_intg_announce_detail");
	}

	// 공지 작성 페이지 호출
	@RequestMapping("admin_intg_announce_regist.do")
	public ModelAndView admIntgAnnounceRegist() {
		return new ModelAndView("admin/integrate/adm_intg_announce_regist");
	}

	// 공지 등록
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
		return mv;
	}

	// 공지 수정 페이지 호출
	@RequestMapping("admin_intg_announce_up.do")
	public ModelAndView admIntgAnnounceUp(@RequestParam("notice_idx") int notice_idx) {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_announce_up");
		NotificationVO nvo = adminService.noticeOneList(notice_idx);
		mv.addObject("nvo", nvo);
		return mv;
	}

	// 공지 수정
	@RequestMapping("admin_intg_announce_up_ok.do")
	public ModelAndView admIntgAnnounceUpOk(NotificationVO nvo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_announce.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/upload");

			MultipartFile nvo_img = nvo.getNotice_profile_param();
			String old_f_name = request.getParameter("old_f_name");
			String ori_filename = nvo_img.getOriginalFilename();

			if (ori_filename.equals("") || ori_filename == null) {
				nvo.setNotice_img(old_f_name);
			} else {
				String str = fileReName.exec(path, nvo.getNotice_profile_param().getOriginalFilename());
				nvo.setNotice_img(str);
			}

			if (adminService.noticeUpdate(nvo) > 0) {
				nvo_img.transferTo(new File(path + "/" + nvo.getNotice_img()));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 공지 삭제
	@RequestMapping("admin_intg_announce_del.do")
	public ModelAndView admIntgAnnounceDelete(@RequestParam("notice_idx") int notice_idx) {
		ModelAndView mv = new ModelAndView("redirect:admin_intg_announce.do");
		int result = adminService.noticeDelete(notice_idx);
		mv.addObject("result", result);
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

	// 배너 등록 페이지 호출
	@RequestMapping("admin_intg_banner_reg.do")
	public ModelAndView admIntgBannerWrite() {
		return new ModelAndView("admin/integrate/adm_intg_banner_regist");
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
			System.out.println(e);
		}
		return mv;
	}

	// 배너 수정 페이지 호출
	@RequestMapping("admin_intg_banner_up.do")
	public ModelAndView admIntgBannerUp(@RequestParam("bnr_idx") int bnr_idx) {
		ModelAndView mv = new ModelAndView("admin/integrate/adm_intg_banner_update");
		BannerVO bvo = adminService.bannerOneList(bnr_idx);
		mv.addObject("bvo", bvo);
		return mv;
	}

	// 배너 수정
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
		int result = adminService.termsUpdate(termsName, termsInfo);
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

	// 관리자 상품관리 > 상품검색
	@RequestMapping(value = "adm_mkt_pdt_search.do", method = RequestMethod.POST)
	public ModelAndView admMktSearchProduct(@RequestParam("top_idx") String top_idx,
			@RequestParam("mid_idx") String mid_idx, @RequestParam("bott_idx") String bott_idx,
			@RequestParam("search_type") String search_type, @RequestParam("keyword") String keyword,
			@RequestParam("pdt_inven") String pdt_inven, @RequestParam("pdt_state") String pdt_state) {

		ModelAndView mv = new ModelAndView("admin/market/adm_mkt_product");
		try {
			String kate_idx = null;
			if (top_idx.length() != 0) {
				kate_idx = top_idx;
				if (mid_idx.length() != 0) {
					kate_idx = mid_idx;
					if (bott_idx.length() != 0) {
						kate_idx = bott_idx;
					}
				}
			}
			List<ProductVO> searchpdtlist = adminService.getProductSearchList(kate_idx, search_type, keyword, pdt_inven,
					pdt_state);
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
			sb.append("[{\"kate_idx\" : \"" + toplist.get(0).getKate_idx() + "\",\"kate_name\" : \""
					+ toplist.get(0).getKate_name() + "\", \"kate_kind\" : \"" + toplist.get(0).getKate_kind()
					+ "\", \"kate_ref\" : \"" + toplist.get(0).getKate_ref() + "\"},");
			sb.append("{\"kate_idx\" : \"" + toplist.get(1).getKate_idx() + "\",\"kate_name\" : \""
					+ toplist.get(1).getKate_name() + "\", \"kate_kind\" : \"" + toplist.get(1).getKate_kind()
					+ "\", \"kate_ref\" : \"" + toplist.get(1).getKate_ref() + "\"}]");
		} catch (Exception e) {
			System.out.println(e);
		}
		return sb.toString();

	}

	// 관리자 - 마켓 등록 중분류 카테고리
	@RequestMapping(value = "/adm_pdt_mid_selectboxlist.do", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	@ResponseBody
	public String admMktMidPdtSelectBox(@RequestParam("top_idx") String top_idx, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> midlist = adminService.getKategoryList(Integer.parseInt(top_idx));
		try {
			sb.append("[");
			for (int i = 0; i < midlist.size(); i++) {
				sb.append("{\"m_kate_idx\" : \"" + midlist.get(i).getKate_idx() + "\",\"m_kate_name\" : \""
						+ midlist.get(i).getKate_name() + "\", \"m_kate_kind\" : \"" + midlist.get(i).getKate_kind()
						+ "\", \"m_kate_ref\" : \"" + midlist.get(i).getKate_ref() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";
			return str;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	// 관리자 - 마켓 등록 최하위 카테고리
	@RequestMapping(value = "/adm_pdt_bott_selectboxlist.do", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	@ResponseBody
	public String admMktBottPdtSelectBox(@RequestParam("mid_idx") String mid_idx, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		List<KategorieVO> bottlist = adminService.getKategoryList(Integer.parseInt(mid_idx));
		try {
			sb.append("[");
			for (int i = 0; i < bottlist.size(); i++) {
				sb.append("{\"b_kate_idx\" : \"" + bottlist.get(i).getKate_idx() + "\",\"b_kate_name\" : \""
						+ bottlist.get(i).getKate_name() + "\", \"b_kate_kind\" : \"" + bottlist.get(i).getKate_kind()
						+ "\", \"b_kate_ref\" : \"" + bottlist.get(i).getKate_ref() + "\"},");
			}
			String str = sb.toString().substring(0, sb.toString().length() - 1);
			str = str + "]";
			return str;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
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
		// ModelAndView mv = new ModelAndView("redirect:admin_mkt_product.do");
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
			pdtvo.setPdt_info(info_str.substring(1, info_str.length() - 1));
			System.out.println(info_str.substring(1, info_str.length() - 1));

			/*
			 * System.out.println("pdt_price : "+ pdtvo.getPdt_price()+ ", pdt_name :"+
			 * pdtvo.getPdt_name() +", pdt_info : "+pdtvo.getPdt_info() +
			 * ", pdt_img : "+pdtvo.getPdt_img() +", pdt_saleprice : "+
			 * pdtvo.getPdt_saleprice() + ", kate_idx : " + pdtvo.getKate_idx() +
			 * ", pcl_idx : " + pdtvo.getPcl_idx() + ", corp_idx : " + pdtvo.getCorp_idx() +
			 * ", pdt_state : " + pdtvo.getPdt_state() + ", pdt_inven : " +
			 * pdtvo.getPdt_inven());
			 */
			int result = adminService.ProductInsert(pdtvo);
			System.out.println(result);
			if (result > 0) {
				pdt_img_param.transferTo(new File(path + "/" + pdt_img));

				for (int i = 0; i < pdt_info.length; i++) {
					File pdtInfoFile = new File(path + "/" + pdt_info[i]);
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
	public ModelAndView admMktUpdatePdt(@RequestParam("pdt_idx") String pdt_idx,
			@RequestParam("kate_idx") String kate_idx) {
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
