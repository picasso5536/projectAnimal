package com.animal.www.market.model.vo;

import org.springframework.web.multipart.MultipartFile;

// ��ǰ VO
public class ProductVO {
	private String pdt_idx, corp_idx, corp_name, pdt_price, pdt_info, pdt_img, pdt_inven;
	private String pdt_name, pdt_lcnt, pdt_odcnt, pdt_saleprice, pdt_cnt, pdt_star, kate_idx, pcl_idx, pdt_state;
	private MultipartFile pdt_profile_param; // ��ǰ ��ǥ �̹��� �迭(��Ʈ����)
	private MultipartFile[] pdt_info_param; // ��ǰ ��ǥ �̹��� �迭(��Ʈ����)
	
	
	public String getPdt_idx() {
		return pdt_idx;
	}
	public void setPdt_idx(String pdt_idx) {
		this.pdt_idx = pdt_idx;
	}
	public String getPdt_inven() {
		return pdt_inven;
	}
	public void setPdt_inven(String pdt_inven) {
		this.pdt_inven = pdt_inven;
	}
	public String getCorp_idx() {
		return corp_idx;
	}
	public void setCorp_idx(String corp_idx) {
		this.corp_idx = corp_idx;
	}
	public String getCorp_name() {
		return corp_name;
	}
	public void setCorp_name(String corp_name) {
		this.corp_name = corp_name;
	}
	public String getPdt_cnt() {
		return pdt_cnt;
	}
	public void setPdt_cnt(String pdt_cnt) {
		this.pdt_cnt = pdt_cnt;
	}
	public String getPcl_idx() {
		return pcl_idx;
	}
	public void setPcl_idx(String pcl_idx) {
		this.pcl_idx = pcl_idx;
	}
	public String getPdt_state() {
		return pdt_state;
	}
	public void setPdt_state(String pdt_state) {
		this.pdt_state = pdt_state;
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
