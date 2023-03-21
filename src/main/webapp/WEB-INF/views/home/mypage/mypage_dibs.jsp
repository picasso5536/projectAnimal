<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 찜</title>
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

.wishlist {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
}

.card {
  width: 200px;
  margin: 20px;
  border-radius: 10px;
  box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease-in-out;
  overflow: hidden;
  padding: 10px;
  box-sizing: border-box;
}

.card:hover {
  transform: translateY(-10px);
}

.card img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.card .product-info {
  padding: 10px 0;
}

.card h3 {
  font-size: 1.2rem;
  font-weight: 600;
  margin-bottom: 10px;
}

.card p {
  font-size: 1rem;
  color: #666;
  margin-bottom: 10px;
}

.card .price {
  font-size: 1.2rem;
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
				id="page_sKate">찜콩</span>
			<div class="border">
				<div class="wishlist">
					<div class="card">
						<img src="상품1이미지주소" alt="상품1이미지설명">
						<h3>상품1이름</h3>
						<p class="price">상품1가격</p>
					</div>
					<div class="card">
						<img src="상품2이미지주소" alt="상품2이미지설명">
						<h3>상품2이름</h3>
						<p class="price">상품2가격</p>
					</div>
					<div class="card">
						<img src="상품3이미지주소" alt="상품3이미지설명">
						<h3>상품3이름</h3>
						<p class="price">상품3가격</p>
					</div>

					<div class="card">
						<img src="상품3이미지주소" alt="상품3이미지설명">
						<h3>상품3이름</h3>
						<p class="price">상품3가격</p>
					</div>
					<div class="card">
						<img src="상품3이미지주소" alt="상품3이미지설명">
						<h3>상품3이름</h3>
						<p class="price">상품3가격</p>
					</div>
					<div class="card">
						<img src="상품3이미지주소" alt="상품3이미지설명">
						<h3>상품3이름</h3>
						<p class="price">상품3가격</p>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>
</html>