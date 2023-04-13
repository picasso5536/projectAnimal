package com.animal.www.admin.model.service;

import java.util.List;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;

public interface AdminService {
	List<TermsVO> termsList();
	int termsDelete(String termsName);
	int termsUpdate(String termsName, String termsInfo);
	int termsInsert(String termsName, String termsInfo);
	// 관리자>상품관리>검색
	List<ProductVO> getProductSearchList(String kate_idx, String search_type, String keyword, String pdt_inven, String pdt_state);
	List<KategorieVO> getTopKategoryList();
	List<KategorieVO> getKategoryList(int kate_idx);
	List<CorporationVO> getCorpList();
	List<ParcelVO> getPclList();
	KategorieVO getKateInfo(String kate_idx);
	ProductVO getProductInfo(String pdt_idx);
	int ProductInsert(ProductVO pdtvo);
	int bannerDelete();
	int bannerUpdate();
	int bannerInsert(BannerVO bvo);
}
