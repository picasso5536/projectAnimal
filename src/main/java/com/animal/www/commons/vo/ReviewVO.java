package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// ¸®ºä VO
public class ReviewVO {
	private String rvw_idx, mbr_nickname, rvw_info, rvw_star, rvw_fk, rvw_ref, rvw_img, rvw_date, rvw_update;
	private MultipartFile[] rvw_info_param;
	
	public String getRvw_idx() {
		return rvw_idx;
	}
	public void setRvw_idx(String rvw_idx) {
		this.rvw_idx = rvw_idx;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getRvw_info() {
		return rvw_info;
	}
	public void setRvw_info(String rvw_info) {
		this.rvw_info = rvw_info;
	}
	public String getRvw_star() {
		return rvw_star;
	}
	public void setRvw_star(String rvw_star) {
		this.rvw_star = rvw_star;
	}
	public String getRvw_fk() {
		return rvw_fk;
	}
	public void setRvw_fk(String rvw_fk) {
		this.rvw_fk = rvw_fk;
	}
	public String getRvw_ref() {
		return rvw_ref;
	}
	public void setRvw_ref(String rvw_ref) {
		this.rvw_ref = rvw_ref;
	}
	public String getRvw_img() {
		return rvw_img;
	}
	public void setRvw_img(String rvw_img) {
		this.rvw_img = rvw_img;
	}
	public String getRvw_date() {
		return rvw_date;
	}
	public void setRvw_date(String rvw_date) {
		this.rvw_date = rvw_date;
	}
	public String getRvw_update() {
		return rvw_update;
	}
	public void setRvw_update(String rvw_update) {
		this.rvw_update = rvw_update;
	}
	public MultipartFile[] getRvw_info_param() {
		return rvw_info_param;
	}
	public void setRvw_info_param(MultipartFile[] rvw_info_param) {
		this.rvw_info_param = rvw_info_param;
	}
}
