<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 장바구니</title>
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

#cart-items {
	display: flex;
	flex-direction: column;
	align-items: center;
	position: relative;
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
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 1500px;
	min-width: 1300px;
}

.cols {
	width: 1020px;
	margin-bottom: 20px;
	text-align: left;
}

.cols>thead>tr>th{
	background-color: #fff;
	color: #777;
	font-weight: bold;
}

.cols>thead>tr>th:first-child {
	padding-left: 20px;
	width: 140px;
}

.cols>thead>tr>th:nth-child(2) {
	width: 190px;
}

.cols>thead>tr>th:nth-child(3) {
	padding-left: 10px;
	width: 170px;
}

.cols>thead>tr>th:nth-child(5) {
	padding-left: \60px;
	width: 190px;
}

.cart-item {
	display: flex;
	flex-direction: row; /* 가로로 정렬 */
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
	padding: 10px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	width: 1000px;
	margin: 0 10px 20px;
	background-color: #fff;
}

.cart-item:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.cart-item img {
	height: 100px;
	width: 120px;
	background-color: black;
	object-fit: cover;
	margin: 5px 40px 5px 5px;
	border-radius: 5px;
}

.cart-item-info {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	padding: 10px;
	width: 100%;
	height: 100%;
}

#total {
	color: red;
}

.product-code {
	font-size: 14px;
	color: #666;
	margin-right: 20px;
}

.product-name {
	font-size: 18px;
	font-weight: bold;
	margin: 0;
	color: #333;
	margin-right: 20px;
}

.product-price {
	font-size: 14px;
	color: #666;
	margin-right: 20px;
}

.quantity {
	display: flex;
	align-items: center;
	margin-right: 20px;
}

.quantity input {
	width: 40px;
	height: 30px;
	border: 1px solid #ddd;
	text-align: center;
	margin: 0 10px;
	font-size: 16px;
	background-color: #f7f7f7;
	border-radius: 5px;
}

.quantity input:focus {
	outline: none;
}

.total {
	font-size: 18px;
	font-weight: bold;
	margin-top: 10px;
	text-align: right;
}

.quantity button {
	background-color: transparent;
	border: none;
	outline: none;
	font-size: 20px;
	color: #999;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: #4CAF50;
}
</style>
<script type="text/javascript">
//카드 내 수량 조절 버튼에 이벤트 리스너 등록
const minusBtns = document.querySelectorAll(".minus-btn");
const plusBtns = document.querySelectorAll(".plus-btn");
const quantities = document.querySelectorAll(".quantity input");

for (let i = 0; i < minusBtns.length; i++) {
  minusBtns[i].addEventListener("click", () => {
    if (quantities[i].value > 1) {
      quantities[i].value--;
      updateTotal(i);
    }
  });
}

for (let i = 0; i < plusBtns.length; i++) {
  plusBtns[i].addEventListener("click", () => {
    quantities[i].value++;
    updateTotal(i);
  });
}

// 총 금액 업데이트 함수
function updateTotal(index) {
  const productPrice = document.querySelectorAll(".product-price")[index].textContent;
  const quantity = quantities[index].value;
  const total = productPrice * quantity;
  const totalElements = document.querySelectorAll(".total");
  totalElements[index].textContent = total;
}

</script>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">마켓</span> <span id="sep2">></span> <span
				id="page_sKate">장바구니</span>
			<div id="cart-items">
				<table class="cols">
					<thead>
						<tr>
							<th>상품 이미지</th>
							<th>상품 코드</th>
							<th>상품명</th>
							<th>상품 가격</th>
							<th>상품 개수</th>
							<th>총 금액</th>
						</tr>
					</thead>
				</table>
				<!-- 장바구니에 추가된 상품들을 나타내는 카드들 -->
				<c:forEach items="${cartItems}" var="item">
					<div class="cart-item">
						<img src="${item.image}" alt="${item.name}">
						<div class="cart-item-info">
							<span class="product-code">${item.code}</span>
							<h3 class="product-name">${item.name}</h3>
							<span class="product-price">${item.price}</span>
							<div class="quantity">
								<button class="minus-btn" type="button" name="button">
									<i class="fas fa-minus">-</i>
								</button>
								<input type="text" name="name" value="${item.quantity}">
								<button class="plus-btn" type="button" name="button">
									<i class="fas fa-plus">+</i>
								</button>
							</div>
							<span class="total" id="total">${item.price * item.quantity}
								원</span>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>
	</main>
</body>
</html>