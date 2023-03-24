<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/market_css/market_category.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
/* footer style */
footer {
	background-color: #fff;
	font-family: Arial, sans-serif;
	font-size: 14px;
	color: #333;
	padding: 30px 0;
	position: relative;
	bottom: 0;
	width: 100%;
	box-sizing: border-box;
}
.footer-container {
	max-width: 1100px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
}
.footer-column {
	width: 30%;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
.footer-column h3 {
	font-size: 18px;
	margin-bottom: 20px;
}
.footer-column ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.footer-column ul li {
	margin-bottom: 10px;
}
.footer-column ul li a {
	color: #333;
	text-decoration: none;
}
.social-media-icons {
	display: flex;
}
.social-media-icons li {
	margin-right: 10px;
}
.social-media-icons li:last-child {
	margin-right: 0;
}
.social-media-icons a {
	color: #333;
	text-decoration: none;
}
.social-media-icons a i {
	font-size: 18px;
	transition: all 0.3s ease-in-out;
}
.social-media-icons a:hover i {
	transform: translateY(-5px);
}
.bottom-bar {
	background-color: #333;
	color: #fff;
	font-size: 12px;
	text-align: center;
	padding: 10px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(window).scroll(function() {
		    if ($(this).scrollTop() > 250) { //250 넘으면 버튼이 보인다
		      $('#topBtn').fadeIn();
		    } else {
		      $('#topBtn').fadeOut();
		    }
		  }); // 버튼 클릭시 
		  $("#topBtn").click(function() { 
		  	$('html, body').animate({ scrollTop : 0 // 0 이동 
		  	}, 400); // 속도 400 
		  	return false; 
		  	
		 }); 
		
	
	}); 
	
	$(function(){
		  $('.tabcontent > section').hide();
		  $('.tabnav a').click(function () {
		    $('.tabcontent > section').hide().filter(this.hash).fadeIn();
		    $('.tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		  });

</script>
</head>
<body>
<jsp:include page="m_home_nav.jsp" />
<a id="topBtn" href="#"><img alt="" src="resources/img/market/top.png" style="width: 60px; height: 60px;"> </a>
<div id="contents_con1">
	<!-- 소분류 카테고리 탭바 -->
	<div class="tab">
	    <ul class="tabnav">
	      <li><a href="#all">전체</a></li>
	      <li><a href="#1">건식</a></li>
	      <li><a href="#2">주식파우치</a></li>
	      <li><a href="#3">생식</a></li>
	      <li><a href="#4">분유/우유</a></li>
	    </ul>
	<div class="tabcontent">
		<!-- 탭 선택시 나오는 리스트 -->
		<!-- <div class="section_div" id="all"> -->
		 <section class="serv_list" id="all">
			  <div class="best_container">
			  	<div class="title">
			  		<h1>전체</h1>
			  	</div>
		  		<div class="search_fd">
					<input type="text" name="keyword" size="50" value="search">			
				</div>
			  	<div class="pdt_list">
			  		<div class="card">
			  			<a class="pdt-link" href="m_select_product.do">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="m_select_product.do">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="m_select_product.do">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  	</div>
			  </div>
		  </section>
		 <!-- </div> -->
		<!-- <div class="section_div" id="1"> -->
		 <section class="serv_list" id="1">
			  <div class="best_container">
			  	<div class="title">
			  		<h1>건식</h1>
			  	</div>
		  		<div class="search_fd">
					<input type="text" name="keyword" size="50" value="search">			
				</div>
			  	<div class="pdt_list">
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  	</div>
			  </div>
		  </section>
		<!--  </div> -->
		<!-- <div class="section_div" id="2"> -->
		 <section class="serv_list" id="2">
			  <div class="best_container">
			  	<div class="title">
			  		<h1>주식파우치</h1>
			  	</div>
		  		<div class="search_fd">
					<input type="text" name="keyword" size="50" value="search">			
				</div>
			  	<div class="pdt_list">
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>

			  	</div>
			  </div>
		  </section>
		<!-- </div> -->
		<!-- <div class="section_div" id="3"> -->
		 <section class="serv_list" id="3" >
			  <div class="best_container">
			  	<div class="title">
			  		<h1>생식</h1>
			  	</div>
		  		<div class="search_fd">
					<input type="text" name="keyword" size="50" value="search">			
				</div>
			  	<div class="pdt_list">
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  	</div>
			  </div>
		  </section>
		<!-- </div> -->
		<!-- <div class="section_div" id="4"> -->
		 <section class="serv_list" id="4" >
			  <div class="best_container">
			  	<div class="title">
			  		<h1>분유/우유</h1>
			  	</div>
		  		<div class="search_fd">
					<input type="text" name="keyword" size="50" value="search">			
				</div>
			  	<div class="pdt_list">
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
					  				<h2>아깽이 습식 사료 파우치 12개입</h2>
					  				<p class="pdt_info">대충설명</p>
					  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  		<div class="card">
			  			<a class="pdt-link" href="제품 상세">
				  			<div class="card_img">
				  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  			</div>
				  			<div class="card_text">
				  				<h2>아깽이 습식 사료 파우치 12개입</h2>
				  				<p class="pdt_info">대충설명</p>
				  				<h3 class="pdt_price">20,000 원</h3>
				  			</div>
			  			</a>
			  		</div>
			  	</div>
			  </div>
		  </section>
		<!-- </div> -->
	  </div>
  </div>
  </div>
</body>
	<footer>
		<div class="footer-container">
			<div class="footer-column">
				<h3>내옆펫</h3>
				<ul>
					<li><a href="#">e-mail : master@nexttopet.com</a></li>
					<li><a href="#">fax : 02-xxxx-xxxx</a></li>
					<li><a href="#">project_member : 김회철 모상인 문현지 김석중</a></li>
					<li><a href="#">address : 서울시 마포구 백범로 23, 3층</a></li>
				</ul>
			</div>
			<div class="footer-column">
				<h3>규정</h3>
				<ul>
					<li><a href="#">개인정보 처리 방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">Digital Marketing</a></li>
				</ul>
			</div>
			<div class="footer-column">
				<h3>소셜</h3>
				<ul class="social-media-icons">
					<li><a href="#">인스타<i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#">페이스북<i class="fab fa-twitter"></i></a></li>
					<li><a href="#">트위터<i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="bottom-bar">
			<p>&copy; 2023 Company 내옆펫. All rights reserved.</p>
		</div>
	</footer>
</html>