package com.animal.www.market.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 주문완료 VO
public class OrdersVO {
	private String od_idx, mbr_nickname, pdt_idx, pdt_name, pdt_img, pdt_saleprice, pdt_price, dvr_idx, dvr_state;
	private String pdt_cnt, od_arv, od_leave, od_dvr_name, od_dvr_addr, od_dvr_phone, od_dvr_req;
	private MultipartFile pdt_profile_param; // 주문완료 목록에 띄워줄 상품 대표 이미지
	
	public String getDvr_idx() {
		return dvr_idx;
	}
	public void setDvr_idx(String dvr_idx) {
		this.dvr_idx = dvr_idx;
	}
	public String getDvr_state() {
		return dvr_state;
	}
	public void setDvr_state(String dvr_state) {
		this.dvr_state = dvr_state;
	}
	public String getOd_idx() {
		return od_idx;
	}
	public void setOd_idx(String od_idx) {
		this.od_idx = od_idx;
	}
	public String getMbr_nickname() {
		return mbr_nickname;
	}
	public void setMbr_nickname(String mbr_nickname) {
		this.mbr_nickname = mbr_nickname;
	}
	public String getPdt_idx() {
		return pdt_idx;
	}
	public void setPdt_idx(String pdt_idx) {
		this.pdt_idx = pdt_idx;
	}
	public String getPdt_name() {
		return pdt_name;
	}
	public void setPdt_name(String pdt_name) {
		this.pdt_name = pdt_name;
	}
	public String getPdt_img() {
		return pdt_img;
	}
	public void setPdt_img(String pdt_img) {
		this.pdt_img = pdt_img;
	}
	public String getPdt_saleprice() {
		return pdt_saleprice;
	}
	public void setPdt_saleprice(String pdt_saleprice) {
		this.pdt_saleprice = pdt_saleprice;
	}
	public String getPdt_price() {
		return pdt_price;
	}
	public void setPdt_price(String pdt_price) {
		this.pdt_price = pdt_price;
	}
	public String getPdt_cnt() {
		return pdt_cnt;
	}
	public void setPdt_cnt(String pdt_cnt) {
		this.pdt_cnt = pdt_cnt;
	}
	public String getOd_arv() {
		return od_arv;
	}
	public void setOd_arv(String od_arv) {
		this.od_arv = od_arv;
	}
	public String getOd_leave() {
		return od_leave;
	}
	public void setOd_leave(String od_leave) {
		this.od_leave = od_leave;
	}
	public String getOd_dvr_name() {
		return od_dvr_name;
	}
	public void setOd_dvr_name(String od_dvr_name) {
		this.od_dvr_name = od_dvr_name;
	}
	public String getOd_dvr_addr() {
		return od_dvr_addr;
	}
	public void setOd_dvr_addr(String od_dvr_addr) {
		this.od_dvr_addr = od_dvr_addr;
	}
	public String getOd_dvr_phone() {
		return od_dvr_phone;
	}
	public void setOd_dvr_phone(String od_dvr_phone) {
		this.od_dvr_phone = od_dvr_phone;
	}
	public String getOd_dvr_req() {
		return od_dvr_req;
	}
	public void setOd_dvr_req(String od_dvr_req) {
		this.od_dvr_req = od_dvr_req;
	}
	public MultipartFile getPdt_profile_param() {
		return pdt_profile_param;
	}
	public void setPdt_profile_param(MultipartFile pdt_profile_param) {
		this.pdt_profile_param = pdt_profile_param;
	}
}
