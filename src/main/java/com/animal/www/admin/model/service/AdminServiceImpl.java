package com.animal.www.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.admin.model.dao.AdminDAO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;
import com.animal.www.commons.vo.NotificationVO;

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

	// �빐�떦 諛곕꼫 �긽�꽭�젙蹂�
	@Override
	public BannerVO BannerOneList(int bnr_idx) {
		return adminDAO.bannerOneList(bnr_idx);
	}

	// 諛곕꼫 �닔�젙
	@Override
	public int bannerUpdate(BannerVO bvo) {
		return adminDAO.bannerUpdate(bvo);
	}

	// 諛곕꼫 由ъ뒪�듃 媛쒖닔
	@Override
	public int getBannerCount() {
		return adminDAO.getbannerCount();
	}

	// 諛곕꼫 �쟾泥� 由ъ뒪�듃
	@Override
	public List<BannerVO> BannerList(int begin, int end) {
		return adminDAO.bannerList(begin, end);
	}

	@Override
	public int getNoticeCount() {
		return adminDAO.getNoticeCount();
	}

	@Override
	public List<NotificationVO> noticeList(int begin, int end) {
		return adminDAO.noticeList(begin, end);
	}

	@Override
	public int noticeInsert(NotificationVO nvo) {
		return adminDAO.noticeInsert(nvo);
	}
}
