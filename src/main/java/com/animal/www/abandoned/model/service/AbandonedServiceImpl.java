package com.animal.www.abandoned.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.abandoned.model.dao.AbandonedDAO;

@Service
public class AbandonedServiceImpl implements AbandonedService {
	@Autowired
	private AbandonedDAO abandonedDAO;

	public void setAbandonedDAO(AbandonedDAO abandonedDAO) {
		this.abandonedDAO = abandonedDAO;
	}
	
}
