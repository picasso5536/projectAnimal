package com.animal.www.hospital.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 병원 정보 VO
public class HospitalVO {
	private String hpt_idx, hpt_name, kate_idx, hpt_addr, hpt_owner, hpt_park, 
	hpt_tell, hpt_type, hpt_img, hpt_sbj, hpt_lcnt, hpt_star;
	private MultipartFile hpt_profile_param;
	
	public String getHpt_idx() {
		return hpt_idx;
	}
	public void setHpt_idx(String hpt_idx) {
		this.hpt_idx = hpt_idx;
	}
	public String getHpt_name() {
		return hpt_name;
	}
	public void setHpt_name(String hpt_name) {
		this.hpt_name = hpt_name;
	}
	public String getKate_idx() {
		return kate_idx;
	}
	public void setKate_idx(String kate_idx) {
		this.kate_idx = kate_idx;
	}
	public String getHpt_addr() {
		return hpt_addr;
	}
	public void setHpt_addr(String hpt_addr) {
		this.hpt_addr = hpt_addr;
	}
	public String getHpt_owner() {
		return hpt_owner;
	}
	public void setHpt_owner(String hpt_owner) {
		this.hpt_owner = hpt_owner;
	}
	public String getHpt_park() {
		return hpt_park;
	}
	public void setHpt_park(String hpt_park) {
		this.hpt_park = hpt_park;
	}
	public String getHpt_tell() {
		return hpt_tell;
	}
	public void setHpt_tell(String hpt_tell) {
		this.hpt_tell = hpt_tell;
	}
	public String getHpt_type() {
		return hpt_type;
	}
	public void setHpt_type(String hpt_type) {
		this.hpt_type = hpt_type;
	}
	public String getHpt_img() {
		return hpt_img;
	}
	public void setHpt_img(String hpt_img) {
		this.hpt_img = hpt_img;
	}
	public String getHpt_sbj() {
		return hpt_sbj;
	}
	public void setHpt_sbj(String hpt_sbj) {
		this.hpt_sbj = hpt_sbj;
	}
	public String getHpt_lcnt() {
		return hpt_lcnt;
	}
	public void setHpt_lcnt(String hpt_lcnt) {
		this.hpt_lcnt = hpt_lcnt;
	}
	public String getHpt_star() {
		return hpt_star;
	}
	public void setHpt_star(String hpt_star) {
		this.hpt_star = hpt_star;
	}
	public MultipartFile getHpt_profile_param() {
		return hpt_profile_param;
	}
	public void setHpt_profile_param(MultipartFile hpt_profile_param) {
		this.hpt_profile_param = hpt_profile_param;
	}
}
