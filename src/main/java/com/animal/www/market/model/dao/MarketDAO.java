package com.animal.www.market.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.market.model.vo.ProductVO;

@Repository
public class MarketDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<KategorieVO> getTopKategoryList() {
		return sqlSessionTemplate.selectList("market.topkatelist");
	}
	// 추천상품top5
	public List<ProductVO> getBestPdtList() {
		return sqlSessionTemplate.selectList("market.bestpdtlist");
	}
	
	// 카테고리 리스트 상위 idx로 검색
	public List<KategorieVO> getKategoryList(String kate_idx) {
		return sqlSessionTemplate.selectList("market.getkatelist", kate_idx);
	}
	
	// 카테고리 최 하위 리스트 전부가져오기(home에 미리 세팅)
	public List<KategorieVO> getbottKategoryList() {
		return sqlSessionTemplate.selectList("market.getbottkatelistall");
	}
	
	// 카테고리 하나정보 idx검색
	public KategorieVO getKateInfo(String kate_idx) {
		return sqlSessionTemplate.selectOne("market.kateinfo", kate_idx);
	}
}
