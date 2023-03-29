<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/market_css/market_home_test.css"
	type="text/css" />
<meta charset="UTF-8">
<title>Market Home</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#hamberger').click(function() {
			$(this).toggleClass('active');
			$('#overlay').toggleClass('open');
		});
	

	});
</script>
</head>
<body>
<body class="hero-anime">
	<!-- start-header -->
	<div class="navigation-wrap bg-light">
		<nav class="navbar">
			<a class="navbar-brand" href="home.do"><img class="logoimg" src="resources/img/market/mypetlogo.jpg" alt=""></a>
			
		<div class="navbar-collapse1" id="navbarSupportedContent">
			<div class="search_fd">
				<input id="s_fd" type="text" name="keyword" size="40" value="search">
				<span class="main_login"></span>		
			</div>
			<div class="menu" id="hamberger">
				<span class="top h-icon"></span> 
				<span class="middle h-icon"></span>
				<span class="bottom h-icon"></span>
			</div>

				<div class="overlay" id="overlay">
					<div class="overlay-menu">
						<ul class="hambergerul">
							<li class="hli"><a class="halink" href="my_info.do">마이페이지</a></li>
							<li class="hli"><a class="halink" href="my_cartlist.do">장바구니</a></li>
							<li class="hli"><a class="halink" href="my_info.do">주문/배송/픽업조회</a></li>
							<li class="hli"><a class="halink" href="my_dibs.do">찜</a></li>
							<li class="hli"><a class="halink" href="my_coupon.do">쿠폰함</a></li>
							<li class="hli"><a class="halink" href="my_inquire.do">1:1문의내역</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>

</body>
</html>