package com.animal.www.admin.model.service;

import java.util.List;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.NotificationVO;

public interface AdminService {
	List<TermsVO> termsList();
	int termsInsert(String termsName, String termsInfo);
	int termsDelete(String termsName);
	int termsUpdate(String termsName, String termsInfo);
	
	int getBannerCount();
	List<BannerVO> BannerList(int begin, int end);
	BannerVO BannerOneList(int bnr_idx);
	int bannerInsert(BannerVO bvo);
	int bannerDelete(int bnr_idx);
	int bannerUpdate(BannerVO bvo);
	
	int getNoticeCount();
//	List<NotificationVO> noticeList(int begin, int end);
	int noticeInsert(NotificationVO nvo);
	
}
