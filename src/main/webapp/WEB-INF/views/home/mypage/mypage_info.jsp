<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 내 정보</title>
<style type="text/css">
@import
	url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css);
/* 전체 폰트 설정 */
body {
	font-family: 'NanumSquareRound';
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
	width: 300px;
	height: 300px;
	object-fit: cover;
	border: 5px solid #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
}

.profile-picture {
	display: inline-block;
	vertical-align: top;
	margin-right: 20px;
	margin-top: 40px;
	width: 300px;
	height: 300px;
}


.profile-info {
	display: inline-block;
	margin-top: 40px;
}

#profile_w {
	margin-left: 70px;
	margin-top: 10px;
}

#info_1 {
	margin-left: 40px;
	display: inline-block;
	vertical-align: top;
}

#info_2 {
	margin-left: 50px;
	display: inline-block;
	vertical-align: top;
}

.profile-info h2 {
	margin-top: 0;
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
	max-width: 1500px;
	min-width: 1300px;
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

.profile-container {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.profile-buttons {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	margin-left: 70px;
	margin-top: -15px;
}

.profile-button {
	margin: 0 5px;
	padding: 5px 10px;
	background-color: #FFDAAD;
	border: none;
	border-radius: 3px;
	font-size: 14px;
	cursor: pointer;
	border-radius: 30px;
}

.profile-button:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">내 정보</span>
			<div class="profile">
				<div id="profile_w">
					<div class="profile-picture">
						<img src="resources/img/home/my_profile_img.png">
					</div>
					<div class="profile-info">
						<div id="info_1">
							<p>이름 : 김회철</p>
							<p>이메일 : picasso5536@gmail.com</p>
							<p>핸드폰번호 : 010-1234-5678</p>
							<p>생년월일 : 2000년 1월 1일</p>
							<p>성별 : 남자</p>
						</div>
						<div id="info_2">
							<p>닉네임 : 회철짱짱123</p>
							<p>주소 : 인천광역시 연수구</p>
							<p>접속일 : 2023년 3월 20일</p>
							<p>로그인 플랫폼 : 카카오</p>
							<p>보유 포인트 : 120,000</p>
						</div>
					</div>
					<div class="profile-buttons">
						<button class="profile-button">프로필 사진 변경</button>
						<button class="profile-button">회원 정보 수정</button>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>
</html>