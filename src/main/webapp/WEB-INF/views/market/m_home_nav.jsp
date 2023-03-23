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
			<a class="navbar-brand" href="market.do"><img class="logoimg"
				src="resources/img/market/mypetlogo.jpg" alt=""></a>

			<!-- 네비게이션 바 ================================================== -->
			<div class="navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-ul">
						<li class="nav-item"><a class="nav-link" href="#">식품</a></li>
						<li class="nav-item"><a class="nav-link" href="#">간식</a></li>
						<li class="nav-item"><a class="nav-link" href="#">장난감</a></li>
						<li class="nav-item"><a class="nav-link" href="#">하우스</a></li>
						<li class="nav-item"><a class="nav-link" href="#">의류</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
						<li class="nbsp">
						<div class="menu" id="hamberger">
							<span class="top h-icon"></span> 
							<span class="middle h-icon"></span>
							<span class="bottom h-icon"></span>
						</div>
						<div class="overlay" id="overlay">
							<div class="overlay-menu" id="overlay-menu">
									<ul class="hambergerul">
										<li class="hli"><a class="halink" href="#">Home</a></li>
										<li class="hli"><a class="halink" href="#">About</a></li>
										<li class="hli"><a class="halink" href="#">News</a></li>
										<li class="hli"><a class="halink" href="#">Contact</a></li>
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