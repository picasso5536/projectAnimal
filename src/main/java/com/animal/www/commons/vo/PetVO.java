package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 펫 프로필 VO
public class PetVO {
	private String pet_idx, mbr_nickname, pet_type, pet_name, pet_title, pet_weight, pet_birth, pet_dead, pet_picture, pet_cert, pet_subtype;
	private MultipartFile pet_profile_param; // 펫 프로필 사진(스트림용)
	
	public String getPet_idx() {
		return pet_idx;
	}
	public void setPet_idx(String pet_idx) {
		this.pet_idx = pet_idx;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getPet_type() {
		return pet_type;
	}
	public void setPet_type(String pet_type) {
		this.pet_type = pet_type;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public String getPet_title() {
		return pet_title;
	}
	public void setPet_title(String pet_title) {
		this.pet_title = pet_title;
	}
	public String getPet_weight() {
		return pet_weight;
	}
	public void setPet_weight(String pet_weight) {
		this.pet_weight = pet_weight;
	}
	public String getPet_birth() {
		return pet_birth;
	}
	public void setPet_birth(String pet_birth) {
		this.pet_birth = pet_birth;
	}
	public String getPet_dead() {
		return pet_dead;
	}
	public void setPet_dead(String pet_dead) {
		this.pet_dead = pet_dead;
	}
	public String getPet_picture() {
		return pet_picture;
	}
	public void setPet_picture(String pet_picture) {
		this.pet_picture = pet_picture;
	}
	public String getPet_cert() {
		return pet_cert;
	}
	public void setPet_cert(String pet_cert) {
		this.pet_cert = pet_cert;
	}
	public String getPet_subtype() {
		return pet_subtype;
	}
	public void setPet_subtype(String pet_subtype) {
		this.pet_subtype = pet_subtype;
	}
	public MultipartFile getPet_profile_param() {
		return pet_profile_param;
	}
	public void setPet_profile_param(MultipartFile pet_profile_param) {
		this.pet_profile_param = pet_profile_param;
	}
}
