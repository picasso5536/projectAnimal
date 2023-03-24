<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/market_css/market_home.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
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
		var $banner = $(".banner").find("#banner_list");

		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 3000);//다음 이미지로 롤링 애니메이션 할 시간차
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//alert(bannerHeight);
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
		
	
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
<jsp:include page="m_home_test.jsp" />
	<a id="topBtn" href="#"><img alt="" src="resources/img/market/top.png" style="width: 60px; height: 60px;"> </a>
	<div class="contents">
		<div class="banner">
			<ul id="banner_list">
				<li><img src="resources/img/market/banner1.jpg" width="1905px" height="900px"></li>
				<li><img src="resources/img/market/banner2.jpg" width="1905x" height="900px"></li>
				<li><img src="resources/img/market/banner3.jpg" width="1905px" height="900px"></li>
			</ul>
		</div>
	</div>
	<!-- 대분류 반려동문 종류 선택 버튼-->
	<div id="contents_con">
	<div class="type_div">
		<button class="type_btn" id="dog_btn" >강아지</button>
		<button class="type_btn" id="cat_btn">고양이</button>
	</div>
	<!-- 중분류 카테고리 탭바 -->
	<div class="tab">
	    <ul class="tabnav">
	      <li><a href="#food">식품</a></li>
	      <li><a href="#snack">간식</a></li>
	      <li><a href="#toy">장난감</a></li>
	      <li><a href="#house">하우스</a></li>
	      <li><a href="#clothes">의류</a></li>
	    </ul>
    <div class="tabcontent">
      <div id="food">
      <!-- DB연동시 카테고리 소분류 가져와 버튼생성 -->
      	<span class="cate_btns">
      		<a class="cate-link" onclick="" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>전체</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>건식</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>주식파우치</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>생식</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>분유/우유</label>
      		</a>
      	</span>
      </div>
      <div id="snack">
     	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>전체</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>간식파우치</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>간식캔</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>파우더</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>트릿</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>져키</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>음료</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="m_pdt_list.do">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>동결/건조</label>
      		</a>
      	</span>
       
      </div>
      <div id="toy">
		<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>전체</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>낚시/풀</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>터널/텐트</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>인형/쿠션</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>자동 장난감</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>캣닢/캣글라스</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>리필</label>
      		</a>
      	</span>
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>공/트릿볼</label>
      		</a>
      	</span>
      </div>
      <div id="house">
      	<span class="cate_btns">
      		<a class="cate-link" href="소분류 경로">
		      	<img src="resources/img/market/img_icon.png" style="width: 90px"><label>전체</label>
      		</a>
      	</span>
      </div>
      <div id="clothes">옷 버튼들</div>
    </div>
  </div>
  
<!-- 추천상품 -->
	  <section class="serv_list">
		  <div class="best_container">
		  	<div class="title">
		  		<h1>추천 상품</h1>
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
		  	</div>
		  </div>
	  </section>
	  
	  <!-- 리뷰 -->
	  
	  <section class="serv_list">
		  <div class="rv_container">
		  	<div class="title">
		  		<h1>리뷰 별점</h1>
		  	</div>
		  	<div class="review_list">
		  		<div class="card">
		  			<a class="review-link" href="제품 상세">
			  			<div class="review_img">
			  				<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
			  			</div>
	  					<div class="proprofile_box">
	  						<img class="profile_img" id="p4" alt="" src="resources/img/market/profile_test.jpg">
	  						<span class="profile_info">
	  							<span class="member_nickname" id="mb_nickname">무년</span>
	  							<span class="pet" id="pet_info">이름 | 나이 | 몸무게</span>
	  					<div class="star">
							<div class="stars_img">
								<div class="star-fill space-x-2 text-lg" :style="{width: 4%}">
									<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
								</div>
								<div class="star-base space-x-2 text-lg">
									<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
								</div>
							</div>
							<span class="stars_score">4.6</span>
						</div>
						</span>
		  			<div class="card_text">
			  				<h3 class="review_title">아깽이 습식 사료 파우치 12개입</h3>
			  				<p class="review_info">대충설명</p>
			  				<p class="review_info">대충설명</p>
		  			</div>
		  			</a>
		  				<span class="like_box">
	  						<button class="like_btn">
	  							<img class="like_img" alt="" src="resources/img/market/like.png">
	  							0
	  						</button>
	  						<button class="like_btn">
	  							<img class="like_img" alt="" src="resources/img/market/dislike.png">
	  							0
	  						</button>
	  					</span>
		  		</div>
		  	</div>
		  </div>
	  </section>
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