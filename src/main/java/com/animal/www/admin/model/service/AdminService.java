package com.animal.www.admin.model.service;

import java.util.List;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;

public interface AdminService {
	List<TermsVO> termsList();
	int termsDelete(String termsName);
	int termsUpdate(String termsName, String termsInfo);
	int termsInsert(String termsName, String termsInfo);
	
	int getBannerCount();
	BannerVO BannerOneList(int bnr_idx);
	List<BannerVO> BannerList(int begin, int end);
	int bannerDelete(int bnr_idx);
	int bannerUpdate(BannerVO bvo);
	int bannerInsert(BannerVO bvo);
}
