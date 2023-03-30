<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 쿠폰함</title>
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

.couponlist {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.coupon {
	width: 500px;
	margin: 20px;
	border-radius: 10px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
	transition: transform 0.3s ease-in-out;
	overflow: hidden;
	padding: 10px;
	box-sizing: border-box;
}

.coupon:hover {
	transform: translateY(-10px);
}

.coupon h3 {
	font-size: 1.2rem;
	font-weight: 600;
  margin-top: 5px;
	margin-bottom: 10px;
}

.coupon p {
	font-size: 1rem;
	color: #666;
	margin-bottom: 10px;
}

.coupon .works {
	font-size: 1rem;
	font-weight: 600;
	color: #008000;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">쿠폰함</span>
			<div class="border">
				<div class="couponlist">
					<div class="coupon">
						<h3>쿠폰명</h3>
						<p class="works">쿠폰효과</p>
					</div>
					<div class="coupon">
						<h3>쿠폰명</h3>
						<p class="works">쿠폰효과</p>
					</div>
					<div class="coupon">
						<h3>쿠폰명</h3>
						<p class="works">쿠폰효과</p>
					</div>
					<div class="coupon">
						<h3>쿠폰명</h3>
						<p class="works">쿠폰효과</p>
					</div>
					<div class="coupon">
						<h3>쿠폰명</h3>
						<p class="works">쿠폰효과</p>
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