package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 댓글/답글 VO
public class CommentVO {
	private String cmt_idx, cmt_info, cmt_date, mbr_nickname, cmt_update, cmt_img, cmt_lcnt, cmt_hcnt, cmt_step, cmt_level, cmt_ref, cmt_fk;
	private MultipartFile cmt_info_param; // 댓글에 첨부될 이미지(스트림용)
	
	public String getCmt_idx() {
		return cmt_idx;
	}
	public void setCmt_idx(String cmt_idx) {
		this.cmt_idx = cmt_idx;
	}
	public String getCmt_info() {
		return cmt_info;
	}
	public void setCmt_info(String cmt_info) {
		this.cmt_info = cmt_info;
	}
	public String getCmt_date() {
		return cmt_date;
	}
	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getCmt_update() {
		return cmt_update;
	}
	public void setCmt_update(String cmt_update) {
		this.cmt_update = cmt_update;
	}
	public String getCmt_img() {
		return cmt_img;
	}
	public void setCmt_img(String cmt_img) {
		this.cmt_img = cmt_img;
	}
	public String getCmt_lcnt() {
		return cmt_lcnt;
	}
	public void setCmt_lcnt(String cmt_lcnt) {
		this.cmt_lcnt = cmt_lcnt;
	}
	public String getCmt_hcnt() {
		return cmt_hcnt;
	}
	public void setCmt_hcnt(String cmt_hcnt) {
		this.cmt_hcnt = cmt_hcnt;
	}
	public String getCmt_step() {
		return cmt_step;
	}
	public void setCmt_step(String cmt_step) {
		this.cmt_step = cmt_step;
	}
	public String getCmt_level() {
		return cmt_level;
	}
	public void setCmt_level(String cmt_level) {
		this.cmt_level = cmt_level;
	}
	public String getCmt_ref() {
		return cmt_ref;
	}
	public void setCmt_ref(String cmt_ref) {
		this.cmt_ref = cmt_ref;
	}
	public String getCmt_fk() {
		return cmt_fk;
	}
	public void setCmt_fk(String cmt_fk) {
		this.cmt_fk = cmt_fk;
	}
	public MultipartFile getCmt_info_param() {
		return cmt_info_param;
	}
	public void setCmt_info_param(MultipartFile cmt_info_param) {
		this.cmt_info_param = cmt_info_param;
	}
}
