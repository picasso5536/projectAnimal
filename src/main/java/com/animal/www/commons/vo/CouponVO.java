package com.animal.www.commons.vo;

// 쿠폰 VO
public class CouponVO {
	private String cp_idx, cp_name, cp_code, cp_start, cp_end, cp_img, cp_use, cp_type, cp_date, cp_discount, cp_discount_amount, mbr_nickname;
	private String cp_profile_param; // 쿠폰 이미지(스트림용)
	
	public String getCp_idx() {
		return cp_idx;
	}
	public void setCp_idx(String cp_idx) {
		this.cp_idx = cp_idx;
	}
	public String getCp_name() {
		return cp_name;
	}
	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}
	public String getCp_code() {
		return cp_code;
	}
	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}
	public String getCp_start() {
		return cp_start;
	}
	public void setCp_start(String cp_start) {
		this.cp_start = cp_start;
	}
	public String getCp_end() {
		return cp_end;
	}
	public void setCp_end(String cp_end) {
		this.cp_end = cp_end;
	}
	public String getCp_img() {
		return cp_img;
	}
	public void setCp_img(String cp_img) {
		this.cp_img = cp_img;
	}
	public String getCp_use() {
		return cp_use;
	}
	public void setCp_use(String cp_use) {
		this.cp_use = cp_use;
	}
	public String getCp_type() {
		return cp_type;
	}
	public void setCp_type(String cp_type) {
		this.cp_type = cp_type;
	}
	public String getCp_date() {
		return cp_date;
	}
	public void setCp_date(String cp_date) {
		this.cp_date = cp_date;
	}
	public String getCp_discount() {
		return cp_discount;
	}
	public void setCp_discount(String cp_discount) {
		this.cp_discount = cp_discount;
	}
	public String getCp_discount_amount() {
		return cp_discount_amount;
	}
	public void setCp_discount_amount(String cp_discount_amount) {
		this.cp_discount_amount = cp_discount_amount;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getCp_profile_param() {
		return cp_profile_param;
	}
	public void setCp_profile_param(String cp_profile_param) {
		this.cp_profile_param = cp_profile_param;
	}
}
