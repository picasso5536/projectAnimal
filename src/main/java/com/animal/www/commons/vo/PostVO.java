package com.animal.www.commons.vo;

import org.springframework.web.multipart.MultipartFile;

// 게시글 VO
public class PostVO {
	private String post_idx, post_title, post_info, post_date, mbr_nickname, post_ref,
		post_update, post_img, post_file, post_lcnt, post_hcnt, post_hit, post_num, post_state;
	public String getPost_ref() {
		return post_ref;
	}
	public void setPost_ref(String post_ref) {
		this.post_ref = post_ref;
	}
	private MultipartFile post_profile_param; // 게시글 프로필 사진(스트림용)
	private MultipartFile[] post_info_param; // 게시글 내용에 첨부된 파일(스트림용)
	
	public String getPost_idx() {
		return post_idx;
	}
	public void setPost_idx(String post_idx) {
		this.post_idx = post_idx;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_info() {
		return post_info;
	}
	public void setPost_info(String post_info) {
		this.post_info = post_info;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getPost_update() {
		return post_update;
	}
	public void setPost_update(String post_update) {
		this.post_update = post_update;
	}
	public String getPost_img() {
		return post_img;
	}
	public void setPost_img(String post_img) {
		this.post_img = post_img;
	}
	public String getPost_file() {
		return post_file;
	}
	public void setPost_file(String post_file) {
		this.post_file = post_file;
	}
	public String getPost_lcnt() {
		return post_lcnt;
	}
	public void setPost_lcnt(String post_lcnt) {
		this.post_lcnt = post_lcnt;
	}
	public String getPost_hcnt() {
		return post_hcnt;
	}
	public void setPost_hcnt(String post_hcnt) {
		this.post_hcnt = post_hcnt;
	}
	public String getPost_hit() {
		return post_hit;
	}
	public void setPost_hit(String post_hit) {
		this.post_hit = post_hit;
	}
	public String getPost_num() {
		return post_num;
	}
	public void setPost_num(String post_num) {
		this.post_num = post_num;
	}
	public String getPost_state() {
		return post_state;
	}
	public void setPost_state(String post_state) {
		this.post_state = post_state;
	}
	public MultipartFile getPost_profile_param() {
		return post_profile_param;
	}
	public void setPost_profile_param(MultipartFile post_profile_param) {
		this.post_profile_param = post_profile_param;
	}
	public MultipartFile[] getPost_info_param() {
		return post_info_param;
	}
	public void setPost_info_param(MultipartFile[] post_info_param) {
		this.post_info_param = post_info_param;
	}
}
