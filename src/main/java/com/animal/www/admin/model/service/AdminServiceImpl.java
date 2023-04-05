package com.animal.www.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.admin.model.dao.AdminDAO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;

@Service
public class AdminServiceImpl implements AdminService {
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

	@Override
	public int bannerDelete(int bnr_idx) {
		return adminDAO.bannerDelete(bnr_idx);
	}

	@Override
	public int bannerInsert(BannerVO bvo) {
		return adminDAO.bannerInsert(bvo);
	}

	// 해당 배너 상세정보
	@Override
	public BannerVO BannerOneList(int bnr_idx) {
		return adminDAO.bannerOneList(bnr_idx);
	}
	
	// 배너 수정
	@Override
	public int bannerUpdate(BannerVO bvo) {
		return adminDAO.bannerUpdate(bvo);
	}

	// 배너 리스트 개수
	@Override
	public int getBannerCount() {
		return adminDAO.getbannerCount();
	}

	// 배너 전체 리스트
	@Override
	public List<BannerVO> BannerList(int begin, int end) {
		return adminDAO.bannerList(begin, end);
	}
}
