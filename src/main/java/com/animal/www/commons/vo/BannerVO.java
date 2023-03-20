package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 배너 VO
public class BannerVO {
	private String bnr_idx, bnr_start, bnr_end, bng_idx, bng_name, bnr_title, bnr_url, bnr_width, bnr_height, bnr_hit, bnr_order, bnr_img, bnr_visible, bnr_date, bnr_ip, amd_idx;
	private MultipartFile bnr_param; // 배너 이미지 등록(스트림용)
	
	public String getBnr_idx() {
		return bnr_idx;
	}
	public void setBnr_idx(String bnr_idx) {
		this.bnr_idx = bnr_idx;
	}
	public String getBnr_start() {
		return bnr_start;
	}
	public void setBnr_start(String bnr_start) {
		this.bnr_start = bnr_start;
	}
	public String getBnr_end() {
		return bnr_end;
	}
	public void setBnr_end(String bnr_end) {
		this.bnr_end = bnr_end;
	}
	public String getBng_idx() {
		return bng_idx;
	}
	public void setBng_idx(String bng_idx) {
		this.bng_idx = bng_idx;
	}
	public String getBng_name() {
		return bng_name;
	}
	public void setBng_name(String bng_name) {
		this.bng_name = bng_name;
	}
	public String getBnr_title() {
		return bnr_title;
	}
	public void setBnr_title(String bnr_title) {
		this.bnr_title = bnr_title;
	}
	public String getBnr_url() {
		return bnr_url;
	}
	public void setBnr_url(String bnr_url) {
		this.bnr_url = bnr_url;
	}
	public String getBnr_width() {
		return bnr_width;
	}
	public void setBnr_width(String bnr_width) {
		this.bnr_width = bnr_width;
	}
	public String getBnr_height() {
		return bnr_height;
	}
	public void setBnr_height(String bnr_height) {
		this.bnr_height = bnr_height;
	}
	public String getBnr_hit() {
		return bnr_hit;
	}
	public void setBnr_hit(String bnr_hit) {
		this.bnr_hit = bnr_hit;
	}
	public String getBnr_order() {
		return bnr_order;
	}
	public void setBnr_order(String bnr_order) {
		this.bnr_order = bnr_order;
	}
	public String getBnr_img() {
		return bnr_img;
	}
	public void setBnr_img(String bnr_img) {
		this.bnr_img = bnr_img;
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
	public String getBnr_ip() {
		return bnr_ip;
	}
	public void setBnr_ip(String bnr_ip) {
		this.bnr_ip = bnr_ip;
	}
	public String getAmd_idx() {
		return amd_idx;
	}
	public void setAmd_idx(String amd_idx) {
		this.amd_idx = amd_idx;
	}
	public MultipartFile getBnr_param() {
		return bnr_param;
	}
	public void setBnr_param(MultipartFile bnr_param) {
		this.bnr_param = bnr_param;
	}
}
