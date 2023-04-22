package com.animal.www.community.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.community.model.dao.CommunityDAO;

@Service
public class CommunityServiceImpl implements CommunityService{
	@Autowired
	private CommunityDAO communityDAO;

	public void setCommunityDAO(CommunityDAO communityDAO) {
		this.communityDAO = communityDAO;
	}
	
	
}
