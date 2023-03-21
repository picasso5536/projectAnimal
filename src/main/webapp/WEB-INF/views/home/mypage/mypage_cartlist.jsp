<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 장바구니</title>
<style type="text/css">
#cart-items {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

.card {
	display: flex;
	flex-direction: row;
	margin: 20px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
}

.card img {
	width: 100px;
	height: 100px;
	object-fit: cover;
	margin-right: 10px;
}

.card-info {
	display: flex;
	flex-direction: column;
	width: 100%;
}

.product-code {
	font-size: 14px;
	font-weight: bold;
	color: #555;
	margin-bottom: 5px;
}

.product-name {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

.product-price {
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 10px;
}

.quantity {
	display: flex;
	flex-direction: row;
	align-items: center;
	margin-bottom: 10px;
}

.quantity input {
	width: 50px;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
	border: none;
	background-color: #eee;
	padding: 5px;
	border-radius: 5px;
	margin: 0 5px;
}

.quantity button {
	background-color: transparent;
	border: none;
	cursor: pointer;
	font-size: 16px;
	color: #555;
	margin: 0 5px;
}

.quantity button i {
	font-size: 16px;
}

.total {
	font-size: 18px;
	font-weight: bold;
	margin-left: auto;
	color: #f44336;
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
	<div id="cart-items">
		<!-- 장바구니에 추가된 상품들을 나타내는 카드들 -->
		<c:forEach items="${cartItems}" var="item">
			<div class="card">
				<img src="${item.image}" alt="${item.name}">
				<div class="card-info">
					<span class="product-code">상품 코드 : ${item.code}</span>
					<h3 class="product-name">상품명 :${item.name}</h3>
					<span class="product-price">상품 가격 : ${item.price}</span>
					<div class="quantity">
						<button class="minus-btn" type="button" name="button">
							<i class="fas fa-minus">-</i>
						</button>
						<input type="text" name="name" value="${item.quantity}">
						<button class="plus-btn" type="button" name="button">
							<i class="fas fa-plus">+</i>
						</button>
					</div>
					<span class="total">총 금액 : ${item.price * item.quantity} 원</span>
				</div>
			</div>
		</c:forEach>
	</div>

</body>
</html>