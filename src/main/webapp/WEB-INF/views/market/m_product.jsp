<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내옆Pet 상품상세</title>
<link rel="stylesheet" href="resources/css/market_css/market_pdt_one.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	/* ratingToPercent() {
	    const score = +this.restaurant.averageScore * 20;
	    return score + 1.5;
	} */
	
	$(document).ready(function() { // 보이기 | 숨기기
		var i = 0;
		$(".show_btn").click(function() {
			if(i%2 == 0){
				$(".show_btn").text("상세정보 접기")
			}else{
				$(".show_btn").text("상세정보 펼치기")
			}
			++i;
		});
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
		  
		  // 하트 클릭시 하트 이미지 ㅂ변경
		  // dips테이블의
		  var dddip = 0;
		  $("#dipdip").click(function() {
			  if(dddip%2 == 0){
				$("#dip").attr("src", "resources/img/market/heart (2).png")
				
			  }else{
				$("#dip").attr("src", "resources/img/market/heart.png")			  
			  }
			  ++dddip;
		});
		  
		  // 상세정보
			  var pdt_info = "${pdtvo.pdt_info}";
			  var info_img = pdt_info.split(", ");
			  console.log(info_img);
			  
			  $.each(info_img, function(index, value) {
			    $("#slide_img").append("<img src='resources/img/upload/"+value+"'>");
			  });
		  
			  
	});
			var sale_price;
			var amount;
		
			function init () {
				sale_price = document.form.sale_price.value;
			    amount = document.form.amount.value;
			    document.form.sum.value = sale_price;
			    change();
			}
		
			function add_num () {
			    hm = document.form.amount;
			    sum = document.form.sum;
			    hm.value ++ ;
		
			    sum.value = parseInt(hm.value) * sale_price;
			}
		
			function del () {
			    hm = document.form.amount;
			    sum = document.form.sum;
			        if (hm.value > 1) {
			            hm.value -- ;
			            sum.value = parseInt(hm.value) * sale_price;
			        }
			}
		
			function change () {
			    hm = document.form.amount;
			    sum = document.form.sum;
		
			        if (hm.value < 0) {
			            hm.value = 0;
			        }
			    sum.value = parseInt(hm.value) * sale_price;
			} 
			
			function m_product_ok() {
				var result = confirm("주문/결제 창으로 이동하시겠습니까");
				location.href="test.do";
			}
</script>
</head>
<body onload="init();">
	<jsp:include page="m_home_nav.jsp" />
	<a id="topBtn" href="#"><img alt="" src="resources/img/market/top.png" style="width: 60px; height: 60px;"> </a>
	<nav class="path">
		<span class="path_top"><a class="path_link" href="market.do?kate_idx=${topvo.kate_idx}">${topvo.kate_name}&nbsp;</a></span>
		<span id="sep1">|</span>
		<span class="path_middle"><a class="path_link" href="m_pdt_list.do?kate_idx=${midvo.kate_idx}">&nbsp;${midvo.kate_name}</a></span>
		<span id="sep2">&gt;</span>
		<span class="path_bottom"><a class="path_link" href="m_pdt_list.do?kate_idx=${bottvo.kate_idx}">${bottvo.kate_name}</a></span>	
	</nav>
	<hr>
	<div class="pdt_Top">
		<section class="pdt_img_section">
			<div class="pdt_img">
				<img alt="" src="resources/img/upload/${pdtvo.pdt_img}" style="width: 650px">
			</div>
		</section>
		<section class="pdt_info_section">
			<div class="pdt_info">
				<span class="box">${topvo.kate_name}</span>
				<span class="line">
					<span class="pdt_corp">${corpvo.corp_name} &gt; 
					<span class="pdt_idx"><small>상품번호 ${pdtvo.pdt_idx}</small></span>
				</span>
				</span>
				<div class="pdt_box">
					<div class="pdt_name">
						<h2>${pdtvo.pdt_name}</h2>
					</div>
					<!-- <hr class="short"> -->
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
						<a id="review_link" href="#review">
							<span class="review_cnt">(30)</span>
						</a>
						<span class="pdt_dip">
							<a id="dipdip">
								<img class="dip" id="dip" src="resources/img/market/heart.png"><small style="color: red;">(${pdtvo.pdt_lcnt})</small>
							</a>
						</span>
					</div>
					<hr class="short">
					<div class="price">
						<span class="real_p">
							<h3>판매가</h3>
							<h2><fmt:formatNumber value="${pdtvo.pdt_saleprice}" pattern="#,##0"/> p</h2>
						</span>
						<span class="sale_p">
							<h3>할인가</h3>
							<h2><fmt:formatNumber value="${pdtvo.pdt_saleprice}" pattern="#,##0"/> P</h2><!-- <small style="color: red;">[50%]</small> -->
						</span>
						<hr class="short">						
						<span class="save_p">
							<h3>적립 포인트</h3>
							<h2><fmt:formatNumber value="${pdtvo.pdt_saleprice * 0.03}"  pattern="#,##0"/> p</h2>
							<%-- <c:set var="save_p_p" value="0.3" />
							<c:set var="savepoint" value="${pdtvo.pdt_saleprice * save_p_p}" /> --%>
						</span>
					</div>
					<div class="p_su">
						<h3>수량</h3>
						<form name="form">
							<input type="hidden" name="sale_price" value="${pdtvo.pdt_saleprice}">
							<input type="button" value="-" name="minus"  onclick="del()" style="margin-left: 15px">
							<input type="text" name="amount" value="1" size="3" onchange="change()">
							<input type="button" value="+" name="addd" onclick="add_num()">
						<!-- <input type="number" name="number" value="1" min="1"> -->
						<h3> 총 상품 가격</h3>
						<!-- <h2>15,000 p</h2> -->
						<input type="text" name="sum" value="${pdtvo.pdt_saleprice}" size="11" readonly><span>p</span>
						</form>
					</div>
					<div class="buttons">
						<button onclick="">장바구니</button>
						<button type="button" onclick="m_product_ok()">구매하기</button>
					</div>
				</div>
			</div>
		</section>
	</div>
	<hr>
	<div class="pdt_Middle">
		<details class="pdt_info_img">
    		<summary class="show_btn">상세정보 펼치기</summary>
			<div id="slide_img">
			</div>
		</details>
	</div>
	<hr>
	<div id="review">
		<jsp:include page="m_review.jsp" />
	</div>
	<hr>
	<jsp:include page="m_QnA.jsp" />
</body>
	<jsp:include page="m_footer.jsp" />
</html>