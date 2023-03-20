package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 업체정보 VO
public class CorporationVO {
	private String corp_idx, corp_name, corp_phone, corp_local, corp_addr, corp_info, corp_img;
	private MultipartFile[] corp_info_param;
	
	public String getCorp_idx() {
		return corp_idx;
	}
	public void setCorp_idx(String corp_idx) {
		this.corp_idx = corp_idx;
	}
	public String getCorp_name() {
		return corp_name;
	}
	public void setCorp_name(String corp_name) {
		this.corp_name = corp_name;
	}
	public String getCorp_phone() {
		return corp_phone;
	}
	public void setCorp_phone(String corp_phone) {
		this.corp_phone = corp_phone;
	}
	public String getCorp_local() {
		return corp_local;
	}
	public void setCorp_local(String corp_local) {
		this.corp_local = corp_local;
	}
	public String getCorp_addr() {
		return corp_addr;
	}
	public void setCorp_addr(String corp_addr) {
		this.corp_addr = corp_addr;
	}
	public String getCorp_info() {
		return corp_info;
	}
	public void setCorp_info(String corp_info) {
		this.corp_info = corp_info;
	}
	public String getCorp_img() {
		return corp_img;
	}
	public void setCorp_img(String corp_img) {
		this.corp_img = corp_img;
	}
	public MultipartFile[] getCorp_info_param() {
		return corp_info_param;
	}
	public void setCorp_info_param(MultipartFile[] corp_info_param) {
		this.corp_info_param = corp_info_param;
	}
}
