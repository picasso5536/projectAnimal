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
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}

	});
</script>
</head>
<body>
	<header>
		<div id="header">
			<div class="header_inner">
				<div class="logo">
					<h1 id="logo1">
						<a href="">로고</a>
					</h1>
				</div>
				<nav>
					<ul>
						<!-- 여기에 묶여야 하는데 왜 안되냐-->
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
				<img src="http://placehold.it/300x100" style="width: 100%">
			</div>
			<div class="mySlides fade">
				<div class="numbertext">2 / 3</div>
				<img src="http://placehold.it/300x100" style="width: 100%">
			</div>
			<div class="mySlides fade">
				<div class="numbertext">3 / 3</div>
				<img src="http://placehold.it/300x100" style="width: 100%">
			</div>
		</div>
		<br>
		<div style="text-align: center">
			<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
		</div>
		<!--여기까지 이미지스크린 -->
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
		<br><br><br><br><br><br><br> <br><br><br><br><br>
	</main>
	<footer>
		<p>&copy; 2023 내옆Pet</p>
		<p>&copy; 내옆Pet 회철</p>
		<p>&copy; 내옆Pet 석중</p>
		<p>&copy; 내옆Pet 현지</p>
		<p>&copy; 내옆Pet 상인</p>
	</footer>

</body>
</html>