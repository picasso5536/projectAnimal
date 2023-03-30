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
			<li><a href="admin_main.do"> 관리자페이지 </a></li>
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
		<jsp:include page="../footer.jsp"/>
	</footer>
</body>
</html>