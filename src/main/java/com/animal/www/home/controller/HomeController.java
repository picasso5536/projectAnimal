package com.animal.www.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.animal.www.home.model.service.HomeService;

@Controller
public class HomeController {
	@Autowired
	private HomeService homeService;

	public void setHomeService(HomeService homeService) {
		this.homeService = homeService;
	}
	
	@RequestMapping("home.do")
	public ModelAndView home() {
		return new ModelAndView("home/home");
	}
	
	@RequestMapping("login.do")
	public ModelAndView longin() {
		return new ModelAndView("home/login");
	}
	
	@RequestMapping("singup.do")
	public ModelAndView singup() {
		return new ModelAndView("home/singup");
	}
	
	@RequestMapping("find.do")
	public ModelAndView find() {
		return new ModelAndView("home/find");
	}
	
	@RequestMapping("consent.do")
	public ModelAndView consent() {
		return new ModelAndView("home/consent");
	}
	
	@RequestMapping("my_info.do")
	public ModelAndView myInfo() {
		return new ModelAndView("home/mypage/mypage_info");
	}
	
	@RequestMapping("my_info_up.do")
	public ModelAndView myInfoUpdate() {
		return new ModelAndView("home/mypage/mypage_info_up");
	}
	
	@RequestMapping("my_point.do")
	public ModelAndView myPoint() {
		return new ModelAndView("home/mypage/mypage_point");
	}
	
	@RequestMapping("my_pet.do")
	public ModelAndView myPet() {
		return new ModelAndView("home/mypage/mypage_pet");
	}

	@RequestMapping("my_pet_up.do")
	public ModelAndView myPetUpdate() {
		return new ModelAndView("home/mypage/mypage_pet_up");
	}

	@RequestMapping("my_pet_reg.do")
	public ModelAndView myPetRegist() {
		return new ModelAndView("home/mypage/mypage_pet_regist");
	}
	
	@RequestMapping("my_pet_ins.do")
	public ModelAndView myPetInsert() {
		ModelAndView mv = new ModelAndView("");
		
		return mv;
	}
	
	@RequestMapping("my_banned.do")
	public ModelAndView myBanned() {
		return new ModelAndView("home/mypage/mypage_banned");
	}
	
	@RequestMapping("my_orderlist.do")
	public ModelAndView myOrderList() {
		return new ModelAndView("home/mypage/mypage_order");
	}
	
	@RequestMapping("my_order_detail.do")
	public ModelAndView myOrderDetail() {
		return new ModelAndView("home/mypage/mypage_order_detail");
	}
	
	@RequestMapping("my_review_write.do")
	public ModelAndView myReviewWrite() {
		return new ModelAndView("home/mypage/mypage_review_write");
	}
	
	@RequestMapping("my_review_send.do")
	public ModelAndView myReviewSend() {
		return new ModelAndView("home/mypage/mypage_review_send");
	}
	
	@RequestMapping("my_inquire.do")
	public ModelAndView myInquire() {
		return new ModelAndView("home/mypage/mypage_inquire");
	}
	
	@RequestMapping("my_inquire_view.do")
	public ModelAndView myInquireView() {
		return new ModelAndView("home/mypage/mypage_inquire_view");
	}

	@RequestMapping("my_inquire_send.do")
	public ModelAndView myInquireSend() {
		return new ModelAndView("home/mypage/mypage_inquire_send");
	}
	
	@RequestMapping("my_answer_view.do")
	public ModelAndView myAnswerView() {
		return new ModelAndView("home/mypage/mypage_answer_view");
	}
	
	@RequestMapping("my_message.do")
	public ModelAndView myMessage() {
		return new ModelAndView("home/mypage/mypage_message");
	}
	
	@RequestMapping("my_message_view.do")
	public ModelAndView myMessageView() {
		return new ModelAndView("home/mypage/mypage_message_view");
	}
	
	@RequestMapping("my_cartlist.do")
	public ModelAndView myCartList() {
		return new ModelAndView("home/mypage/mypage_cartlist");
	}
	
	@RequestMapping("my_shipping_address.do")
	public ModelAndView myShippingAddress() {
		return new ModelAndView("home/mypage/mypage_shipping_address");
	}
	
	@RequestMapping("my_shipping_up.do")
	public ModelAndView myShippingUpdate() {
		return new ModelAndView("home/mypage/mypage_shipping_up");
	}

	@RequestMapping("my_shipping_add.do")
	public ModelAndView myShippingAdd() {
		return new ModelAndView("home/mypage/mypage_shipping_add");
	}
	
	@RequestMapping("my_dibs.do")
	public ModelAndView myDibs() {
		return new ModelAndView("home/mypage/mypage_dibs");
	}

	@RequestMapping("my_coupon.do")
	public ModelAndView myCoupon() {
		return new ModelAndView("home/mypage/mypage_coupon");
	}
	
	@RequestMapping("my_review.do")
	public ModelAndView myReview() {
		return new ModelAndView("home/mypage/mypage_review");
	}
}
