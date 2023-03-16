package com.animal.www.market.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 상품 VO
public class ProductVO {
	private String pdt_idx, pdt_comp_idx, pdt_comp_name, pdt_price, pdt_info, pdt_img;
	private String pdt_name, pdt_lcnt, pdt_odcnt, pdt_saleprice, pdt_star, kate_idx;
	private MultipartFile pdt_profile_param; // 상품 대표 이미지 배열(스트림용)
	private MultipartFile[] pdt_info_param; // 상품 대표 이미지 배열(스트림용)
	
	
	public String getPdt_idx() {
		return pdt_idx;
	}
	public void setPdt_idx(String pdt_idx) {
		this.pdt_idx = pdt_idx;
	}
	public String getPdt_comp_idx() {
		return pdt_comp_idx;
	}
	public void setPdt_comp_idx(String pdt_comp_idx) {
		this.pdt_comp_idx = pdt_comp_idx;
	}
	public String getPdt_comp_name() {
		return pdt_comp_name;
	}
	public void setPdt_comp_name(String pdt_comp_name) {
		this.pdt_comp_name = pdt_comp_name;
	}
	public String getPdt_price() {
		return pdt_price;
	}
	public void setPdt_price(String pdt_price) {
		this.pdt_price = pdt_price;
	}
	public String getPdt_info() {
		return pdt_info;
	}
	public void setPdt_info(String pdt_info) {
		this.pdt_info = pdt_info;
	}
	public String getPdt_img() {
		return pdt_img;
	}
	public void setPdt_img(String pdt_img) {
		this.pdt_img = pdt_img;
	}
	public String getPdt_name() {
		return pdt_name;
	}
	public void setPdt_name(String pdt_name) {
		this.pdt_name = pdt_name;
	}
	public String getPdt_lcnt() {
		return pdt_lcnt;
	}
	public void setPdt_lcnt(String pdt_lcnt) {
		this.pdt_lcnt = pdt_lcnt;
	}
	public String getPdt_odcnt() {
		return pdt_odcnt;
	}
	public void setPdt_odcnt(String pdt_odcnt) {
		this.pdt_odcnt = pdt_odcnt;
	}
	public String getPdt_saleprice() {
		return pdt_saleprice;
	}
	public void setPdt_saleprice(String pdt_saleprice) {
		this.pdt_saleprice = pdt_saleprice;
	}
	public String getPdt_star() {
		return pdt_star;
	}
	public void setPdt_star(String pdt_star) {
		this.pdt_star = pdt_star;
	}
	public String getKate_idx() {
		return kate_idx;
	}
	public MultipartFile getPdt_profile_param() {
		return pdt_profile_param;
	}
	public void setPdt_profile_param(MultipartFile pdt_profile_param) {
		this.pdt_profile_param = pdt_profile_param;
	}
	public MultipartFile[] getPdt_info_param() {
		return pdt_info_param;
	}
	public void setPdt_info_param(MultipartFile[] pdt_info_param) {
		this.pdt_info_param = pdt_info_param;
	}
	public void setKate_idx(String kate_idx) {
		this.kate_idx = kate_idx;
	}
}
