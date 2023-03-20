package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 일반회원 VO
public class MemberVO {
	private String mbr_idx, mbr_id, mbr_pw, mbr_email, mbr_cellphone, mbr_telephone, mbr_name, mbr_birth, mbr_gender;
	private String mbr_join, mbr_address, mbr_nickname, mbr_access, mbr_withdraw, mbr_attention, mbr_path, mbr_picture;
	private String mbr_like, mbr_ban, mbr_ban_reason, mbr_sns;
	private MultipartFile mbr_param; // 프로필 이미지(스트림용)
	
	public String getMbr_idx() {
		return mbr_idx;
	}
	public void setMbr_idx(String mbr_idx) {
		this.mbr_idx = mbr_idx;
	}
	public String getMbr_id() {
		return mbr_id;
	}
	public void setMbr_id(String mbr_id) {
		this.mbr_id = mbr_id;
	}
	public String getMbr_pw() {
		return mbr_pw;
	}
	public void setMbr_pw(String mbr_pw) {
		this.mbr_pw = mbr_pw;
	}
	public String getMbr_email() {
		return mbr_email;
	}
	public void setMbr_email(String mbr_email) {
		this.mbr_email = mbr_email;
	}
	public String getMbr_cellphone() {
		return mbr_cellphone;
	}
	public void setMbr_cellphone(String mbr_cellphone) {
		this.mbr_cellphone = mbr_cellphone;
	}
	public String getMbr_telephone() {
		return mbr_telephone;
	}
	public void setMbr_telephone(String mbr_telephone) {
		this.mbr_telephone = mbr_telephone;
	}
	public String getMbr_name() {
		return mbr_name;
	}
	public void setMbr_name(String mbr_name) {
		this.mbr_name = mbr_name;
	}
	public String getMbr_birth() {
		return mbr_birth;
	}
	public void setMbr_birth(String mbr_birth) {
		this.mbr_birth = mbr_birth;
	}
	public String getMbr_gender() {
		return mbr_gender;
	}
	public void setMbr_gender(String mbr_gender) {
		this.mbr_gender = mbr_gender;
	}
	public String getMbr_join() {
		return mbr_join;
	}
	public void setMbr_join(String mbr_join) {
		this.mbr_join = mbr_join;
	}
	public String getMbr_address() {
		return mbr_address;
	}
	public void setMbr_address(String mbr_address) {
		this.mbr_address = mbr_address;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getMbr_access() {
		return mbr_access;
	}
	public void setMbr_access(String mbr_access) {
		this.mbr_access = mbr_access;
	}
	public String getMbr_withdraw() {
		return mbr_withdraw;
	}
	public void setMbr_withdraw(String mbr_withdraw) {
		this.mbr_withdraw = mbr_withdraw;
	}
	public String getMbr_attention() {
		return mbr_attention;
	}
	public void setMbr_attention(String mbr_attention) {
		this.mbr_attention = mbr_attention;
	}
	public String getMbr_path() {
		return mbr_path;
	}
	public void setMbr_path(String mbr_path) {
		this.mbr_path = mbr_path;
	}
	public String getMbr_picture() {
		return mbr_picture;
	}
	public void setMbr_picture(String mbr_picture) {
		this.mbr_picture = mbr_picture;
	}
	public String getMbr_like() {
		return mbr_like;
	}
	public void setMbr_like(String mbr_like) {
		this.mbr_like = mbr_like;
	}
	public String getMbr_ban() {
		return mbr_ban;
	}
	public void setMbr_ban(String mbr_ban) {
		this.mbr_ban = mbr_ban;
	}
	public String getMbr_ban_reason() {
		return mbr_ban_reason;
	}
	public void setMbr_ban_reason(String mbr_ban_reason) {
		this.mbr_ban_reason = mbr_ban_reason;
	}
	public String getMbr_sns() {
		return mbr_sns;
	}
	public void setMbr_sns(String mbr_sns) {
		this.mbr_sns = mbr_sns;
	}
	public MultipartFile getMbr_param() {
		return mbr_param;
	}
	public void setMbr_param(MultipartFile mbr_param) {
		this.mbr_param = mbr_param;
	}
}
