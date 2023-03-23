<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

@font-face {
	font-family: 'NanumSquareRound';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
/* css파일 만들기 */
	/* banner */
	.contents{
		width: auto; 
		height: 900px; 
		border: 1px solid black;
	}
	.banner {
		/* position: relative; */
		width: auto; 
		height: 900px; 
		top: 50px;  
		margin:0 auto; 
		padding:0; 
		overflow: hidden;
	}
	
	.banner #banner_list {
	/* position: absolute; */ 
	margin: 0px; 
	padding:0; 
	list-style: none; 
	}
	.banner #banner_list li {
	float: left; 
	width: auto; 
	height: 900px; 
	margin:0; 
	padding:0;
	}
	
	/* 강아지 고양이 버튼 */
	
	.type_div {
		clear:left;
		/* 보더 사이즈 물어보기 */
		width: 205px;
		height: auto;
		border: 2px solid #666666;
		margin: 20px auto;
		text-align: center;
		padding: 3px;
		border-radius: 1em;
		
		
	}
	.type_btn {
		font-family: 'NanumSquareRound';
		clear:left;
		color: #ffffff;
		background-color: #8F90A4;
		font-size: 24px;
		font-weight: 800px;
		border-radius:0.5em;
		padding:5px 15px;
		border: 1px solid #666666;
	}
	
	/* 하단 카테고리 탭 */
	html,body {
		width:100%;
	}
	body,div,ul,li {
		margin:0; 
		padding:0;
	}
	ul,li {
		list-style: none;
	}
	
	/*tab css*/
	.tab {
		float:left; 
		width:100%; 
		height:290px;
		margin: 0 auto;
	}
	.tabnav {
		font-size:0; 
		width:100%; 
		border:1px solid #ddd;
	}
	.tabnav li{
		display: inline-block; 
		width:19.94%;  
		height:46px; 
		text-align:center; 
		border-right:1px solid #ddd;
	}
	.tabnav li a:before{
		content:""; 
		position:absolute; 
		left:0; 
		top:0px; 
		width:100%; 
		height:3px; 
	}
	.tabnav li a.active:before{
		background:#8F90A4;
	}
	.tabnav li a.active {
		border-bottom:1px solid #fff;
	}
	.tabnav li a {
		position:relative; 
		display:block; 
		background: #fff; 
		color: #8F90A4; 
		padding:0 30px; 
		line-height:46px; 
		text-decoration:none; 
		font-size:16px;
		}
		
	.tabnav li a:hover,
	.tabnav li a.active {
		background:#8F90A4; 
		color:#fff; 
	}
	
	.tabcontent {
		padding: 20px; 
		width:auto;
		height:244px; 
		border:1px solid #ddd; 
		border-top:none;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
	<div class="contents">
		<div class="banner">
			<ul id="banner_list">
				<li><img src="resources/img/market/banner1.jpg" width="1900px" height="900px"></li>
				<li><img src="resources/img/market/banner2.jpg" width="1900x" height="900px"></li>
				<li><img src="resources/img/market/banner3.jpg" width="1900px" height="900px"></li>
			</ul>
		</div>
	</div>
	<div class="type_div">
		<button class="type_btn" id="dog_btn" >강아지</button>
		<button class="type_btn" id="cat_btn">고양이</button>
	</div>
	<div class="tab">
	    <ul class="tabnav">
	      <li><a href="#food">식품</a></li>
	      <li><a href="#snack">간식</a></li>
	      <li><a href="#toy">장난감</a></li>
	      <li><a href="#house">하우스</a></li>
	      <li><a href="#clothes">의류</a></li>
	    </ul>
    <div class="tabcontent">
      <div id="food">식품 버튼들
      <!-- DB연동시 카테고리 소분류 가져와 버튼생성 -->
      	<span class="foodbtns">
      		<a href="소분류 경로">
		      	<img src="resources/images/market/img_icon.png" style="width: 35px"><label>전체</label>
      		</a>
      	</span>
      	<span class="foodbtns">
	      	<button id ="food1">건식</button>
      	</span>
      	<span class="foodbtns">
	      	<button id ="food1">주식파우치</button>
      	</span>
      	<span class="foodbtns">
	      	<button id ="food1">생식</button>
      	</span>
      	<span class="foodbtns">
	      	<button id ="food1">분유/우유</button>
      	</span>
      </div>
      <div id="snack">간식 버튼들</div>
      <div id="toy">장난감 버튼들</div>
      <div id="house">집 버튼들</div>
      <div id="clothes">옷 버튼들</div>
    </div>
  </div><!--tab-->
</body>
</html>