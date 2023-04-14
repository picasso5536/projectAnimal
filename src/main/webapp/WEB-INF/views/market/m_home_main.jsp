<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내옆Pet 마켓 홈</title>
<link rel="stylesheet" href="resources/css/market_css/market_home.css"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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

				$("section>a")
						.click(
								function() {
									var idx = $(this).index();
									srt = idx;
									$(this).addClass('on').siblings()
											.removeClass('on');
									$("#visual>div").eq(idx).addClass('on')
											.siblings().removeClass('on');
								});

				setInterval(AutoRun, 3000);

				function AutoRun() {
					if (srt == idx_lgth) {
						srt = 0;
					}
					$("section>a").eq(srt).addClass('on').siblings()
							.removeClass('on');
					$("#visual>div").eq(srt).addClass('on').siblings()
							.removeClass('on');
					srt++;
				}
				
				// 로드시 디폴트로 보여줄 화면
				$.ajax({
					url : "market_home_bottkatelist.do",
					method : "post",
					dataType: 'json',
					async : true,
					success : function(data) {
						$(data).each(function(k,v) {
							var bott_idx = v["bott_idx"];
							var bott_name = v["bott_name"];
							var bott_kind = v["bott_kind"];
							var bott_ref = v["bott_ref"];
								//$(".bottkate").attr("id", bott_kind);
								$(".bottkate").append("<span id='"+bott_kind+"' class='cate_btns'> <a class='cate-link' href='m_pdt_list.do?kate_idx="+bott_idx+"'><img src='resources/img/market/img_icon.png' style='width: 90px'><label>"+bott_name+"</label></a></span>");
						});
						$(function() {
							$('.tabcontent > div > span').hide();
							$('.tabnav a').click(function() {
								$('.tabcontent > div > span').hide().filter(this.hash).fadeIn();
								$('.tabnav a').removeClass('active');
								$(this).addClass('active');
								return false;
							}).filter(':eq(0)').click();
						});

					},
					error : function() {
						alert("top에러")
					}
				});
			
			});

	$(window).scroll(function() {
		if ($(this).scrollTop() > 250) { //250 넘으면 버튼이 보인다
			$('#topBtn2').fadeIn();
		} else {
			$('#topBtn2').fadeOut();
		}
	}); // 버튼 클릭시 
	$("#topBtn2").click(function() {
		$('html, body').animate({
			scrollTop : 0
		// 0 이동 
		}, 500); // 속도 400 
		return false;

	});

	function bottTabContent() {
		  $('.tabcontent > div > span').hide();
		  $('.tabnav a').click(function() {
		    $('.tabcontent > div > span').hide().filter(this.hash).fadeIn();
		    $('.tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		}
	

	// idx를 가지고 요청해 하위 카테고리리스트 검색 후 출력
	function get_kate_list(kate_idx) {
		console.log(kate_idx);
		$.ajax({
			url : "market_home_katelist.do",
			method : "post",
			dataType : 'json',
			data : {
				kate_idx : kate_idx								
			},
			async : true,
			success : function(data) {
				$(".tabnav").empty();
				$(data).each(
						function(k, v) {
							var kate_idx = v["kate_idx"];
							var kate_name = v["kate_name"];
							var kate_kind = v["kate_kind"];
							var kate_ref = v["kate_ref"];
							$(".tabnav").append("<li value='"+kate_idx+"'><a href='#"+kate_idx+"'>"+kate_name+"</a></li>");
							
						});
				// 탭 클릭시 이벤트 함수호출
				bottTabContent();
				
			},
			error : function() {
				alert("bott에러")
			}
		});
	}
	
</script>
</head>
<body>
	<jsp:include page="m_home_test.jsp" />
	<%-- <jsp:param name="mid_kateList" value="변수값" /> --%>
	<a id="topBtn2" href="#"><img alt=""
		src="resources/img/market/top.png" style="width: 60px; height: 60px;">
	</a>
	<div id="visual">
		<div class="on">
			<a class="on1 active"
				href="https://www.youtube.com/watch?v=uuevTJE-RLw"> <img
				src="resources/img/market/banner1.jpg" alt="1" width="2550px"
				height="950px">
			</a>
		</div>
		<div>
			<a class="on1" href="https://www.youtube.com/watch?v=uuevTJE-RLw">
				<img src="resources/img/market/banner2.jpg" alt="2" width="2550px"
				height="950px">
			</a>
		</div>
		<div>
			<a class="on1" href="https://www.youtube.com/watch?v=uuevTJE-RLw">
				<img src="resources/img/market/banner3.jpg" alt="3" width="2550px"
				height="950px">
			</a>
		</div>

		<section id="control">
			<a class="on1" href="#"></a> <a class="on1" href="#"></a> <a
				class="on1" href="#"></a>
		</section>
	</div>

	<!-- 대분류 반려동문 종류 선택 버튼-->
	<div id="contents_con">
		<div class="type_div">
			<c:forEach var="top" items="${toplist}">
				<button class="type_btn" value="${top.kate_idx}" onclick="get_kate_list(this.value)">${top.kate_name}</button>
			</c:forEach>
		</div>
		<!-- 중분류 카테고리 탭바 -->
		<div class="tab">
			<ul class="tabnav">
				<c:forEach var="midkate" items="${default_midlist}">
					<li value="${midkate.kate_idx}"><a href="#${midkate.kate_idx}">${midkate.kate_name}</a></li>
				</c:forEach>
			</ul>
			
			<div class="tabcontent">
				<div class="bottkate">
				</div>
			</div>
		</div>

		<!-- 추천상품 -->
		<section class="serv_list">
			<div class="best_container">
				<div class="title">
					<h1>추천 상품</h1>
				</div>
				<div class="pdt_list">
				<c:choose>
					<c:when test="${empty best_pdt_list}">
						<div class="card">
							<h3> 상품 준비 중입니다.</h3>
						</div>
					</c:when>
					<c:otherwise>
						<c:forEach var="best" items="${best_pdt_list}">
							<div class="card">
								<a class="pdt-link" href="m_select_product.do?pdt_idx=${best.pdt_idx}">
									<div class="card_img">
										<img alt="" src="resources/img/upload/${best.pdt_img}" style="width: 300px; height: 300px;">
									</div>
									<div class="card_text">
										<h2>${best.pdt_name}</h2>
										<h3 class="pdt_price" style="font-size: 22px"><fmt:formatNumber value="${best.pdt_saleprice}" pattern="#,##0"/> P</h3>
									</div>
								</a>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
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
								<img alt="" src="resources/img/market/img_icon.png"
									style="width: 200px">
							</div>
							<div class="proprofile_box">
								<img class="profile_img" id="p4" alt=""
									src="resources/img/market/profile_test.jpg"> <span
									class="profile_info"> <span class="member_nickname"
									id="mb_nickname">무년</span> <span class="pet" id="pet_info">이름
										| 나이 | 몸무게</span>
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
						</a> <span class="like_box">
							<button class="like_btn">
								<img class="like_img" alt="" src="resources/img/market/like.png">
								0
							</button>
							<button class="like_btn">
								<img class="like_img" alt=""
									src="resources/img/market/dislike.png"> 0
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