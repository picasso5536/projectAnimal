package com.animal.www.admin.model.service;

import java.util.List;

import com.animal.www.admin.model.vo.AdminVO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;
import com.animal.www.commons.vo.MemberVO;
import com.animal.www.commons.vo.NotificationVO;

public interface AdminService {
	List<TermsVO> termsList();
	int termsInsert(String termsName, String termsInfo);
	int termsDelete(String termsName);
	int termsUpdate(String termsName, String termsInfo);
	// 관리자>상품관리>검색
	List<ProductVO> getProductSearchList(String kate_idx, String search_type, String keyword, String pdt_inven, String pdt_state);
	List<KategorieVO> getTopKategoryList();
	List<KategorieVO> getKategoryList(int kate_idx);
	List<CorporationVO> getCorpList();
	List<ParcelVO> getPclList();
	KategorieVO getKateInfo(String kate_idx);
	ProductVO getProductInfo(String pdt_idx);
	int ProductInsert(ProductVO pdtvo);
	
	int getBannerCount();
	List<BannerVO> BannerList(int begin, int end);
	BannerVO bannerOneList(int bnr_idx);
	int bannerInsert(BannerVO bvo);
	int bannerDelete(int bnr_idx);
	int bannerUpdate(BannerVO bvo);
	
	int getNoticeCount();
	List<NotificationVO> noticeList(int begin, int end);
	int noticeInsert(NotificationVO nvo);
	int noticeDelete(int notice_idx);
	int noticeUpdate(NotificationVO nvo);
	NotificationVO noticeOneList(int notice_idx);
	
	int getMbrCount();
	List<MemberVO> getMbrByName(String txt, int begin, int end);
	List<MemberVO> getMbrById(String txt, int begin, int end);
	List<MemberVO> getMbrByWithdraw(String txt, int begin, int end);
	MemberVO memberOneList(String nickname);
	int memberUpdate(MemberVO mvo);
	
	List<AdminVO> getAdmByName(String txt, int begin, int end);
	List<AdminVO> getAdmById(String txt, int begin, int end);
	List<AdminVO> getAdmByIdx(String txt, int begin, int end);
	AdminVO adminOneList(String idx);
	int getIdDupCheck(String adm_id);
	int adminInsert(AdminVO avo);
}
