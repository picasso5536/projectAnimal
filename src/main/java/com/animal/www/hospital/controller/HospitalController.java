package com.animal.www.hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.hospital.model.service.HospitalService;

@Controller
public class HospitalController {
	@Autowired
	private HospitalService hospitalService;

	public void setHospitalService(HospitalService hospitalService) {
		this.hospitalService = hospitalService;
	}
	
	@RequestMapping("hospital.do")
	public ModelAndView home() {
		return new ModelAndView("hospital/h_home");
	}
}
