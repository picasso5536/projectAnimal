package com.animal.www.market.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.commons.service.AllService;
import com.animal.www.commons.vo.CorporationVO;
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
	
	//상품상세정보 select
	@Override
	public ProductVO getProductOneInfo(String pdt_idx) {
		return marketDAO.getProductOneInfo(pdt_idx);
	}
	// 소분류 카테고리idx를 이용해 중분류, 대분류의 정보 select
	@Override
	public List<KategorieVO> getKategories(String kate_idx) {
		return marketDAO.getKategories(kate_idx);
	}
	// 회사정보 idx로 select
	@Override
	public CorporationVO getCorpVO(String corp_idx) {
		return marketDAO.getCorpVO(corp_idx);
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
