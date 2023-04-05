package com.animal.www.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sqlSessionTemplate = sessionTemplate;
	}

	// 약관 리스트
	public List<TermsVO> termsList() {
		return sqlSessionTemplate.selectList("admin.termsList");
	}

	// 선택 약관 삭제
	public int termsDelete(String termsName) {
		return sqlSessionTemplate.delete("admin.termsDelete", termsName);
	}

	// 선택 약관 수정
	public int termsUpdate(String termsName, String termsInfo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("terms_name", termsName);
		map.put("terms_info", termsInfo);
		return sqlSessionTemplate.delete("admin.termsUpdate", map);
	}

	// 약관 등록
	public int termsInsert(String termsName, String termsInfo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("terms_name", termsName);
		map.put("terms_info", termsInfo);
		return sqlSessionTemplate.insert("admin.termsInsert", map);
	}

	// 배너 리스트 개수
	public int getbannerCount() {
		return sqlSessionTemplate.selectOne("admin.bannerCount");
	}
	
	// 배너 리스트
	public List<BannerVO> bannerList(int begin, int end){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("admin.bannerList", map);
	}

	// 배너 등록
	public int bannerInsert(BannerVO bvo) {
		return sqlSessionTemplate.insert("admin.bannerInsert", bvo);
	}
	
	// 선택 배너 삭제
	public int bannerDelete(int bnr_idx) {
		return sqlSessionTemplate.delete("admin.bannerDelete", bnr_idx);
	}
	
	// 해당 배너 상세정보
	public BannerVO bannerOneList(int bnr_idx) {
		return sqlSessionTemplate.selectOne("admin.bannerOneList", bnr_idx);
	}

	// 해당 배너 수정
	public int bannerUpdate(BannerVO bvo) {
		try {
			return sqlSessionTemplate.update("admin.bannerUpdate", bvo);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
}
