package com.animal.www.abandoned.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 제보 VO
public class Call112VO {
	private String c112_idx, c112_img, c112_info, c112_date, c112_title, c112_local, mbr_nickname;
	private MultipartFile[] c112_info_param; // 제보 내용에 첨부될 파일(스트림용)
	
	public String getC112_idx() {
		return c112_idx;
	}
	public void setC112_idx(String c112_idx) {
		this.c112_idx = c112_idx;
	}
	public String getC112_img() {
		return c112_img;
	}
	public void setC112_img(String c112_img) {
		this.c112_img = c112_img;
	}
	public String getC112_info() {
		return c112_info;
	}
	public void setC112_info(String c112_info) {
		this.c112_info = c112_info;
	}
	public String getC112_date() {
		return c112_date;
	}
	public void setC112_date(String c112_date) {
		this.c112_date = c112_date;
	}
	public String getC112_title() {
		return c112_title;
	}
	public void setC112_title(String c112_title) {
		this.c112_title = c112_title;
	}
	public String getC112_local() {
		return c112_local;
	}
	public void setC112_local(String c112_local) {
		this.c112_local = c112_local;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public MultipartFile[] getC112_info_param() {
		return c112_info_param;
	}
	public void setC112_info_param(MultipartFile[] c112_info_param) {
		this.c112_info_param = c112_info_param;
	}
}
