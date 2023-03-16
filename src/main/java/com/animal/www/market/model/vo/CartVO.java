package com.animal.www.market.model.vo;

import org.springframework.web.multipart.MultipartFile;

// 장바구니 VO
public class CartVO {
	private String cart_idx, mbr_nickname, pdt_idx, pdt_name, pdt_saleprice, pdt_price, pdt_img;
	private MultipartFile pdt_profile_param; // 장바구니에 띄워줄 상품의 대표 이미지
	
	public String getCart_idx() {
		return cart_idx;
	}
	public void setCart_idx(String cart_idx) {
		this.cart_idx = cart_idx;
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
	public String getPdt_img() {
		return pdt_img;
	}
	public void setPdt_img(String pdt_img) {
		this.pdt_img = pdt_img;
	}
	public MultipartFile getPdt_profile_param() {
		return pdt_profile_param;
	}
	public void setPdt_profile_param(MultipartFile pdt_profile_param) {
		this.pdt_profile_param = pdt_profile_param;
	}
}
