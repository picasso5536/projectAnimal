package com.animal.www.commons.vo;

// 포인트 신청 VO
public class RequestPointVO {
	private String rpnt_idx, rpnt_date, mbr_nickname, rpnt_amount, rpnt_state;

	public String getRpnt_idx() {
		return rpnt_idx;
	}

	public void setRpnt_idx(String rpnt_idx) {
		this.rpnt_idx = rpnt_idx;
	}

	public String getRpnt_date() {
		return rpnt_date;
	}

	public void setRpnt_date(String rpnt_date) {
		this.rpnt_date = rpnt_date;
	}

	public String getMbr_nickname() {
		return mbr_nickname;
	}

	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}

	public String getRpnt_amount() {
		return rpnt_amount;
	}

	public void setRpnt_amount(String rpnt_amount) {
		this.rpnt_amount = rpnt_amount;
	}

	public String getRpnt_state() {
		return rpnt_state;
	}

	public void setRpnt_state(String rpnt_state) {
		this.rpnt_state = rpnt_state;
	}
}
