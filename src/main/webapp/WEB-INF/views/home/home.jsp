<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
/* 전체 폰트 설정 */
body {
	font-family: Arial, sans-serif;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1;
}
/* 네비게이션 스타일 */
nav {
	width: 200px;
	line-height: 25px;
	color: #ffffff;
	padding: 10px;
	float: left;
	margin-top: 10px;
}

/* 리스트 스타일 */
ul {
	list-style: none;
	margin: 0;
	padding: 0;
	padding-left: 10px;
	display: flex;
	flex-direction: column;
}

/* 리스트 아이템 스타일 */
li {
	margin-bottom: 5px;
}

/* 네비게이션 링크 스타일 */
nav a {
	color: #000000;
	text-decoration: none;
	padding: 5px;
}

/* 네비게이션 링크 호버 스타일 */
nav a:hover {
	background-color: #006666;
}

/* 활성화된 링크 스타일 */
.active {
	font-weight: bold;
	border-bottom: 3px solid #FFA500;
}

/* 들여쓰기 */
ul ul {
	margin-left: 10px;
}

#logo {
	font-size: 50px;
}

#m_nickname {
	font-size: 30px;
}
/*---------------footer---------------*/
footer {
	background-color: #fff;
	font-family: Arial, sans-serif;
	font-size: 14px;
	color: #333;
	padding: 30px 0;
	position: relative;
	bottom: 0;
	width: 100%;
	box-sizing: border-box;
}

.footer-container {
	max-width: 1100px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
}

.footer-column {
	width: 30%;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.footer-column h3 {
	font-size: 18px;
	margin-bottom: 20px;
}

.footer-column ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

.footer-column ul li {
	margin-bottom: 10px;
}

.footer-column ul li a {
	color: #333;
	text-decoration: none;
}

.social-media-icons {
	display: flex;
}

.social-media-icons li {
	margin-right: 10px;
}

.social-media-icons li:last-child {
	margin-right: 0;
}

.social-media-icons a {
	color: #333;
	text-decoration: none;
}

.social-media-icons a i {
	font-size: 18px;
	transition: all 0.3s ease-in-out;
}

.social-media-icons a:hover i {
	transform: translateY(-5px);
}

.bottom-bar {
	background-color: #333;
	color: #fff;
	font-size: 12px;
	text-align: center;
	padding: 10px;
}
</style>
</head>
<body>
	<header>
		<a href="home.do"><img src="resources/img/logo_img.png"></a>
	</header>
	<nav>
		<ul class="menu">
			<li><a href="market.do"> 마켓 </a></li>
			<li><a href="community.do"> 소통 </a></li>
			<li><a href="memorial.do"> 추모 </a></li>
			<li><a href="login.do"> 로그인 </a></li>
			<li><a href="my_info.do"> 마이페이지 </a></li>
		</ul>
	</nav>
	<section>
		<article>
			<header>
				<h1></h1>
			</header>
		</article>
		<article>
			<header>
				<h1></h1>
			</header>
		</article>
	</section>
	<footer>
		<div class="footer-container">
			<div class="footer-column">
				<h3>내옆펫</h3>
				<ul>
					<li><a href="#">e-mail : master@nexttopet.com</a></li>
					<li><a href="#">fax : 02-xxxx-xxxx</a></li>
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
					<li><a href="https://www.instagram.com/mosi_n17/ ">인스타<i class="fab fa-facebook-f"></i></a></li>
					<li><a href="https://www.facebook.com/profile.php?id=100089533267077">페이스북<i class="fab fa-twitter"></i></a></li>
					<li><a href="https://www.youtube.com/channel/UClMcwyqQFHjkackxovU59ng">유튜브<i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="bottom-bar">
			<p>&copy; 2023 Company 내옆펫. All rights reserved.</p>
		</div>
	</footer>
</body>
</html>