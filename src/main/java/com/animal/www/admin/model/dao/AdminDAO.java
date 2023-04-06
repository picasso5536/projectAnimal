package com.animal.www.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.NotificationVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sqlSessionTemplate = sessionTemplate;
	}

	// �빟愿� 由ъ뒪�듃
	public List<TermsVO> termsList() {
		return sqlSessionTemplate.selectList("admin.termsList");
	}

	// �꽑�깮 �빟愿� �궘�젣
	public int termsDelete(String termsName) {
		return sqlSessionTemplate.delete("admin.termsDelete", termsName);
	}

	// �꽑�깮 �빟愿� �닔�젙
	public int termsUpdate(String termsName, String termsInfo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("terms_name", termsName);
		map.put("terms_info", termsInfo);
		return sqlSessionTemplate.delete("admin.termsUpdate", map);
	}

	// �빟愿� �벑濡�
	public int termsInsert(String termsName, String termsInfo) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("terms_name", termsName);
		map.put("terms_info", termsInfo);
		return sqlSessionTemplate.insert("admin.termsInsert", map);
	}

	// 諛곕꼫 由ъ뒪�듃 媛쒖닔
	public int getbannerCount() {
		return sqlSessionTemplate.selectOne("admin.bannerCount");
	}

	// 諛곕꼫 由ъ뒪�듃
	public List<BannerVO> bannerList(int begin, int end) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("admin.bannerList", map);
	}

	// 諛곕꼫 �벑濡�
	public int bannerInsert(BannerVO bvo) {
		return sqlSessionTemplate.insert("admin.bannerInsert", bvo);
	}

	// �꽑�깮 諛곕꼫 �궘�젣
	public int bannerDelete(int bnr_idx) {
		return sqlSessionTemplate.delete("admin.bannerDelete", bnr_idx);
	}

	// �빐�떦 諛곕꼫 �긽�꽭�젙蹂�
	public BannerVO bannerOneList(int bnr_idx) {
		return sqlSessionTemplate.selectOne("admin.bannerOneList", bnr_idx);
	}

	// �빐�떦 諛곕꼫 �닔�젙
	public int bannerUpdate(BannerVO bvo) {
		try {
			return sqlSessionTemplate.update("admin.bannerUpdate", bvo);

		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public int getNoticeCount() {
		return sqlSessionTemplate.selectOne("admin.noticeCount");
	}

	public List<NotificationVO> noticeList(int begin, int end) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("admin.noticeList", map);
	}

	public int noticeInsert(NotificationVO nvo) {
		return sqlSessionTemplate.insert("admin.noticeInsert", nvo);
	}
}
