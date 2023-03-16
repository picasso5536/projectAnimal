package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 공지/이벤트 VO
public class NotificationVO {
	private String notice_idx, notice_title, adm_idx, notice_info, notice_hit, notice_visible, notice_file, notice_date, notice_img, notice_state, notice_priorty;
	private MultipartFile notice_profile_param; // 공지/이벤트/문의사항에 들어갈 대표 이미지(스트림용)
	private MultipartFile[] notice_info_param; // 공지/이벤트/문의사항에 들어갈 내용 이미지(스트림용)
	
	public String getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(String notice_idx) {
		this.notice_idx = notice_idx;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getAdm_idx() {
		return adm_idx;
	}
	public void setAdm_idx(String adm_idx) {
		this.adm_idx = adm_idx;
	}
	public String getNotice_info() {
		return notice_info;
	}
	public void setNotice_info(String notice_info) {
		this.notice_info = notice_info;
	}
	public String getNotice_hit() {
		return notice_hit;
	}
	public void setNotice_hit(String notice_hit) {
		this.notice_hit = notice_hit;
	}
	public String getNotice_visible() {
		return notice_visible;
	}
	public void setNotice_visible(String notice_visible) {
		this.notice_visible = notice_visible;
	}
	public String getNotice_file() {
		return notice_file;
	}
	public void setNotice_file(String notice_file) {
		this.notice_file = notice_file;
	}
	public String getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}
	public String getNotice_img() {
		return notice_img;
	}
	public void setNotice_img(String notice_img) {
		this.notice_img = notice_img;
	}
	public String getNotice_state() {
		return notice_state;
	}
	public void setNotice_state(String notice_state) {
		this.notice_state = notice_state;
	}
	public String getNotice_priorty() {
		return notice_priorty;
	}
	public void setNotice_priorty(String notice_priorty) {
		this.notice_priorty = notice_priorty;
	}
	public MultipartFile getNotice_profile_param() {
		return notice_profile_param;
	}
	public void setNotice_profile_param(MultipartFile notice_profile_param) {
		this.notice_profile_param = notice_profile_param;
	}
	public MultipartFile[] getNotice_info_param() {
		return notice_info_param;
	}
	public void setNotice_info_param(MultipartFile[] notice_info_param) {
		this.notice_info_param = notice_info_param;
	}
}
