package com.animal.www.market.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.commons.service.AllService;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.market.model.dao.MarketDAO;
import com.animal.www.market.model.vo.ProductVO;

@Service
public class MarketServiceImpl implements MarketService, AllService {
	@Autowired
	private MarketDAO marketDAO;

	public void setMarketDAO(MarketDAO marketDAO) {
		this.marketDAO = marketDAO;
	}
	
	// 상위 카테고리 리스트만
	@Override
	public List<KategorieVO> getTopKategoryList() {
		return marketDAO.getTopKategoryList();
	}
	
	// 마켓메인 추천상품 top5
	@Override
	public List<ProductVO> getBestPdtList() {
		return marketDAO.getBestPdtList();
	}
	
	// 중,하위 카테고리 리스트 idx로 검색
	@Override
	public List<KategorieVO> getKategoryList(String kate_idx) {
		return marketDAO.getKategoryList(kate_idx);
	}
	
	
	// 카테고리 idx검색
	@Override
	public KategorieVO getKateInfo(String kate_idx) {
		return marketDAO.getKateInfo(kate_idx);
	}
	// 최하위 카테고리 selectAll
	@Override
	public List<KategorieVO> getbottKategoryList() {
		return marketDAO.getbottKategoryList();
	}
	
}
