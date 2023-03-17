<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 포인트 관리</title>
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

/* 프로필 박스 스타일 */
.border {
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
	padding-bottom: 300px;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
}

/* table 스타일 */
table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 700px;
}

thead {
	background-color: #f9f9f9;
	text-align: center;
	font-weight: bold;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

td:first-child {
	text-align: center;
}

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
}

/* 첫 번째 td(번호) 스타일 */
td:first-child {
	text-align: center;
	font-weight: bold;
	color: #333;
}

/* 두 번째 td(변동액) 스타일 */
td:nth-child(2) {
	text-align: center;
	color: #2ecc71;
	font-weight: bold;
}

/* 세 번째 td(변동 내용) 스타일 */
td:nth-child(3) {
	text-align: center;
	color: #333;
}

/* 네 번째 td(가용 포인트) 스타일 */
td:last-child {
	text-align: center;
	color: #3498db;
	font-weight: bold;
}

/* 버튼 스타일 */
#charge-points {
	background-color: #3498db;
	color: #fff;
	border: none;
	padding: 12px 24px;
	margin-top: 16px;
	margin-bottom: 20px;
	cursor: pointer;
	font-size: 16px;
	border-radius: 4px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	transition: all 0.3s ease-in-out;
	cursor: pointer;
}

#charge-points:hover {
	background-color: #2980b9;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.charge-buttons {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	margin-top: 40px;
}

/* 버튼 스타일 */
.add_b {
	display: inline-block;
	padding: 8px 12px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-right: 10px;
	font-size: 14px;
	font-weight: 500;
	transition: all 0.3s ease;
}

.add_b:hover {
	background-color: #3e8e41;
}

#charge-amount {
	display: inline-block;
	width: 120px;
	height: 35px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 14px;
	margin-right: 10px;
}

#point_charged{
  margin-top: 50px;
  margin-left: -630px;
  margin-bottom: 5px;
  font-weight: bold;
}

#point_changed{
  margin-top: 20px;
  margin-left: -580px;
  margin-bottom: 5px;
  font-weight: bold;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('tbody tr').each(function() {
			var value = $(this).find('td:nth-child(2)').text();
			if (value.includes('-')) {
				$(this).find('td:nth-child(2)').css('color', 'red');
			} else {
				$(this).find('td:nth-child(2)').css('color', 'green');
			}
		});
		let chargeAmount = 0;
		$(".add_b").click(function() {
			let amount = parseInt($(this).attr("id").substr(4));
			chargeAmount += amount;
			$("#charge-amount").val(chargeAmount.toLocaleString('en-US'));
		});
	});
</script>
</head>
<body>
	<main>
		<section id="sec1">
			<div class="border">
				<div class="charge-buttons">
					<button class="add_b" id="add-5000">+5,000원</button>
					<button class="add_b" id="add-10000">+10,000원</button>
					<button class="add_b" id="add-30000">+30,000원</button>
					<button class="add_b" id="add-50000">+50,000원</button>
					<input type="text" placeholder="직접입력" id="charge-amount">
					<button id="charge-points">포인트 충전</button>
				</div>
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>변동액</th>
							<th>변동 내용</th>
							<th>가용 포인트</th>
						</tr>
						<span id="point_changed">포인트 변동 내역</span>
					</thead>
					<tbody>
						<!-- 
						지금은 데이터가 없어서 보기용으로 넣어놨지만 기능 코드를 
						작성할 땐 반복문으로 데이터가 있는지 없는지 검사해야함
					 -->
						<tr>
							<td>3</td>
							<td>+5,000</td>
							<td>5,000원 충전</td>
							<td>1200</td>
						</tr>
						<tr>
							<td>2</td>
							<td>-300</td>
							<td>사탕 구매 포인트 차감</td>
							<td>700</td>
						</tr>
						<tr>
							<td>1</td>
							<td>+1,000</td>
							<td>가입 축하금</td>
							<td>1000</td>
						</tr>
					</tbody>
				</table>
				<table>
					<thead>
						<span id="point_charged">충전 내역</span>
						<tr>
							<th>번호</th>
							<th>입금액</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>5,000</td>
							<td>충전완료</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>
</body>
</html>