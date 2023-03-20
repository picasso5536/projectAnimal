<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
@import
	url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css);
/* 전체 폰트 설정 */
body {
	font-family: 'NanumSquareRound';
	display: flex;
	flex-direction: column;
	min-height: 100vh;
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
	font-size: 17px;
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

nav > ul > li a:hover {
  cursor: default;
  background-color: white;
}


/* 들여쓰기 */
ul ul {
	margin-left: 25px;
}

#logo {
	font-size: 50px;
}

#m_nickname {
	font-size: 30px;
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
	font-size: 20px;
	font-weight: bold;
	margin-left: 10px;
}

#page_sKate {
	font-size: 18px;
	font-weight: bold;
	margin-left: 10px;
}

.large {
	font-weight: bold;
	font-size: 22px;
}
</style>
<header>
	<a href="home.do"><img src="resources/img/logo_img.png"></a> <span id="m_nickname">회원닉네임</span>님
</header>
<nav>
	<ul>
		<li class="large"><img
			src="resources/img/home/my_account_img.png"><a>계정관리</a></li>
		<ul>
			<li><a href="my_info.do">내 정보</a></li>
			<li><a href="my_point.do">포인트관리</a></li>
			<li><a href="my_pet.do">펫 정보</a></li>
			<li><a href="my_message.do">받은 메시지</a></li>
			<li><a href="my_inquire.do">1:1문의내역</a></li>
			<li><a href="my_banned.do">제재 내역</a></li>
		</ul>
		<br>
		<li class="large"><img src="resources/img/home/my_market_img.png"><a
			href="#">마켓</a></li>
		<ul>
			<li><a href="#">장바구니</a></li>
			<li><a href="#">주문/배송/픽업조회</a></li>
			<li><a href="#">취소/교환/환불내역</a></li>
			<li><a href="#">찜</a></li>
			<li><a href="#">쿠폰함</a></li>
			<li><a href="#">리뷰내역</a></li>
		</ul>
		<br>
		<li class="large"><img
			src="resources/img/home/my_community_img.png"><a href="#">커뮤니티</a></li>
		<ul>
			<li><a href="#">게시글</a></li>
			<li><a href="#">댓글/답글</a></li>
		</ul>
		<br>
		<li class="large"><img
			src="resources/img/home/my_memorial_img.png"><a href="#">추모</a></li>
		<ul>
			<li><a href="#">게시글 관리</a></li>
		</ul>
	</ul>
</nav>