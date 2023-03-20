package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 1:1 답변 VO
public class AnswerVO {
	private String ans_idx, ans_title, adm_idx, ans_info, ans_file, ans_date, inq_idx, mbr_nickname;
	private MultipartFile[] ans_info_param; // 답변에 들어갈 첨부파일(스트림용)
	
	public String getAns_idx() {
		return ans_idx;
	}
	public void setAns_idx(String ans_idx) {
		this.ans_idx = ans_idx;
	}
	public String getAns_title() {
		return ans_title;
	}
	public void setAns_title(String ans_title) {
		this.ans_title = ans_title;
	}
	public String getAdm_idx() {
		return adm_idx;
	}
	public void setAdm_idx(String adm_idx) {
		this.adm_idx = adm_idx;
	}
	public String getAns_info() {
		return ans_info;
	}
	public void setAns_info(String ans_info) {
		this.ans_info = ans_info;
	}
	public String getAns_file() {
		return ans_file;
	}
	public void setAns_file(String ans_file) {
		this.ans_file = ans_file;
	}
	public String getAns_date() {
		return ans_date;
	}
	public void setAns_date(String ans_date) {
		this.ans_date = ans_date;
	}
	public String getInq_idx() {
		return inq_idx;
	}
	public void setInq_idx(String inq_idx) {
		this.inq_idx = inq_idx;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public MultipartFile[] getAns_info_param() {
		return ans_info_param;
	}
	public void setAns_info_param(MultipartFile[] ans_info_param) {
		this.ans_info_param = ans_info_param;
	}
}
