package com.animal.www.home.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.commons.service.AllService;
import com.animal.www.commons.vo.MemberVO;
import com.animal.www.home.model.dao.HomeDAO;

@Service
public class HomeServiceImpl implements HomeService, AllService{
	
	@Autowired
	private HomeDAO homeDAO;

	public void setHomeDAO(HomeDAO homeDAO) {
		this.homeDAO = homeDAO;
	}
	
	@Override
	public int getId(MemberVO vo) {
		return homeDAO.getId(vo);
	}

	@Override
	public int getnickname(MemberVO vo) {
		return homeDAO.getnickname(vo);
	}
	
	/*
	 * @Override public int getLogin(MemberVO vo) { return homeDAO.getLogin(vo); }
	 */
}