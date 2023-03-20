package com.animal.www.commons.vo;

// 쿠폰사용 VO
// 어떤 용도로 만들었는지 기억이 안남. 일단 보류
public class CouponRegVO {
	private String cr_idx, cp_idx, cr_name, cr_code, mbr_nickname, cr_used, cr_used_date, pdt_idx;

	public String getCr_idx() {
		return cr_idx;
	}

	public void setCr_idx(String cr_idx) {
		this.cr_idx = cr_idx;
	}

	public String getCp_idx() {
		return cp_idx;
	}

	public void setCp_idx(String cp_idx) {
		this.cp_idx = cp_idx;
	}

	public String getCr_name() {
		return cr_name;
	}

	public void setCr_name(String cr_name) {
		this.cr_name = cr_name;
	}

	public String getCr_code() {
		return cr_code;
	}

	public void setCr_code(String cr_code) {
		this.cr_code = cr_code;
	}

	public String getMbr_nickname() {
		return mbr_nickname;
	}

	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}

	public String getCr_used() {
		return cr_used;
	}

	public void setCr_used(String cr_used) {
		this.cr_used = cr_used;
	}

	public String getCr_used_date() {
		return cr_used_date;
	}

	public void setCr_used_date(String cr_used_date) {
		this.cr_used_date = cr_used_date;
	}

	public String getPdt_idx() {
		return pdt_idx;
	}

	public void setPdt_idx(String pdt_idx) {
		this.pdt_idx = pdt_idx;
	}
}
