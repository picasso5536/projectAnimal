package com.animal.www.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.admin.model.dao.AdminDAO;
import com.animal.www.admin.model.vo.AdminVO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.commons.vo.PointVO;
import com.animal.www.commons.vo.RequestPointVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;
import com.animal.www.commons.vo.MemberVO;
import com.animal.www.commons.vo.NotificationVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	// 약관 리스트
	@Override
	public List<TermsVO> termsList() {
		return adminDAO.termsList();
	}

	// 해당 약관 삭제
	@Override
	public int termsDelete(String termsName) {
		return adminDAO.termsDelete(termsName);
	}

	// 해당 약관 수정
	@Override
	public int termsUpdate(String termsName, String termsInfo) {
		return adminDAO.termsUpdate(termsName, termsInfo);
	}

	// 약관 등록
	@Override
	public int termsInsert(String termsName, String termsInfo) {
		return adminDAO.termsInsert(termsName, termsInfo);
	}

	// 관리자 > 상품관리 > 상품검색
	@Override
	public List<ProductVO> getProductSearchList(String kate_idx, String search_type, String keyword, String pdt_inven,
			String pdt_state) {
		return adminDAO.getProductSearchList(kate_idx, search_type, keyword, pdt_inven, pdt_state);
	}

	// 상위 카테고리 리스트
	@Override
	public List<KategorieVO> getTopKategoryList() {
		return adminDAO.getTopKategoryList();

	}

	// 중, 하위
	@Override
	public List<KategorieVO> getKategoryList(int kate_idx) {
		return adminDAO.getKategoryList(kate_idx);
	}

	// 공급사 전체리스트
	@Override
	public List<CorporationVO> getCorpList() {
		return adminDAO.getCorpList();
	}

	// 배송사 전체리스트
	@Override
	public List<ParcelVO> getPclList() {
		return adminDAO.getPclList();
	}

	// 관리자 - 상품관리 > productInfo
	@Override
	public ProductVO getProductInfo(String pdt_idx) {
		return adminDAO.getProductInfo(pdt_idx);
	}

	// 관리자 - 상품관리 > Product insert
	@Override
	public int ProductInsert(ProductVO pdtvo) {
		return adminDAO.ProductInsert(pdtvo);
	}

	// 관리자 - 상품수정 > 카테고리정보
	@Override
	public KategorieVO getKateInfo(String kate_idx) {
		return adminDAO.getKateInfo(kate_idx);
	}

	// 해당 배너 삭제
	@Override
	public int bannerDelete(int bnr_idx) {
		return adminDAO.bannerDelete(bnr_idx);
	}

	// 배너 등록
	@Override
	public int bannerInsert(BannerVO bvo) {
		return adminDAO.bannerInsert(bvo);
	}

	// 해당 배너 상세보기(수정용)
	@Override
	public BannerVO bannerOneList(int bnr_idx) {
		return adminDAO.bannerOneList(bnr_idx);
	}

	// 해당 배너 수정
	@Override
	public int bannerUpdate(BannerVO bvo) {
		return adminDAO.bannerUpdate(bvo);
	}

	// 등록된 배너 개수
	@Override
	public int getBannerCount() {
		return adminDAO.getbannerCount();
	}

	// 배너 리스트
	@Override
	public List<BannerVO> BannerList(int begin, int end) {
		return adminDAO.bannerList(begin, end);
	}

	// 알림게시글 개수
	@Override
	public int getNoticeCount() {
		return adminDAO.getNoticeCount();
	}

	// 알림 게시글 리스트
	@Override
	public List<NotificationVO> noticeList(int begin, int end) {
		return adminDAO.noticeList(begin, end);
	}

	// 알림 게시글 등록
	@Override
	public int noticeInsert(NotificationVO nvo) {
		return adminDAO.noticeInsert(nvo);
	}

	// 해당 알림 게시글 삭제
	@Override
	public int noticeDelete(int notice_idx) {
		return adminDAO.noticeDelete(notice_idx);
	}

	// 알림 게시글 수정
	@Override
	public int noticeUpdate(NotificationVO nvo) {
		return adminDAO.noticeUpdate(nvo);
	}

	// 해당 알림 게시글 상세정보
	@Override
	public NotificationVO noticeOneList(int notice_idx) {
		return adminDAO.noticeOneList(notice_idx);
	}

	// 전체 회원 수
	@Override
	public int getMbrCount() {
		return adminDAO.getMbrCount();
	}

	// 회원 아이디로 검색
	@Override
	public List<MemberVO> getMbrById(String txt, int begin, int end) {
		return adminDAO.getMbrById(txt, begin, end);
	}

	// 회원 이름으로 검색
	@Override
	public List<MemberVO> getMbrByName(String txt, int begin, int end) {
		return adminDAO.getMbrByName(txt, begin, end);
	}

	// 탈퇴회원 이름, 아이디로 검색
	@Override
	public List<MemberVO> getMbrByWithdraw(String txt, int begin, int end) {
		return adminDAO.getMbrByWithdraw(txt, begin, end);
	}

	// 회원 상세 정보(수정용)
	@Override
	public MemberVO memberOneList(String nickname) {
		return adminDAO.memberOneList(nickname);
	}

	// 회원 정보 수정
	@Override
	public int memberUpdate(MemberVO mvo) {
		return adminDAO.memberUpdate(mvo);
	}

	// 관리자 번호로 검색
	@Override
	public List<AdminVO> getAdmByIdx(String txt, int begin, int end) {
		return adminDAO.getAdmByIdx(txt, begin, end);
	}

	// 관리자 이름으로 검색
	@Override
	public List<AdminVO> getAdmByName(String txt, int begin, int end) {
		return adminDAO.getAdmByName(txt, begin, end);
	}

	// 관리자 아이디로 검색
	@Override
	public List<AdminVO> getAdmById(String txt, int begin, int end) {
		return adminDAO.getAdmById(txt, begin, end);
	}

	// 관리자 상세 정보
	@Override
	public AdminVO adminOneList(String idx) {
		return adminDAO.adminOneList(idx);
	}

	// 관리자 계정 생성 시 아이디 중복검사
	@Override
	public int getIdDupCheck(String adm_id) {
		return adminDAO.getIdDupCheck(adm_id);
	}

	// 관리자 계정 생성
	@Override
	public int adminInsert(AdminVO avo) {
		return adminDAO.admInsert(avo);
	}

	// 포인트 리스트 갯수
	@Override
	public int getPointCount() {
		return adminDAO.getPointCount();
	}

	// 회원 아이디로 포인트 리스트 검색
	@Override
	public List<MemberVO> getPointById(String txt, int begin, int end) {
		return adminDAO.getPointById(txt, begin, end);
	}

	// 회원 명으로 포인트 리스트 검색
	@Override
	public List<MemberVO> getPointByName(String txt, int begin, int end) {
		return adminDAO.getPointByName(txt, begin, end);
	}

	// 포인트 수정
	@Override
	public int pointUpdate(PointVO pvo) {
		return adminDAO.pointUpdate(pvo);
	}

	// 포인트 내역 리스트 개수
	@Override
	public int getPointDetailList() {
		return adminDAO.getPointDetailList();
	}

	// 포인트 내역 리스트
	@Override
	public List<PointVO> pointDetail(String mbr_nickname, String bott, String s_date, String e_date, int begin,
			int end) {
		return adminDAO.pointDetail(mbr_nickname, bott, s_date, e_date, begin, end);
	}
	
	// 충전 신청 개수
	@Override
	public int getRpntCount() {
		return adminDAO.getRpntCount();
	}

	// 충전 신청 리스트
	@Override
	public List<RequestPointVO> rpntList(int begin, int end) {
		return adminDAO.rpntList(begin, end);
	}
	
	// 충전 신청 테이블 처리상태 변경
	@Override
	public int updateRequestTable(String rpnt_idx) {
		return adminDAO.updateRequestTable(rpnt_idx);
	}
}
