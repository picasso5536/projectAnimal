<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	background-color: #008080;
	color: #FFFFFF;
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
	color: #FFFFFF;
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
/*////////////////////////////////////*/
.profile {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 30px;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	margin-bottom: 20px;
	margin-left: 230px;
	margin-top: 15px;
	height: auto;
	min-height: 100%;
	padding-bottom: 300px;
}

.profile-picture img {
	width: 150px;
	height: 150px;
	object-fit: cover;
	border-radius: 50%;
	border: 5px solid #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.profile-info h2 {
	margin-top: 0;
	font-size: 24px;
}

.profile-info p {
	margin: 10px 0;
	font-size: 18px;
}

#profile-info p a {
	color: #337ab7;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
}

#page_info {
	font-size: 27px;
	font-weight: bold;
	margin-left: 50px;
}

#sep1 {
	color: #d3d3d3;
	font-size: 30px;
	margin-left: 10px;
}

#sep2 {
	color: #d3d3d3;
	font-size: 22px;
	margin-left: 10px;
}

#page_mKate {
	font-size: 18px;
	font-weight: bold;
	margin-left: 10px;
}

#page_sKate {
	font-size: 18px;
	font-weight: bold;
	margin-left: 10px;
}
/*//////////////////////////*/
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
<main>
		<header>
			<span id="logo">로고</span> <span id="m_nickname">회원닉네임</span>님
		</header>
		<nav>
			<ul>
				<li><img src="#"><a href="#" class="active">계정관리</a>
					<ul>
						<li><a href="#">내 정보</a></li>
						<li><a href="#">포인트관리</a></li>
						<li><a href="#">펫 정보</a></li>
						<li><a href="#">받은 메시지</a></li>
						<li><a href="#">1:1문의내역</a></li>
						<li><a href="#">제재내역</a></li>
					</ul></li>
				<br>
				<li><img src="#"><a href="#">마켓</a></li>
				<ul>
					<li><a href="#">장바구니</a></li>
					<li><a href="#">주문/배송/픽업조회</a></li>
					<li><a href="#">취소/교환/환불내역</a></li>
					<li><a href="#">찜</a></li>
					<li><a href="#">쿠폰함</a></li>
					<li><a href="#">리뷰내역</a></li>
				</ul>
				<br>
				<li><img src="#"><a href="#">커뮤니티</a></li>
				<ul>
					<li><a href="#">게시글</a></li>
					<li><a href="#">댓글/답글</a></li>
				</ul>
				<br>
				<li><img src="#"><a href="#">추모</a></li>
				<ul>
					<li><a href="#">게시글 관리</a></li>
				</ul>
			</ul>
		</nav>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">회원정보</span>
			<div class="profile">
				<div class="profile-picture">
					<img src="your-image-url.jpg" alt="profile picture">
				</div>
				<div class="profile-info">
					<h2>이름</h2>
					<p>
						이메일: <a href="mailto:youremail@example.com">youremail@example.com</a>
					</p>
					<p>핸드폰번호: 010-3175-3920</p>
					<p>생년월일: 1999년 04월 12일</p>
					<p>성별: 남자</p>
					<p>닉네임: 김큐티달콤보이</p>
					<p>주소: 인천광역시 연수구</p>
					<p>접속일: 2023년 3월 15일</p>
					<p>보유 포인트: 110,000</p>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<div class="footer-container">
			<div class="footer-column">
				<h3>내옆펫</h3>
				<ul>
					<li><a href="#">e-mail : master@nexttopet.com</a></li>
					<li><a href="#">fax : 02-xxxx-xxxx</a></li>
					<li><a href="#">project_member : 김회철 모상인 문현지 김석중</a></li>
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
					<li><a href="#">인스타<i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#">페이스북<i class="fab fa-twitter"></i></a></li>
					<li><a href="#">트위터<i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="bottom-bar">
			<p>&copy; 2023 Company 내옆펫. All rights reserved.</p>
		</div>
	</footer>

</body>
</html>