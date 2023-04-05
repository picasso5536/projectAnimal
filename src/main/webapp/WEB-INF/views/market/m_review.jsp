<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/market_css/market_review.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
			var i = 0;
			$("#more_rbtn").click(function() {
				if(i%2 == 0){
					$("#more_rbtn").text("접기 △")
				}else{
					$("#more_rbtn").text("리뷰 더보기 ▽")
				}
				++i;
			});
	
	});
	  var like_b = 0;
	  $(".like_btn").click(function() {
		  if(dddip%2 == 0){
			$("#dip").attr("src", "resources/img/market/heart (2).png")			  
		  }else{
			$("#dip").attr("src", "resources/img/market/heart.png")			  
		  }
		  ++dddip;
	});
</script>
</head>
<body>
	<div>
		<section class="serv_list">
			  <div class="rv_container">
			  	<div class="title">
			  		<h1>리뷰 별점</h1>
			  	</div>
			  	<div class="top_star">
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
			  	<hr class="long1">
			  	<div class="review_list">
			  		<div class="card">
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
				  		<div class="review_img">
				  			<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  		</div>
			  			</div>
		  				<div class="proprofile_box">
				  			<div class="card_text">
				  				<h3 class="review_title">애옹ㅇ이가 매우좋아함</h3>
				  				<p class="review_info">상품이름 뭐 박스 진짜박스</p>
				  				<p class="review_info">박스가 진짜 박슨데 애옹쓰가 너무 좋아해요 마약박스임미다.</p>
			  			</div>
			  	</div>
						<div class="like_box">
							<button type="button" class="like_btn" onclick="like_up()">
								<img class="like_img" alt="" src="resources/img/market/like.png">
								<span class="like_cnt">0</span>
							</button>
							<button class="like_btn">
								<img class="like_img" alt="" src="resources/img/market/dislike.png">
								<span>0</span>
							</button>
						</div>
			  	</div>
			  		<div class="card">
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
				  		<div class="review_img">
				  			<img alt="" src="resources/img/market/img_icon.png" style="width: 200px">
				  		</div>
			  			</div>
		  				<div class="proprofile_box">
				  			<div class="card_text">
				  				<h3 class="review_title">애옹ㅇ이가 매우좋아함</h3>
				  				<p class="review_info">상품이름 뭐 박스 진짜박스</p>
				  				<p class="review_info">박스가 진짜 박슨데 애옹쓰가 너무 좋아해요 마약박스임미다.</p>
			  				</div>
			  			</div>
						<div class="like_box">
							<button type="button" class="like_btn" onclick="like_up()">
								<img class="like_img" alt="" src="resources/img/market/like.png">
								<span class="like_cnt">0</span>
							</button>
							<button class="like_btn">
								<img class="like_img" alt="" src="resources/img/market/dislike.png">
								<span>0</span>
							</button>
						</div>
			  		</div>
			  	</div>
			  </div>
		 </section>
	</div>
	<div class="more_btn_con">
		<!-- <button id="more_btn">후기 더보기 ▽ </button> -->
			<div class="more_qbtn_con">
				페이징
						<%-- 이전 --%>
							    <c:choose>
							    	<c:when test="${paging.beginBlock > paging.pagePerBlock }">
							    		<a href="board_list.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a>
							    	</c:when>
							    </c:choose>
							    
							    <!-- 블록안에 들어간 페이지번호들 -->
								<c:forEach begin="${paging.beginBlock}" end="${paging.endBlock}" step="1" var="k">
									<%-- 현재 페이지는 링크X, 나머지는 해당 페이지로 링크 처리 --%>
									<c:if test="${k==paging.nowPage}">
										${k}
									</c:if>
									<c:if test="${k!=paging.nowPage}">
										<a href="board_list.do?cPage=${k}">${k}</a>
									</c:if>
								</c:forEach>
								
								<!-- 다음 -->
								<c:choose>
							    	<c:when test="${paging.endBlock < paging.totalPage }">
							    		<a href="bbs_list.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a>
							    	</c:when>
							    </c:choose>
		</div>
	</div>
</body>
</html>