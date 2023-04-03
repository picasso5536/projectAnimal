<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 리뷰 내역</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1;
}

.border {
	position: relative;
	display: flex;
	flex-direction: column;
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
	padding-bottom: 150px;
	flex-direction: column;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 1500px;
	min-width: 1300px;
}

.review {
	background-color: #fff;
	border: 1px solid #dcdcdc;
	min-width: 600px;
	max-width: 1000px;
	border-radius: 8px;
	padding: 20px;
	margin-bottom: 20px;
	margin-top: 40px;
	box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1);
}

.rev_header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px;
}

.rev_header h3 {
	font-size: 1.5rem;
	font-weight: 600;
	margin: 0;
	color: #212121;
	letter-spacing: 1px;
}

.rev_body p {
	margin: 0;
	font-size: 1rem;
	line-height: 1.5;
	color: #4f4f4f;
}

.rev_body p:not(:last-child) {
	margin-bottom: 15px;
}

.rev_img {
	font-weight: 600;
	color: #212121;
	font-size: 1.125rem;
	margin-bottom: 5px;
}

.rev_star {
	color: #777;
	font-size: 0.875rem;
	margin-bottom: 5px;
}

button {
	background-color: #3498db;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 4px;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">마켓</span> <span id="sep2">></span> <span
				id="page_sKate">리뷰 내역</span>
			<div class="border">
				<div class="review">
					<div class="rev_header">
						<h3>리뷰 제목</h3>
						<div class="rev_action">
						</div>
					</div>
					<div class="rev_body">
						<p class="rev_img">리뷰이미지</p>
						<p class="rev_info">리뷰내용</p>
						<p class="rev_star">별점: ★★★★☆</p>
					</div>
				</div>
				<div class="review">
					<div class="rev_header">
						<h3>리뷰 제목</h3>
						<div class="rev_action">
						</div>
					</div>
					<div class="rev_body">
						<p class="rev_img">리뷰이미지</p>
						<p class="rev_info">리뷰내용</p>
						<p class="rev_star">별점: ★★★★☆</p>
					</div>
				</div>
				<div class="review">
					<div class="rev_header">
						<h3>리뷰 제목</h3>
						<div class="rev_action">
						</div>
					</div>
					<div class="rev_body">
						<p class="rev_img">리뷰이미지</p>
						<p class="rev_info">리뷰내용</p>
						<p class="rev_star">별점: ★★★★☆</p>
					</div>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="../../footer.jsp"/>
	</footer>
</body>
</html>