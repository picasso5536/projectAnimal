package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 배너 VO
public class BannerVO {
	private String bnr_idx, bnr_img, bnr_div, bnr_order, bnr_visible, bnr_date, bnr_update, bnr_state, adm_idx;
	private MultipartFile bnr_param; // 배너 이미지 등록(스트림용)
	
	public String getBnr_idx() {
		return bnr_idx;
	}
	public void setBnr_idx(String bnr_idx) {
		this.bnr_idx = bnr_idx;
	}
	public String getBnr_img() {
		return bnr_img;
	}
	public void setBnr_img(String bnr_img) {
		this.bnr_img = bnr_img;
	}
	public String getBnr_div() {
		return bnr_div;
	}
	public void setBnr_div(String bnr_div) {
		this.bnr_div = bnr_div;
	}
	public String getBnr_order() {
		return bnr_order;
	}
	public void setBnr_order(String bnr_order) {
		this.bnr_order = bnr_order;
	}
	public String getBnr_visible() {
		return bnr_visible;
	}
	public void setBnr_visible(String bnr_visible) {
		this.bnr_visible = bnr_visible;
	}
	public String getBnr_date() {
		return bnr_date;
	}
	public void setBnr_date(String bnr_date) {
		this.bnr_date = bnr_date;
	}
	public String getBnr_update() {
		return bnr_update;
	}
	public void setBnr_update(String bnr_update) {
		this.bnr_update = bnr_update;
	}
	public String getBnr_state() {
		return bnr_state;
	}
	public void setBnr_state(String bnr_state) {
		this.bnr_state = bnr_state;
	}
	public String getAdm_idx() {
		return adm_idx;
	}
	public void setAdm_idx(String adm_idx) {
		this.adm_idx = adm_idx;
	}
	public MultipartFile getBnr_param() {
		return bnr_param;
	}
	public void setBnr_param(MultipartFile bnr_param) {
		this.bnr_param = bnr_param;
	}
}
