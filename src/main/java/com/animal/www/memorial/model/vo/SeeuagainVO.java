package com.animal.www.memorial.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 추모 VO
public class SeeuagainVO {
	private String suag_idx, suag_date, mbr_nickname, pet_idx, suag_file, suag_info, pet_dead, pet_title, pet_name, suag_img, suag_scope, suag_lcnt;
	private MultipartFile[] suag_info_param; // 추모글 내용에 들어갈 첨부파일(스트림용)
	private MultipartFile suag_profile_param; // 추모글 프로필 사진(스트림용)
	
	public String getSuag_idx() {
		return suag_idx;
	}
	public void setSuag_idx(String suag_idx) {
		this.suag_idx = suag_idx;
	}
	public String getSuag_date() {
		return suag_date;
	}
	public void setSuag_date(String suag_date) {
		this.suag_date = suag_date;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getPet_idx() {
		return pet_idx;
	}
	public void setPet_idx(String pet_idx) {
		this.pet_idx = pet_idx;
	}
	public String getSuag_file() {
		return suag_file;
	}
	public void setSuag_file(String suag_file) {
		this.suag_file = suag_file;
	}
	public String getSuag_info() {
		return suag_info;
	}
	public void setSuag_info(String suag_info) {
		this.suag_info = suag_info;
	}
	public String getPet_title() {
		return pet_title;
	}
	public String getPet_dead() {
		return pet_dead;
	}
	public void setPet_dead(String pet_dead) {
		this.pet_dead = pet_dead;
	}
	public void setPet_title(String pet_title) {
		this.pet_title = pet_title;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public String getSuag_img() {
		return suag_img;
	}
	public void setSuag_img(String suag_img) {
		this.suag_img = suag_img;
	}
	public String getSuag_scope() {
		return suag_scope;
	}
	public void setSuag_scope(String suag_scope) {
		this.suag_scope = suag_scope;
	}
	public String getSuag_lcnt() {
		return suag_lcnt;
	}
	public void setSuag_lcnt(String suag_lcnt) {
		this.suag_lcnt = suag_lcnt;
	}
	public MultipartFile[] getSuag_info_param() {
		return suag_info_param;
	}
	public void setSuag_info_param(MultipartFile[] suag_info_param) {
		this.suag_info_param = suag_info_param;
	}
	public MultipartFile getSuag_profile_param() {
		return suag_profile_param;
	}
	public void setSuag_profile_param(MultipartFile suag_profile_param) {
		this.suag_profile_param = suag_profile_param;
	}
}
