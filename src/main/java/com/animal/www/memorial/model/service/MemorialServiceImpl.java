package com.animal.www.memorial.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.memorial.model.dao.MemorialDAO;

@Service
public class MemorialServiceImpl implements MemorialService{
	@Autowired
	private MemorialDAO memorialDAO;

	public void setMemorialDAO(MemorialDAO memorialDAO) {
		this.memorialDAO = memorialDAO;
	}
	
}
