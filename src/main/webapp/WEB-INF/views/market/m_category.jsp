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

<script type="text/javascript">
	$(document).ready(function() {

		
	
	}); 
	
	$(function(){
		  $('.tabcontent > div').hide();
		  $('.tabnav a').click(function () {
		    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
		    $('.tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		  });

</script>
</head>
<body>
<jsp:include page="m_home_nav.jsp" />

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
		<!-- 추천상품 -->
		<div class="section_div" id="all">
		 <section class="serv_list" >
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
		 </div>
		<div class="section_div" id="1">
		 <section class="serv_list" >
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
		 </div>
		<div class="section_div" id="2">
		 <section class="serv_list" >
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
		</div>
		<div class="section_div" id="3">
		 <section class="serv_list" >
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
		</div>
		<div class="section_div" id="4">
		 <section class="serv_list" >
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
		</div>
	  </div>
  </div>
</body>
</html>