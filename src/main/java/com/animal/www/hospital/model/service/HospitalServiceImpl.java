package com.animal.www.hospital.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animal.www.hospital.model.dao.HospitalDAO;

@Service
public class HospitalServiceImpl implements HospitalService {
	@Autowired
	private HospitalDAO hospitalDAO;

	public void setHospitalDAO(HospitalDAO hospitalDAO) {
		this.hospitalDAO = hospitalDAO;
	}
	
}
