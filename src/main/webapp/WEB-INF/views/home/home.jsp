<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<!-- 왜 안먹는거지; -->
<style type="text/css">
<<<<<<< HEAD
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css);
</style>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script src="${path}/resources/js/home.js?after"></script>
<link href="${path}/resources/css/home.css?after" rel="stylesheet" />
<style type="text/css">
@
-webkit-keyframes fade {
	from {opacity: .4}
to {
opacity: 1
}
}
@keyframes fade {
from {opacity: .4}
to {
opacity: 1}
}
@media only screen and ( max-width: 300px) {
.text {
font-size: 11px}
}
   /* 모달페이지) */
   .check-icon {
  width: 16px;
  height: 8px;
  border: 2px solid red;
  margin-bottom: 4px;
}
.check-icon--apply-origin {
  border: 2px solid red;
  border-top: 0;
  border-right: 0;
  transform: rotate(-45deg);
  transform-origin: 25% 25%;
}
</style>
<script type="text/javascript">
/* 네비게이션바 */
$(document).ready(function(){
	$('#Market').click(function(){
		var offset = $('#Market01').offset(); //선택한 태그의 위치를 반환
            //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 
        $('html,body').animate({scrollTop : offset.top}, 500);
	});
});
$(document).ready(function(){
	$('#Community').click(function(){
		var offset = $('#Market01').offset(); 
        $('html').animate({scrollTop : offset.top}, 500);
	});
});
$(document).ready(function(){
	$('#hospital').click(function(){
		var offset = $('#Market01').offset(); 
        $('html').animate({scrollTop : offset.top}, 500);
	});
});
$(document).ready(function(){
	$('#Remembrance').click(function(){
		var offset = $('#Market01').offset();
        $('html').animate({scrollTop : offset.top}, 500);
	});
});
/* 네비게이션 이동후 해당 카테 이동  */
function market() {
    var result = confirm("마켓창으로 이동 하시겠습니까?");
    if(result){
    location.href="market.do";
    }else {
    }
}	
/* 내정보 이동 */
function info() {
	var result = confirm("로그인 한거 확인하기 위해서 인터셉트이용하는게 좋을듯");
	if(result){
		location.href="my_info.do";
	}else {
	}
}
/* 로그인창으로 이동 */
function login() {
	var result = confirm("로그인창으로 이동 하시겠습니까?");
	if(result){
		location.href="login.do";
	}else {
	}
}
function admin_main() {
	var result = confirm("관리자창으로 이동 하시겠습니까?");
	if(result){
		location.href="admin_main.do";
	}else {
	}
}
/* 연습 */	
	
	
/* 끝 */
 	/*이미지 슬라이드 여기는 쫌더 공부하자 */
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
	/* 이미지 슬라이더 연습  */
	
	/* 모달창 */
  jQuery(document).ready(function() {
  $('#myModal').show();
  setTimeout(function() { $('#myModal').hide();}, 100000);//1000=1초..해당 시간이 지나면 자동으로 닫힘. 요 부분을 빼면 계속 떠있음.
  });
  //팝업 Close 기능
  function close_pop(flag) {
  $('#myModal').hide();
  };
</script>
<body  style="overflow-x: hidden">
<div id="myModal" class="modal" >
<!-- 모달창  -->
<div class="modal-content" style="background-image: url('resources/img/karina_01.jpg');">
<p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">이벤트</span></b></span></p>
<!-- 안에 들어갈 내용  사진파일 700 - 890 -->
 <a href="#"></a>

</div>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br>
<div style=" background-color:rgba(0,0,0,0); padding-left:450px;   padding-top: 5px;" onClick="close_pop();">
&ensp;&ensp;&ensp;&ensp;
<span  style="font-size: 14pt; font-weight:bold; cursor:pointer;">닫기</span> 
</div>
</div>
<!-- 모달은 여기까지 -->
 <header>
		<div id="header">
			<div class="header_inner">
				<div class="logo">
					<h1 id="logo1">
						<a><img src="resources/img/petpet.png"></a><!-- 여기가 문제인데 ㅜㅜ  -->
					</h1>
				</div>
				<nav>
					<ul>
						<li>
							<div class="navMenu" id="Market" >마켓</div>
						</li>
						<li>
							<div class="navMenu" id="Community">소통</div>
						</li>
						<li>
							<div class="navMenu" onclick="info()">내정보</div> <!-- 인터셉터 사용해서 걸러주기 로그인해야만 접속가능 -->
						</li>
						<li>
							<div class="navMenu" onclick="login()">로그인</div>
						</li>
						<li>
							<div class="navMenu" onclick="admin_main()">관리자페이지</div>
						</li>
					</ul>
<!-- 					<div class="navMenu"></div> -->
					<input type="checkbox" id="active"> <label for="active"
						class="menu-btn1"><span></span></label> <label for="active"
						class="close"></label>
					<div class="wrapper">
						<ul class="ul1">
						<!-- <button type="button" onclick="market()">market</button> -->
							<li class="li1"><a href="market.do">market</a></li>
							<li class="li1"><a href="#">Community</a></li>
						</ul>
					</div>
					
				</nav> 
			</div>
		</div> 
	</header> 
	<main> 
	<!-- 이미지스크린 -->
     <div id="visual">     
             <div class="on"><a class="on1 active" href="#">
             <img src="resources/img/maa.jpg" alt="1" width="2550px" height="950px">
             </a></div>
             <div><a class="on1" href="#">
             <img src="resources/img/moo.jpg" alt="2" width="2550px" height="950px">
             </a></div>
             <div><a class="on1" href="#">
             <img src="resources/img/soo.jpg" alt="3" width="2550px" height="950px">
             </a></div>
             
        <section id="control">
            <a class="on1" href="#"></a>  <!-- href 를 통해서 선택자를 줄수있게하자 인덱스 -->
            <a class="on1" href="#"></a>
            <a class="on1" href="#"></a>
        </section>
 		 </div> 
		<!--여기까지 이미지스크린 -->
		<br><br><br>
		<br><br><br>
		<br><br><br>
		<!-- 왼쪽에서 오른쪽  -->
		<div class="container_03">
		  <div class="box box1" id="box1" style=" background-color: #F5EBE0;" >
		    <h2 style="font-size: 50px; text-align: center; color: black; position: absolute; top: 200px; left: 300px">Market</h2>
		    <div class="box4" style="background-color: #FEFCF3;"><br>
		    	<!-- <P style="font-size: 60px; font-family: 'NanumSquareRound';">인기상품 List</P><br><br> -->
				<div>
				   <h3 style="font-size: 50px; font-family:'NanumSquareRound';">인기상품 list</h3><br><!-- 너는 왜 한줄로 안만들어지는거야? -->
				  <!--  <p style="width: 45px; height: 50px; margin-left: 500px; font-size: 40px; font-weight: bold; display: inline; ">01.</p><a href="#" >강아지옷</a> -->
				    <ol class="c2">
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">디자인</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">수정이 시급</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">팀원들 의견 </li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">들어보</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">자</li></a>
				    </ol>
				</div>				
		  </div>
		  </div>
		  <div class="box box2" style="background-color: #F5EBE0; ">
		</div>
		  <div class="box box3" style="background-color: #F5EBE0;">
		 </div>
		</div>
		<br><br><br><br><br><br><br><br><br><br>
		<!-- 오른쪽에서 왼쪽  -->
			<div class="container_04">
		  <div class="box box7" style="background-color: #FFE7CC;">
		  </div>
		  <div class="box box6" style="background-color: #FFE7CC;">
		  </div>
		    <div class="box box5" id="box5" style=" background-color: #FFE7CC;" >
		    <h2 style="font-size: 50px; text-align: center; color: black; position: absolute; top: 200px; left: 300px">Community</h2>
		    <div class="box8" style="background-color: #F8CBA6;"><br>
		    	<P style="font-size: 60px; font-family: 'NanumSquareRound';" >인기 글 List</P><br>
		    	  <ol class="c2">
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">아메리카노</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">아메리카노</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">아메리카노</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">피아노</li></a>
				        <a href="" style="text-decoration-line: none; color:#3C4048; "><li style="font-size: 40px;">옷</li></a>
				    </ol>
		    </div>
		  </div>
		</div>
		<br><br><br><br><br><br><br><br>
		 <!--여기부터 배너  -->
		 <div class="wrap" style="margin-top:50px; ">
		 <!-- 1번  -->
		 <div class="right">
		 <!-- 이미 바디 영역에서 2분할이 진행이 되어서 
		 그안에서 중복으로 계속 사영 분할화면 응용가능  -->
		 <div>
  		 <div class="tile" id="Market01">
		  <!--  <a href="https://m.pet-friends.co.kr/main/tab/2"> -->
		  <img src="resources/img/market.jpg"/>
		  <!-- </a> -->
		  <div class="text">
		  <h1>마켓</h1>
		  <h2 class="animate-text">고양이,강아지,기타</h2>
		  <p class="animate-text">여러 용품을 합리적인 가격에 구입할수 있습니다.</p>
		  </div>
		  <button type="button" onclick="market()" class="w-btn-outline w-btn-indigo-outline" 
		   style="margin-top: 340px; margin-left: 220px;">
		  이동</button>
		  </div>
		   <!-- 2번  -->
		  <div class="tile" id="hospital01"> 
		  <img src="resources/img/Comm.jpg"/>
		  <div class="text">
		  <h1>소통</h1>
		  <h2 class="animate-text">반려동물에 대한 수많은 정보를 얻어가세요</h2>
		  <p class="animate-text">소통부분 1위에 빛나는 내옆펫</p>
		  </div>
		  <button type="button" onclick="#" class="w-btn-outline w-btn-indigo-outline" 
		   style="margin-top: 340px; margin-left: 220px;">
		  이동</button>
		  </div>
		</div>
		 </div>
		 <div class="left">
		   <div class="hello" >
		   <h3 style="color: #E90064">내옆Pet</h3>
		   <br><br>
			내옆Pet에서 한 번에<br>
			통합 마케팅 캠페인을<br>
			즐겨보세요.<br><br>
			 <p style="font-size: 20px">　마켓,소통</p>
			</div> 
		  </div>
		</div>
		<!-- 여기까지가 배너  -->
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<!-- 로고같은 이미지?  -->
		<div class="knockout"><a href="#" rel="Like cool shit? visit my site">내옆Pet</a>
		</div>
	</main>
	<!-- 여기부터 푸터 -->
	<footer>
		<div class="footer-container">
			<div class="footer-column">
				<h3>내옆펫</h3>
				<ul>
					<li><a href="#">e-mail : master@nexttopet.com</a></li>
					<li><a href="#">fax : 02-1243-2283</a></li>
					<li><a href="#">project_member : 김회철 모상인 문현지</a></li>
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
					<li><a href="https://www.instagram.com/mosi_n17/"><img style="width: 30px;" src="resources/img/Instagram.jpg"> <i class="fab fa-facebook-f"></i></a></li>
					<li><a href="https://www.facebook.com/profile.php?id=100089533267077"><img style="width: 30px;" src="resources/img/Facebook.jpg"> <i class="fab fa-twitter"></i></a></li>
					<li><a href="https://www.youtube.com/channel/UClMcwyqQFHjkackxovU59ng"><img style="width: 30px;" src="resources/img/Twitter.jpg"> <i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="bottom-bar">
			<p>&copy; 2023 Company 내옆펫. All rights reserved.</p>
		</div>
	</footer>
	</body>
</html>