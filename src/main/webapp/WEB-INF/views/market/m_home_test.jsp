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
			<a class="navbar-brand" href="home.do"><img class="logoimg"
				src="resources/img/market/mypetlogo.jpg" alt=""></a>
		<div class="navbar-collapse" id="navbarSupportedContent">
			<div class="search_fd">
				<input type="text" name="keyword" size="50" value="search">			
			</div>
			<div class="menu" id="hamberger">
				<span class="top h-icon"></span> 
				<span class="middle h-icon"></span>
				<span class="bottom h-icon"></span>
			</div>

				<div class="overlay" id="overlay">
					<div class="overlay-menu">
						<ul class="hambergerul">
							<li class="hli"><a class="halink" href="#">Home</a></li>
							<li class="hli"><a class="halink" href="#">About</a></li>
							<li class="hli"><a class="halink" href="#">News</a></li>
							<li class="hli"><a class="halink" href="#">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>

</body>
</html>