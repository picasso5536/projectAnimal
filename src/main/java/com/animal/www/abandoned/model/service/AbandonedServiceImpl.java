package com.animal.www.abandoned.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.abandoned.model.dao.AbandonedDAO;
import com.animal.www.commons.service.AllService;

@Service
public class AbandonedServiceImpl implements AbandonedService, AllService {
	@Autowired
	private AbandonedDAO abandonedDAO;

	public void setAbandonedDAO(AbandonedDAO abandonedDAO) {
		this.abandonedDAO = abandonedDAO;
	}
	
}
