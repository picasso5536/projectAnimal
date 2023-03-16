package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 문의사항 VO
public class InquireVO {
	private String inq_idx, inq_title, mbr_nickname, inq_info, inq_file, inq_date, kate_idx;
	private MultipartFile[] inq_info_param; // 문의사항 내용에 첨부된 파일(스트림용)
	
	public String getInq_idx() {
		return inq_idx;
	}
	public void setInq_idx(String inq_idx) {
		this.inq_idx = inq_idx;
	}
	public String getInq_title() {
		return inq_title;
	}
	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getInq_info() {
		return inq_info;
	}
	public void setInq_info(String inq_info) {
		this.inq_info = inq_info;
	}
	public String getInq_file() {
		return inq_file;
	}
	public void setInq_file(String inq_file) {
		this.inq_file = inq_file;
	}
	public String getInq_date() {
		return inq_date;
	}
	public void setInq_date(String inq_date) {
		this.inq_date = inq_date;
	}
	public String getKate_idx() {
		return kate_idx;
	}
	public void setKate_idx(String kate_idx) {
		this.kate_idx = kate_idx;
	}
	public MultipartFile[] getInq_info_param() {
		return inq_info_param;
	}
	public void setInq_info_param(MultipartFile[] inq_info_param) {
		this.inq_info_param = inq_info_param;
	}
}
