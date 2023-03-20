<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 포인트 관리</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css">
<style type="text/css">
@import	url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css);
</style>
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
	padding-bottom: 150px;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 1500px;
	min-width: 1300px;
}

/* table 스타일 */
table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 700px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
}

table td, table th {
	padding: 10px;
	text-align: center;
	border: 0;
	border-bottom: 1px solid #DEE2E6;
	font-family: 'NanumSquareRound';
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

/* 네 번째 td(변동 내용) 스타일 */
td:nth-child(4) {
	text-align: center;
	color: #333;
}

/* 다섯 번째 td(가용 포인트) 스타일 */
td:last-child {
	text-align: center;
	color: #3498db;
	font-weight: bold;
}

/* 버튼 스타일 */
#charge-points {
	display: inline-block;
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
	margin-left: 25px;
	flex-direction: row;
	align-items: center;
	margin-top: 40px;
	border-collapse: collapse;
	width: 100%;
	max-width: 700px;
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

#point_charged {
	margin-top: 50px;
	margin-bottom: 5px;
	font-weight: bold;
	border-collapse: collapse;
	width: 100%;
	max-width: 700px;
}

#point_changed {
	margin-top: 20px;
	margin-bottom: 5px;
	font-weight: bold;
	border-collapse: collapse;
	width: 100%;
	max-width: 700px;
}

/* -----------------cal-------------------*/
/* 텍스트 입력란 스타일 */
.datepicker {
	font-size: 16px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	outline: none;
	box-shadow: none;
	width: 150px;
	text-align: center;
}

/* 활성화된 텍스트 입력란 스타일 */
.datepicker:focus {
	border-color: #007bff;
}

#point_changed_select {
	background-color: #3498db; /* 버튼 배경색 */
	border: none; /* 테두리 없앰 */
	color: white; /* 글자색 */
	padding: 0px 20px; /* 버튼 내부 여백 */
	text-align: center; /* 텍스트 중앙 정렬 */
	text-decoration: none; /* 밑줄 없앰 */
	display: inline-block; /* 인라인 블록으로 설정 */
	font-size: 16px; /* 글자 크기 */
	border-radius: 5px; /* 버튼 모서리 둥글게 */
	cursor: pointer; /* 마우스 커서 손가락으로 변경 */
	transition-duration: 0.4s; /* 마우스 오버 시 효과를 위한 전환 시간 설정 */
	height: 38px;
}

#point_changed_select:hover {
	background-color: #2980b9; /* 마우스 오버 시 버튼 배경색 변경 */
}

.start_end {
	margin-top: 5px;
	margin-bottom: 10px;
	border-collapse: collapse;
	width: 100%;
	max-width: 700px;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
		<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">포인트 관리</span>
			<div class="border">
				<div class="charge-buttons">
					<button class="add_b" id="add-5000">+5,000원</button>
					<button class="add_b" id="add-10000">+10,000원</button>
					<button class="add_b" id="add-30000">+30,000원</button>
					<button class="add_b" id="add-50000">+50,000원</button>
					<input type="text" placeholder="직접입력" id="charge-amount">
					<button id="charge-points">포인트 충전</button>
				</div>
				<span id="point_changed">포인트 변동 내역</span>
				<div class="start_end">
					<input type="text" class="datepicker" id="s_datepicker"
						placeholder="시작일">
					&nbsp;&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="text" class="datepicker" id="e_datepicker" placeholder="종료일">
					<button type="button" id="point_changed_select">조회</button>
				</div>
				<script src="https://cdn.jsdelivr.net/npm/pikaday/pikaday.js"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/pikaday/plugins/pikaday-i18n.js"></script>
				<script>
					var picker = new Pikaday(
							{
								field : document.getElementById('s_datepicker'),
								format : 'YYYY년 MM월 DD일 (ddd)',
								i18n : {
									previousMonth : '이전달',
									nextMonth : '다음달',
									months : [ '1월', '2월', '3월', '4월', '5월',
											'6월', '7월', '8월', '9월', '10월',
											'11월', '12월' ],
									weekdays : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									weekdaysShort : [ '일', '월', '화', '수', '목',
											'금', '토' ]
								},
								toString : function(date) {
									var day = date.getDate();
									var month = date.getMonth() + 1;
									var year = date.getFullYear();

									return year + '년 ' + month + '월 ' + day
											+ '일 ';
								},
							});
				</script>
				<script>
					var picker = new Pikaday(
							{
								field : document.getElementById('e_datepicker'),
								format : 'YYYY년 MM월 DD일 (ddd)',
								i18n : {
									previousMonth : '이전달',
									nextMonth : '다음달',
									months : [ '1월', '2월', '3월', '4월', '5월',
											'6월', '7월', '8월', '9월', '10월',
											'11월', '12월' ],
									weekdays : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									weekdaysShort : [ '일', '월', '화', '수', '목',
											'금', '토' ]
								},
								toString : function(date) {
									var day = date.getDate();
									var month = date.getMonth() + 1;
									var year = date.getFullYear();

									return year + '년 ' + month + '월 ' + day
											+ '일 ';
								},
							});
				</script>

				<table>
					<thead>
						<tr>
							<th></th>
							<th>변동액</th>
							<th>변동 내용</th>
							<th>변동 일자</th>
							<th>가용 포인트</th>
						</tr>
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
							<td>2023-03-18</td>
							<td>1,200</td>
						</tr>
						<tr>
							<td>2</td>
							<td>-300</td>
							<td>사탕 구매 포인트 차감</td>
							<td>2023-03-17</td>
							<td>700</td>
						</tr>
						<tr>
							<td>1</td>
							<td>+1,000</td>
							<td>가입 축하금</td>
							<td>2023-03-17</td>
							<td>1,000</td>
						</tr>
					</tbody>
				</table>
				<table>
					<thead>
						<span id="point_charged">충전 내역</span>
						<tr>
							<th></th>
							<th>입금액</th>
							<th>신청 일자</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody id="point-history">
						<tr>
							<td>1</td>
							<td>5,000</td>
							<td>2023-03-18</td>
							<td>충전완료</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>
</body>
</html>