package com.animal.www.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.animal.www.admin.model.vo.AdminVO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.MemberVO;
import com.animal.www.commons.vo.NotificationVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.commons.vo.PointVO;
import com.animal.www.commons.vo.RequestPointVO;
import com.animal.www.market.model.vo.ProductVO;

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

	// 諛곕꼫 由ъ뒪�듃 媛쒖닔
	public int getbannerCount() {
		return sqlSessionTemplate.selectOne("admin.bannerCount");
	}

	// 諛곕꼫 由ъ뒪�듃
	public List<BannerVO> bannerList(int begin, int end) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		try {
			return sqlSessionTemplate.selectList("admin.bannerList", map);

		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
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
		try {
			return sqlSessionTemplate.insert("admin.noticeInsert", nvo);

		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public int noticeUpdate(NotificationVO nvo) {
		try {
			return sqlSessionTemplate.update("admin.noticeUpdate", nvo);
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public int noticeDelete(int notice_idx) {
		return sqlSessionTemplate.delete("admin.noticeDelete", notice_idx);
	}

	public NotificationVO noticeOneList(int notice_idx) {
		return sqlSessionTemplate.selectOne("admin.noticeOneList", notice_idx);
	}

	public int getMbrCount() {
		return sqlSessionTemplate.selectOne("admin.mbrCount");
	}

	public List<MemberVO> getMbrByIdx(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		System.out.println(txt);
		return sqlSessionTemplate.selectOne("admin.getMbrByIdx", map);
	}

	public List<MemberVO> getMbrByName(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getMbrByName", map);
	}

	public List<MemberVO> getMbrById(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getMbrById", map);
	}

	public List<MemberVO> getMbrByWithdraw(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getMbrByWithdraw", map);
	}

	public MemberVO memberOneList(String mbr_nickname) {
		return sqlSessionTemplate.selectOne("admin.memberOneList", mbr_nickname);
	}

	public int memberUpdate(MemberVO mvo) {
		return sqlSessionTemplate.update("admin.memberUpdate", mvo);
	}

	public List<AdminVO> getAdmById(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getAdmById", map);
	}
	
	public List<AdminVO> getAdmByName(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getAdmByName", map);
	}
	
	public List<AdminVO> getAdmByIdx(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getAdmByIdx", map);
	}
	
	public AdminVO adminOneList(String adm_idx) {
		return sqlSessionTemplate.selectOne("admin.adminOneList", adm_idx);
	}
	
	public int getIdDupCheck(String adm_id) {
		return sqlSessionTemplate.selectOne("admin.getIdDupCheck", adm_id);
	}

	public int admInsert(AdminVO avo) {
		return sqlSessionTemplate.insert("admin.admInsert", avo);
	}
	
	public int getPointCount() {
		return sqlSessionTemplate.selectOne("admin.pointCount");
	}
	
	public List<MemberVO> getPointById(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getPointById", map);
	}
	
	public List<MemberVO> getPointByName(String txt, int begin, int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("txt", txt);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		return sqlSessionTemplate.selectList("admin.getPointByName", map);
	}
	
	public int pointUpdate(PointVO pvo) {
		try {
			int nowP = sqlSessionTemplate.selectOne("admin.getCurrentPoint", pvo.getMbr_nickname());
			
			int pnt_now = 0;
			if(pvo.getPnt_in()!=null){
				pnt_now = nowP + Integer.parseInt(pvo.getPnt_in());
			} else {
				pnt_now = nowP - Integer.parseInt(pvo.getPnt_out());
			}
			
			pvo.setPnt_now(String.valueOf(pnt_now));
			pvo.setPnt_total(pvo.getPnt_now());
			
			return sqlSessionTemplate.insert("admin.pointUpdate", pvo);
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
		
	}
	
	public List<PointVO> pointDetail(String mbr_nickname) {
		return sqlSessionTemplate.selectList("admin.pointUpdate", mbr_nickname);
	}

	public int getPointDetailList() {
		return sqlSessionTemplate.selectOne("admin.getPointDetailList");
	}
	
	public List<PointVO> pointDetail(String mbr_nickname, String bott, String s_date, String e_date, int begin,
			int end) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("mbr_nickname", mbr_nickname);
		map.put("bott", bott);
		map.put("s_date", s_date);
		map.put("e_date", e_date);
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		
		return sqlSessionTemplate.selectList("admin.pointDetail", map);
	}
	
	public int getRpntCount() {
		return sqlSessionTemplate.selectOne("admin.getRpntCount");
	}
	
	public List<RequestPointVO> rpntList(int begin, int end) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		return sqlSessionTemplate.selectList("admin.rpntList", map);
	}

	public int updateRequestTable(String rpnt_idx) {
		return sqlSessionTemplate.update("admin.updateReqTable", rpnt_idx);
	}
}
