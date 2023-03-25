<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/market_css/market_nav.css"
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
<body class="hero-anime">
	<!-- start-header -->
	<div class="navigation-wrap bg-light">
		<nav class="navbar">
			<a class="navbar-brand" href="market.do">
				<img class="logoimg"src="resources/img/market/mypetlogo.jpg" alt="">
			</a>
			
			<!-- 네비게이션 바 ================================================== -->
			<div class="navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-ul">
						<li class="nav-item"><a class="nav-link" href="m_pdt_list.do">식품</a></li>
						<li class="nav-item"><a class="nav-link" href="m_pdt_list.do">간식</a></li>
						<li class="nav-item"><a class="nav-link" href="m_pdt_list.do">장난감</a></li>
						<li class="nav-item"><a class="nav-link" href="m_pdt_list.do">하우스</a></li>
						<li class="nav-item"><a class="nav-link" href="m_pdt_list.do">의류</a></li>
						<li class="nav-item"><a class="nav-link" href="login.do">Login</a></li>
						<li class="nbsp">
						<div class="menu" id="hamberger">
							<span class="top h-icon"></span> 
							<span class="middle h-icon"></span>
							<span class="bottom h-icon"></span>
						</div>
						<div class="overlay" id="overlay">
							<div class="overlay-menu" id="overlay-menu">
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
						</li>					
					</ul>
			</div>
		</nav>
	</div>
</body>
</html>