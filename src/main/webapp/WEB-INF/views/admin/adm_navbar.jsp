<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import
	url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css)
	;
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

nav>ul>li a:hover {
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
</head>
<body>
	<header>
		<a href="admin_main.do"><img src="resources/img/logo_img.png"></a>
	</header>
	<nav>
		<ul>
			<li class="large"><img
				src="resources/img/home/my_account_img.png"><a>회원 정보 관리</a></li>
			<ul>
				<li><a href="admin_mbr_info.do">고객 정보 관리</a></li>
				<li><a href="admin_mbr_admin.do">관리자 계정 관리</a></li>
				<li><a href="admin_mbr_point.do">포인트 관리</a></li>
				<li><a href="admin_mbr_message.do">메시지 관리</a></li>
			</ul>
			<br>
			<li class="large"><img
				src="resources/img/home/my_memorial_img.png"><a href="#">통합
					관리</a></li>
			<ul>
				<li><a href="admin_intg_terms.do">약관 관리</a></li>
				<li><a href="admin_intg_banner.do">배너 관리</a></li>
				<li><a href="admin_intg_kate.do">카테고리 관리</a></li>
				<li><a href="admin_intg_announce.do">공지사항 관리</a></li>
				<li><a href="admin_intg_inquire.do">문의사항 관리</a></li>
				<li><a href="admin_intg_report.do">신고/정지 관리</a></li>
			</ul>
			<br>
			<li class="large"><img
				src="resources/img/home/my_market_img.png"><a href="#">마켓
					관리</a></li>
			<ul>
				<li><a href="admin_mkt_product.do">상품 관리</a></li>
				<li><a href="admin_mkt_inven.do">재고 관리</a></li>
				<li><a href="admin_mkt_order.do">주문 관리</a></li>
				<li><a href="admin_mkt_coupon.do">쿠폰 관리</a></li>
				<li><a href="admin_mkt_review.do">리뷰 관리</a></li>
			</ul>
			<br>
			<li class="large"><img
				src="resources/img/home/my_community_img.png"><a href="#">커뮤니티
					관리</a></li>
			<ul>
				<li><a href="admin_comm_post.do">게시글 관리</a></li>
				<li><a href="admin_comm_comment.do">댓글 관리</a></li>
			</ul>
		</ul>
	</nav>
</body>
</html>