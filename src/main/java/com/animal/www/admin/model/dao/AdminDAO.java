package com.animal.www.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sqlSessionTemplate = sessionTemplate;
	}

	public List<TermsVO> termsList() {
		return sqlSessionTemplate.selectList("admin.termslist");
	}

	public int termsDelete(String termsName) {
		return sqlSessionTemplate.delete("admin.termsDelete", termsName);
	}

	public int termsUpdate(String termsName, String termsInfo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("terms_name", termsName);
		map.put("terms_info", termsInfo);
		return sqlSessionTemplate.delete("admin.termsUpdate", map);
	}

	public int termsInsert(String termsName, String termsInfo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("terms_name", termsName);
		map.put("terms_info", termsInfo);
		return sqlSessionTemplate.insert("admin.termsInsert", map);
	}
	
	public List<ProductVO> getProductSearchList(String kate_idx, String search_type, String keyword, String pdt_inven, String pdt_state) {
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("kate_idx", kate_idx);
		searchMap.put("search_type", search_type);
		searchMap.put("keyword", keyword);
		searchMap.put("pdt_inven", pdt_inven);
		searchMap.put("pdt_state", pdt_state);
		
		return sqlSessionTemplate.selectList("admin.select_pdt_searchlist", searchMap);
	}
	
	// 상품등록 셀렉트박스 최상위 카테고리
	public List<KategorieVO> getTopKategoryList() {
		return sqlSessionTemplate.selectList("admin.topkategorylist");
	}
	
	// 상품등록 셀렉트 박스 중, 하위
	public List<KategorieVO> getKategoryList(int kate_idx) {
		return sqlSessionTemplate.selectList("admin.kategorylist", kate_idx);
	}
	
	// 관리자 - 상품등록- 공급사리스트
	public List<CorporationVO> getCorpList() {
		return sqlSessionTemplate.selectList("admin.corplist");
	}
	// 관리자 - 상품등록 - 택배사리스트
	public List<ParcelVO> getPclList() {
		return sqlSessionTemplate.selectList("admin.pcllist");
	}
	// 관리자 상품등록
	public int ProductInsert(ProductVO pdtvo) {
		return sqlSessionTemplate.insert("admin.pdtinsert", pdtvo);
	}
	
	// 카테고리정보 
	public KategorieVO getKateInfo(String kate_idx) {
		return sqlSessionTemplate.selectOne("admin.kateinfo", kate_idx);
	}
	
	// 상품상세정보
	public ProductVO getProductInfo(String pdt_idx) {
		return sqlSessionTemplate.selectOne("admin.productInfo", pdt_idx);
	}

	public int bannerInsert(BannerVO bvo) {
		System.out.println(bvo.getBnr_div());
		System.out.println(bvo.getBnr_state());
		System.out.println(bvo.getBnr_img());
		System.out.println(bvo.getBnr_order());
		try {
			return sqlSessionTemplate.insert("admin.bannerInsert", bvo);

		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

}
