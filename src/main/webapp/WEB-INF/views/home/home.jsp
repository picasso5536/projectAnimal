<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습하자</title>
<!-- 왜 안먹는거지; -->
<style type="text/css">
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css);
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 구글CDN -->
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
from {opacity: .4
}
to {
opacity: 1}
}
@media only screen and ( max-width: 300px) {
.text {
font-size: 11px}
}
   /* 모달페이지) */
.modal {
display: none; /* 기본적으로 숨김 */
position: fixed; 
z-index: 999999; 
left: 0;
top: 0;
width: 100%; 
height: 100%; 
overflow: auto; 
background-color: rgb(0,0,0); 
background-color: rgba(0,0,0,0.5); 
}
        /* Modal Content/Box */
.modal-content {
position:fixed;
background-color: #fff;
margin: 3% ; 
padding: 20px;
border: 1px solid #888;
height: 80%;
width: 30%;                        
}

</style>
<script type="text/javascript">
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
		/*이미지 슬라이드*/
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1;
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 3000); // 1000 = 1초
		}
	});
	/* 네비게이션 */
  jQuery(document).ready(function() {
  $('#myModal').show();
  setTimeout(function() { $('#myModal').hide();}, 100000);//1000=1초..해당 시간이 지나면 자동으로 닫힘. 요 부분을 빼면 계속 떠있음.
  });
  //팝업 Close 기능
  function close_pop(flag) {
  $('#myModal').hide();
  };
  
  
  /* 모달창 오픈시 스크롤 막기 */
  function openModal(){
  const modal = document.getElementById('.modal-content');
  modal-content.classList.add('s_show');
}
function closeModal(){
  const modal = document.getElementById('.modal-content');
  modal-content.classList.remove('s_show');
}
</script>

<!-- </head> -->
<body>
<div id="myModal" class="modal" >
<div class="modal-content" style="background-image: url('#');">
<p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">이벤트</span></b></span></p>
<!-- 안에 들어갈 내용 -->
 <a href="#"><img  src="resources/img/karina_01.jpg" style="overflow: auto; "></a>  <!-- 사진파일 700 - 890 --> <br><br>
   



<div style="cursor:pointer; background-color:#DDDDDD; text-align: center; padding-bottom: 5px; padding-top: 5px;" onClick="close_pop();">
<span class="pop_bt" style="font-size: 13pt;" >닫기</span> 

</div> 
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
							<div class="navMenu">마켓</div>
						</li>
						<li>
							<div class="navMenu">소통</div>
						</li>
						<li>
							<div class="navMenu">병원</div>
						</li>
						<li>
							<div class="navMenu">추모</div>
						</li>
						<li>
							<div class="navMenu">소개</div>
						</li>
					</ul>
				</nav> 
			</div>
			<div class="navMenu"></div>
			<input type="checkbox" id="active"> <label for="active"
				class="menu-btn1"><span></span></label> <label for="active"
				class="close"></label>
			<div class="wrapper">
				<ul class="ul1">
					<li class="li1"><a href="#">Home</a></li>
					<li class="li1"><a href="#">About</a></li>
					<li class="li1"><a href="#">Services</a></li>
					<li class="li1"><a href="#">Gallery</a></li>
				</ul>
			</div>
		</div> 
	</header>
	<main> 
		<div class="slideshow-container">
			<div class="mySlides fade">
				<div class="numbertext">1 / 3</div>
				<img src="resources/img/maa.jpg" style=" width: 2550px; height: 950px ">
			</div>
			<div class="mySlides fade">
				<div class="numbertext">2 / 3</div>
				<img src="resources/img/moo.jpg" style=" width: 2550px; height: 950px">
			</div>
			<div class="mySlides fade">
				<div class="numbertext">3 / 3</div>
				<img src="resources/img/soo.jpg" style=" width: 2550px; height: 950px">
			</div>
		</div>
		<br>
		<div style="text-align: center">
			<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
		</div>
		<!--여기까지 이미지스크린 -->
		
		<br><br><br><br><br><br><br><br>
		<!-- 왼쪽에서 오른쪽  -->
	
		<div class="container_03">
		  <div class="box box1" id="box1" style=" background-image:url('https://via.placeholder.com/150');" >
		    <h2 class="box h2_01" >Market</h2>
		    <div class="box4" style="background-image: url('');">
		    	<P style="font-size: 60px">인기상품 List</P>
		    	<pre style="font-size: 30px; padding-top: 50px;">01.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">02.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">03.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">04.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">05.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    </div>
		  </div>
		  <div class="box box2" style="background-image: url('https://via.placeholder.com/150');">
		  </div>
		
		  <div class="box box3" style="background-image: url('https://via.placeholder.com/150');">
		  </div>
		</div>
		<br><br><br><br><br><br><br><br><br><br>
		<!-- 오른쪽에서 왼쪽  -->
		
			<div class="container_04">
		
		  <div class="box box7" style="background-image: url('https://via.placeholder.com/150');">
		  </div>

		  <div class="box box6" style="background-image: url('https://via.placeholder.com/150');">
		  </div>
		
		  
		    <div class="box box5" id="box5" style=" background-image:url('https://via.placeholder.com/150');" >
		    <h2 class="box h2_02" >Community</h2>
		    <div class="box8" style="background-image: url('');">
		    	<P style="font-size: 60px" >인기 글 List</P>
		    	<pre style="font-size: 30px; padding-top: 50px;">01.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">02.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">03.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">04.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    	<pre style="font-size: 30px; padding-top: 10px;">05.&ensp;&ensp;&nbsp;<a href="#" style="color: black">강아지옷</a></pre>
		    </div>
		  </div>
		</div>
		
		<br><br><br><br><br><br><br><br>
		
		<!--여기부터 배너  -->
		 <div class="wrap" style="margin-top:ㄱ 50px; ">
		 <!-- 1번  -->
		 <div class="right">
		 <!-- 이미 바디 영역에서 2분할이 진행이 되어서 
		 그안에서 중복으로 계속 사영 분할화면 응용가능  -->
		 <div>
  		 <div class="tile">
  		  
		  <a href="https://m.pet-friends.co.kr/main/tab/2">
		  <img src="resources/img/market.jpg"/>
		  </a>
		  <div class="text">
		  <h1>마켓</h1>
		  <h2 class="animate-text">고양이,강아지,기타</h2>
		  <p class="animate-text">여러 용품을 합리적인 가격에 구입할수 있습니다.</p>
		  </div>
		  </div>
		   <!-- 2번  -->
		  <div class="tile"> 
		  <a href="https://www.vipah.co.kr/kr/index.php">
		  <img src="resources/img/ha.jpg"/>
		  </a>
		  <div class="text">
		  <h1>병원</h1>
		  <h2 class="animate-text">내 반려동물에 꼭 필요한 병원정도</h2>
		  <p class="animate-text">리뷰도 확인할수있어 신뢰도 증가</p>
		  </div>
		  </div>
		</div>
  		  <div>
  		   <!-- 3번  -->
		  <div class="tile"> 
		  <a href="https://www.dcinside.com/">
		  <img src="resources/img/Comm.jpg"/>
		  </a>
		  <div class="text">
		  <h1>소통</h1>
		  <h2 class="animate-text">반려동물에 대한 수많은 정보를 얻어가세요</h2>
		  <p class="animate-text">소통부분 1위에 빛나는 내옆펫</p>
		  </div>
		 </div>
		  <!-- 2번  -->
		  <div class="tile"> 
		  <a href="https://www.osupet.com/">
		  <img src="resources/img/Remem.jpg"/>
		  </a>
		  <div class="text">
		  <h1>추모</h1>
		  <h2 class="animate-text">반려동물에 마지막을 기억해주세요</h2>
		  <p class="animate-text"></p>
		  </div>
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
			 <p style="font-size: 20px">　마켓,소통,병원,추모</p>
			</div> 
		  </div>
		</div>
		<!-- 여기까지가 배너  -->
		
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<!-- 로고같은 이미지?  -->
		<div class="knockout"><a href="#" rel="Like cool shit? visit my site">내옆Pet</a>
		</div>
		
		
		
	</main>
	<!-- 여기부터 푸터 -->
	 <footer>
		<p>&copy; 2023 내옆Pet&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대표전호:010-1111-2222 </p>
		<p>&copy; 내옆Pet 회철</p>
		<p>&copy; 내옆Pet 석중</p>
		<p>&copy; 내옆Pet 현지</p>
		<p>&copy; 내옆Pet 상인</p>
		<a href="https://www.facebook.com/profile.php?id=100089533267077" > <!-- 페이스북  -->
		<img src="https://img.icons8.com/ios-glyphs/48/ffffff/facebook-new.png" />
		</a>
		<a href="https://www.instagram.com/mosi_n17/" > <!-- 인스타  -->
        <img src="https://img.icons8.com/material-outlined/48/ffffff/instagram-new--v1.png" />
        </a>
        <a href="https://www.youtube.com/channel/UClMcwyqQFHjkackxovU59ng" > <!-- 유튜브  -->
        <img src="https://img.icons8.com/material-rounded/48/ffffff/youtube-play.png" />
        </a>
	</footer> 
	</body>
</html>