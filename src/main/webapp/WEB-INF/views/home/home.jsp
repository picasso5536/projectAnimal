<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%-- <script src="${path}/resources/js/tt.js"></script> --%>
<link href="${path}/resources/css/h_menu.css" rel="stylesheet" />
<style type="text/css">
header {
	margin: 0px;
	border: 3px solid black;
}

#logo {
	display: inline;
	font-size: 20px;
	align-content: left;
}

input {
	width: 30%;
	margin-left: 5%;
}

main {
	margin-bottom: 25%;
	border: 2px solid black;
}

section, aside {
	float: left;
	font-size: 2em;
	font-weight: bolder;
}

section {
	width: 50%;
}

aside {
	width: 30%;
	background-color: rgb(136, 136, 136);
	margin-top: 1.5%;
}

footer {
	clear: both;
	height : 300px;
	border: 3px solid black;
}
</style>
</head>
<body>
	<header>
		<h1 id="logo">로고</h1>s
	</header>
	<nav>
		<ul class="menu">
			<li><a href="market.do"> 마켓 </a></li>
			<li><a href="community.do"> 소통 </a></li>
			<li><a href="hospital.do"> 병원 </a></li>
			<li><a href="memorial.do"> 추모 </a></li>
		</ul>
	</nav>
	<section>
		섹션1
		<article>
			<header>
				<h1>article1-1</h1>
			</header>
		</article>
		<article>
			<header>
				<h1>article1-2</h1>
			</header>
		</article>
	</section>
	<section>
		섹션2
		<article>
			<header>
				<h1>article2-1</h1>
			</header>
		</article>
		<article>
			<header>
				<h1>article2-2</h1>
			</header>
		</article>
		<article>
			<header>
				<h1>article2-3</h1>
			</header>
		</article>
	</section>
	<footer> foooooooter입니다. </footer>
</body>
</html>