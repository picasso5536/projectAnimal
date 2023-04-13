package com.animal.www.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.admin.model.dao.AdminDAO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.KategorieVO;
import com.animal.www.commons.vo.ParcelVO;
import com.animal.www.market.model.vo.ProductVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.CorporationVO;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDAO;

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	@Override
	public List<TermsVO> termsList() {
		return adminDAO.termsList();
	}
	
	@Override
	public int termsDelete(String termsName) {
		return adminDAO.termsDelete(termsName);
	}
	
	@Override
	public int termsUpdate(String termsName, String termsInfo) {
		return adminDAO.termsUpdate(termsName, termsInfo);
	}
	
	@Override
	public int termsInsert(String termsName, String termsInfo) {
		return adminDAO.termsInsert(termsName, termsInfo);
	}
	
	// 관리자 > 상품관리 > 상품검색
	@Override
	public List<ProductVO> getProductSearchList(String kate_idx, String search_type, String keyword, String pdt_inven,
			String pdt_state) {
		return adminDAO.getProductSearchList(kate_idx, search_type, keyword, pdt_inven, pdt_state);
	}
	// 상위 카테고리 리스트
	@Override
	public List<KategorieVO> getTopKategoryList() {
		return adminDAO.getTopKategoryList();
		
	}
	// 중, 하위
	@Override
	public List<KategorieVO> getKategoryList(int kate_idx) {
		return adminDAO.getKategoryList(kate_idx);
	}
	// 공급사 전체리스트
	@Override
	public List<CorporationVO> getCorpList() {
		return adminDAO.getCorpList();
	}
	// 배송사 전체리스트
	@Override
	public List<ParcelVO> getPclList() {
		return adminDAO.getPclList();
	}
	// 관리자 - 상품관리 > productInfo
	@Override
	public ProductVO getProductInfo(String pdt_idx) {
		return adminDAO.getProductInfo(pdt_idx);
	}
	
	//  관리자 - 상품관리 > Product insert
	@Override
	public int ProductInsert(ProductVO pdtvo) {
		return adminDAO.ProductInsert(pdtvo);
	}
	// 관리자 - 상품수정 > 카테고리정보
	@Override
	public KategorieVO getKateInfo(String kate_idx) {
		return adminDAO.getKateInfo(kate_idx);
	}
		
	public int bannerDelete() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int bannerInsert(BannerVO bvo) {
		return adminDAO.bannerInsert(bvo);
	}
	
	@Override
	public int bannerUpdate() {
		// TODO Auto-generated method stub
		return 0;
	}
}
