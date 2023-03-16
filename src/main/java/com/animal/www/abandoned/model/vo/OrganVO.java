package com.animal.www.abandoned.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 조직도 VO
public class OrganVO {
	private String org_idx, corp_idx, org_empno, org_mgr, org_job, org_div, org_name, org_info, org_img;
	private MultipartFile org_profile_param; // 조직도 개인 프로필 사진(스트림용)

	public String getOrg_img() {
		return org_img;
	}

	public void setOrg_img(String org_img) {
		this.org_img = org_img;
	}

	public MultipartFile getOrg_profile_param() {
		return org_profile_param;
	}

	public void setOrg_profile_param(MultipartFile org_profile_param) {
		this.org_profile_param = org_profile_param;
	}

	public String getOrg_idx() {
		return org_idx;
	}

	public void setOrg_idx(String org_idx) {
		this.org_idx = org_idx;
	}

	public String getCorp_idx() {
		return corp_idx;
	}

	public void setCorp_idx(String corp_idx) {
		this.corp_idx = corp_idx;
	}

	public String getOrg_empno() {
		return org_empno;
	}

	public void setOrg_empno(String org_empno) {
		this.org_empno = org_empno;
	}

	public String getOrg_mgr() {
		return org_mgr;
	}

	public void setOrg_mgr(String org_mgr) {
		this.org_mgr = org_mgr;
	}

	public String getOrg_job() {
		return org_job;
	}

	public void setOrg_job(String org_job) {
		this.org_job = org_job;
	}

	public String getOrg_div() {
		return org_div;
	}

	public void setOrg_div(String org_div) {
		this.org_div = org_div;
	}

	public String getOrg_name() {
		return org_name;
	}

	public void setOrg_name(String org_name) {
		this.org_name = org_name;
	}

	public String getOrg_info() {
		return org_info;
	}

	public void setOrg_info(String org_info) {
		this.org_info = org_info;
	}
}
