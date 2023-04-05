package com.animal.www.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.BannerVO;

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
	
	// 상품등록 셀렉트박스 최상위 카테고리
	public List<KategorieVO> getKategoryList() {
		return sqlSessionTemplate.selectList("admin.kategorylist");
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
