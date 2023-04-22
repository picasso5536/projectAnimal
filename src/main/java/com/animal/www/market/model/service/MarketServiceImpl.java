package com.animal.www.market.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.commons.vo.CorporationVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.market.model.dao.MarketDAO;
import com.animal.www.market.model.vo.ProductVO;

@Service
public class MarketServiceImpl implements MarketService {
	@Autowired
	private MarketDAO marketDAO;

	public void setMarketDAO(MarketDAO marketDAO) {
		this.marketDAO = marketDAO;
	}
	
	// �긽�쐞 移댄뀒怨좊━ 由ъ뒪�듃留�
	@Override
	public List<KategorieVO> getTopKategoryList() {
		return marketDAO.getTopKategoryList();
	}
	
	// 留덉폆硫붿씤 異붿쿇�긽�뭹 top5
	@Override
	public List<ProductVO> getBestPdtList() {
		return marketDAO.getBestPdtList();
	}
	
	//�긽�뭹�긽�꽭�젙蹂� select
	@Override
	public ProductVO getProductOneInfo(String pdt_idx) {
		return marketDAO.getProductOneInfo(pdt_idx);
	}
	// �냼遺꾨쪟 移댄뀒怨좊━idx瑜� �씠�슜�빐 以묐텇瑜�, ��遺꾨쪟�쓽 �젙蹂� select
	@Override
	public List<KategorieVO> getKategories(String kate_idx) {
		return marketDAO.getKategories(kate_idx);
	}
	// �쉶�궗�젙蹂� idx濡� select
	@Override
	public CorporationVO getCorpVO(String corp_idx) {
		return marketDAO.getCorpVO(corp_idx);
	}
	
	// 以�,�븯�쐞 移댄뀒怨좊━ 由ъ뒪�듃 idx濡� 寃��깋
	@Override
	public List<KategorieVO> getKategoryList(String kate_idx) {
		return marketDAO.getKategoryList(kate_idx);
	}
	
	
	// 移댄뀒怨좊━ idx寃��깋
	@Override
	public KategorieVO getKateInfo(String kate_idx) {
		return marketDAO.getKateInfo(kate_idx);
	}
	// 理쒗븯�쐞 移댄뀒怨좊━ selectAll
	@Override
	public List<KategorieVO> getbottKategoryList() {
		return marketDAO.getbottKategoryList();
	}
	
}
