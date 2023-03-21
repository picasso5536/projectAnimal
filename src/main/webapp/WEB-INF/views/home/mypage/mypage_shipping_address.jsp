<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 배송지 정보</title>
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
	display: flex; flex-direction : column;
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

.shipping-address {
	background-color: #fff;
	border: 1px solid #dcdcdc;
	width: 700px;
	border-radius: 8px;
	padding: 20px;
	margin-bottom: 20px;
	box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1);
}

.shipping-address-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px;
}

.shipping-address-header h3 {
	font-size: 1.5rem;
	font-weight: 600;
	margin: 0;
	color: #212121;
	text-transform: uppercase;
	letter-spacing: 1px;
}

.edit-button{
	background-color: #4CAF50;
	color: #fff;
	border: none;
	padding: 6px 12px;
	border-radius: 4px;
	font-size: 0.875rem;
	font-weight: 600;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.edit-button:hover{
	background-color: #3B9E40;
}

.delete-button {
	background-color: #ff3333;
	color: #fff;
	border: none;
	padding: 6px 12px;
	border-radius: 4px;
	font-size: 0.875rem;
	font-weight: 600;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.delete-button:hover {
	background-color: #ee2222;
}

.shipping-address-body p {
	margin: 0;
	font-size: 1rem;
	line-height: 1.5;
	color: #4f4f4f;
}

.shipping-address-body p:not(:last-child) {
	margin-bottom: 5px;
}

.shipping-address-name {
	font-weight: 600;
	color: #212121;
	font-size: 1.125rem;
	margin-bottom: 5px;
}

.shipping-address-address {
	color: #777;
	font-size: 0.875rem;
	margin-bottom: 5px;
}

.shipping-address-phone {
	color: #777;
	font-size: 0.875rem;
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

#add_btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
}

#add_btn:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">배송지 관리</span>
			<div class="border">
				<div class="shipping-address">
					<div class="shipping-address-header">
						<h3>배송지 1</h3>
						<div class="shipping-address-action">
							<button class="edit-button">수정</button>
							<button class="delete-button">삭제</button>
						</div>
					</div>
					<div class="shipping-address-body">
						<p class="shipping-address-name">이름: 홍길동</p>
						<p class="shipping-address-address">주소: 서울시 강남구 역삼동 123-45</p>
						<p class="shipping-address-phone">연락처: 010-1234-5678</p>
						<p class="shipping-address-text">메시지: 문 앞</p>
					</div>
				</div>
				<div class="shipping-address">
					<div class="shipping-address-header">
						<h3>배송지 2</h3>
						<div class="shipping-address-action">
							<button class="edit-button">수정</button>
							<button class="delete-button">삭제</button>
						</div>
					</div>
					<div class="shipping-address-body">
						<p class="shipping-address-name">이름: 홍동길</p>
						<p class="shipping-address-address">주소: 인천시 연수구</p>
						<p class="shipping-address-phone">연락처: 010-8765-4321</p>
						<p class="shipping-address-text">메시지: 경비실</p>
					</div>
				</div>
				<button type="button" id="add_btn">추가</button>
			</div>
		</section>
	</main>
</body>
</html>