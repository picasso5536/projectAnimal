package com.animal.www.market.model.service;

import java.util.List;

import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.market.model.vo.ProductVO;

public interface MarketService {
	List<KategorieVO> getTopKategoryList();
	List<KategorieVO> getKategoryList(String kate_idx);
	// 카테고리정보 idx 검색
	KategorieVO getKateInfo(String kate_idx);
	// 최하위 카테고리 selectall
	List<KategorieVO> getbottKategoryList();
	// 마켓메인 추천상품 목록 top 5 
	List<ProductVO> getBestPdtList();
	
	
}
