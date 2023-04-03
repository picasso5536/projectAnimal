<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내옆Pet 마켓 홈</title>
<link rel="stylesheet" href="resources/css/market_css/market_home.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

	// 수정 후 배너
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() >= 99999999999) {
				$('#header').addClass('sticky');
			} else if ($(this).scrollTop() <= 99999999999) {
				$('#header').removeClass('sticky');
			}
		});

		$('nav ul li').mouseover(function() {
			$('.navMenu.over').removeClass('over');
			$(this).children(":first").addClass('over');
		});
		$('nav ul li').mouseout(function() {
			$('.navMenu.over').removeClass('over');
		});
	
	
	 	var idx_lgth = $("#visual>div").length;
		var srt = 1;
		
		$("section>a").click(function(){
			var idx = $(this).index();
			srt = idx;
			$(this).addClass('on').siblings().removeClass('on');
			$("#visual>div").eq(idx).addClass('on').siblings().removeClass('on');
		});
		
	setInterval(AutoRun, 3000);
		
	function AutoRun(){
		if(srt == idx_lgth){
				srt = 0;	
		}
		$("section>a").eq(srt).addClass('on').siblings().removeClass('on');
		$("#visual>div").eq(srt).addClass('on').siblings().removeClass('on');
		srt++;	
	} 
	});
	
		$(window).scroll(function() {
		    if ($(this).scrollTop() > 250) { //250 넘으면 버튼이 보인다
		      $('#topBtn2').fadeIn();
		    } else {
		      $('#topBtn2').fadeOut();
		    }
		  }); // 버튼 클릭시 
		  $("#topBtn2").click(function() { 
		  	$('html, body').animate({ scrollTop : 0 // 0 이동 
		  	}, 500); // 속도 400 
		  	return false; 
		  	
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
	<a id="topBtn2" href="#"><img alt="" src="resources/img/market/top.png" style="width: 60px; height: 60px;"> </a>
	    <div id="visual">     
             <div class="on"><a class="on1 active" href="https://www.youtube.com/watch?v=uuevTJE-RLw">
             <img src="resources/img/market/banner1.jpg" alt="1" width="2550px" height="950px">
             </a></div>
             <div><a class="on1" href="https://www.youtube.com/watch?v=uuevTJE-RLw">
             <img src="resources/img/market/banner2.jpg" alt="2" width="2550px" height="950px">
             </a></div>
             <div><a class="on1" href="https://www.youtube.com/watch?v=uuevTJE-RLw">
             <img src="resources/img/market/banner3.jpg" alt="3" width="2550px" height="950px">
             </a></div>
             
        <section id="control">
            <a class="on1" href="#"></a>
            <a class="on1" href="#"></a>
            <a class="on1" href="#"></a>
        </section>
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
		  			<a class="review-link" href="m_select_product.do#review">
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
						</div>
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
	<jsp:include page="m_footer.jsp" />
</html>