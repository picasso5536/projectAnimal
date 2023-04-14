package com.animal.www.market.model.service;

import java.util.List;

import com.animal.www.commons.vo.CorporationVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.market.model.vo.ProductVO;

public interface MarketService {
	List<KategorieVO> getTopKategoryList();
	// 소분류 idx로 소, 중, 대분류 카테고리 정보 함께 select
	List<KategorieVO> getKategoryList(String kate_idx);
	// 회사정보 idx검색
	CorporationVO getCorpVO(String corp_idx);
	// 카테고리정보 idx 검색
	KategorieVO getKateInfo(String kate_idx);
	// 소분류 카테고리idx를 이용해 중분류, 대분류의 정보 select
	List<KategorieVO> getKategories(String kate_idx);
	// 최하위 카테고리 selectall
	List<KategorieVO> getbottKategoryList();
	// 마켓메인 추천상품 목록 top 5 
	List<ProductVO> getBestPdtList();
	// 상품 하나 상세정보 select 
	ProductVO getProductOneInfo(String pdt_idx);
	
}
