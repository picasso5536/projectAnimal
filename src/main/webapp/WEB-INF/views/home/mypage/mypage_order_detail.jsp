<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 주문 상세내역</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css">
<style type="text/css">
body {
	font-family: 'NanumSquareRound';
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
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 1500px;
	min-width: 1300px;
}

.announce {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	width: 100%;
	margin-top: 60px;
}

button {
	background-color: #3498db;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 4px;
	width: 70px;
	height: 30px;
}

#regist_btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
}

#regist_btn:hover {
	background-color: #2980b9;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 1000px;
}

table td, table th {
	padding: 10px;
	text-align: center;
	border: 0;
	border-bottom: 1px solid #DEE2E6;
	font-family: 'NanumSquareRound';
	border-left: none;
	border-right: none;
}

thead th {
	background-color: #8db6d4; /* 헤더 배경색 */
	color: #fff; /* 헤더 글자색 */
	font-weight: bold;
}

table td:first-child {
	font-size: 14px;
	color: #666;
	width: 10%;
}

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
}

.double_table {
	display: flex;
	justify-content: space-between;
}

.double_table table {
	margin: 150px 80px 150px 80px;
	min-width: 400px;
	max-width: 600px;
}

.double_table table th {
	border-left: none;
	border-right: none;
	background-color: #8db6d4;
	color: #fff;
}

.double_table table:first-child {
	margin: 150px 50px 150px 50px;
	min-width: 400px;
	max-width: 600px;
	height: 180px;
}

#order_total th {
	border-left: none;
	border-right: none;
	background-color: #8db6d4;
	color: #fff;
	width: 200px;
}

#order_total tr:last-child td:last-child {
	font-weight: bold;
	color: red;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">마켓</span> <span id="sep2">></span> <span
				id="page_sKate">주문 상세내역</span>
			<div class="border">
				<div class="announce">
					<table class="cols">
						<thead>
							<tr>
								<th></th>
								<th>상품 이미지</th>
								<th>상품명</th>
								<th>쿠폰할인</th>
								<th>적립금</th>
								<th>주문금액(수량)</th>
								<th>주문 상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td class="order_pdt">상품.png</td>
								<td class="order_pdt">개 밥그릇</td>
								<td>0원</td>
								<td>590원</td>
								<td>59,000<br>1개
								</td>
								<td>구매 확정&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button">리뷰작성</button>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="double_table">
						<table class="cols" id="order_dlvr">
							<tbody>
								<tr>
									<th>이름</th>
									<td>우주체강</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>010-****-3920</td>
								</tr>
								<tr>
									<th>배송지 주소</th>
									<td>인천 연수구</td>
								</tr>
								<tr>
									<th>배송 메시지</th>
									<td>배송 전 연락 바랍니다.</td>
								</tr>
							</tbody>
						</table>
						<table class="cols">
							<tbody>
								<tr>
									<th>배송비</th>
									<td>3,000원</td>
								</tr>
								<tr>
									<th>상품 할인</th>
									<td>0원</td>
								</tr>
								<tr>
									<th>쿠폰 할인</th>
									<td>0원</td>
								</tr>
								<tr>
									<th>적립금</th>
									<td>590원</td>
								</tr>
								<tr>
									<th>적립금 사용</th>
									<td>0원</td>
								</tr>
								<tr>
									<th><b>할인 합계</b></th>
									<td>0원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<table class="cols" id="order_total">
						<tbody>
							<tr>
								<th>상품 합계</th>
								<td>59,000원</td>
							</tr>
							<tr>
								<th>할인 합계</th>
								<td>0원</td>
							</tr>
							<tr>
								<th>최종 결제 금액</th>
								<td>59,000원</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="../../footer.jsp"/>
	</footer>
</body>
</html>