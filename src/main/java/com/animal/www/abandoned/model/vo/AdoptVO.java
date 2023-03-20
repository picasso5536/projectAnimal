package com.animal.www.abandoned.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 입양동물 프로필 VO
public class AdoptVO {
	private String adt_idx, adt_name, adt_gender, adt_age, adt_variety, adt_weight, adt_info, adt_img, adt_state;
	private MultipartFile adt_profile_param; // 입양정보에 쓰일 반려동물 프로필 사진(스트림용)
	
	public String getAdt_idx() {
		return adt_idx;
	}
	public void setAdt_idx(String adt_idx) {
		this.adt_idx = adt_idx;
	}
	public String getAdt_name() {
		return adt_name;
	}
	public void setAdt_name(String adt_name) {
		this.adt_name = adt_name;
	}
	public String getAdt_gender() {
		return adt_gender;
	}
	public void setAdt_gender(String adt_gender) {
		this.adt_gender = adt_gender;
	}
	public String getAdt_age() {
		return adt_age;
	}
	public void setAdt_age(String adt_age) {
		this.adt_age = adt_age;
	}
	public String getAdt_variety() {
		return adt_variety;
	}
	public void setAdt_variety(String adt_variety) {
		this.adt_variety = adt_variety;
	}
	public String getAdt_weight() {
		return adt_weight;
	}
	public void setAdt_weight(String adt_weight) {
		this.adt_weight = adt_weight;
	}
	public String getAdt_info() {
		return adt_info;
	}
	public void setAdt_info(String adt_info) {
		this.adt_info = adt_info;
	}
	public String getAdt_img() {
		return adt_img;
	}
	public void setAdt_img(String adt_img) {
		this.adt_img = adt_img;
	}
	public String getAdt_state() {
		return adt_state;
	}
	public void setAdt_state(String adt_state) {
		this.adt_state = adt_state;
	}
	public MultipartFile getAdt_profile_param() {
		return adt_profile_param;
	}
	public void setAdt_profile_param(MultipartFile adt_profile_param) {
		this.adt_profile_param = adt_profile_param;
	}
}
