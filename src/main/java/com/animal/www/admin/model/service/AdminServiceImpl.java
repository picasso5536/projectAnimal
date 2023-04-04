package com.animal.www.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.admin.model.dao.AdminDAO;
import com.animal.www.admin.model.vo.TermsVO;
import com.animal.www.commons.vo.BannerVO;

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
	
	@Override
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
