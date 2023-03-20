<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 제재 내역</title>
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

.banned {
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
	max-width: 1500px;
	min-width: 1300px;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 1000px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	margin-top: 100px;
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

/* 첫 번째 td 스타일 */
td:first-child {
	text-align: center;
	font-weight: bold;
	color: #333;
}

/* 두 번째 td 스타일 */
td:nth-child(2) {
	text-align: center;
	color: #3498db;
	font-weight: bold;
}

/* 세 번째 td 스타일 */
td:nth-child(3) {
	text-align: center;
	font-weight: bold;
	color: red;
}

/* 네 번째 td 스타일 */
td:nth-child(4) {
	text-align: center;
	color: #333;
}

/* 다섯 번째 td 스타일 */
td:last-child {
	text-align: center;
	color: #333;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">제재 내역</span>
			<div class="banned">
				<table>
					<thead>
						<tr>
							<th></th>
							<th>제재</th>
							<th>제재내용</th>
							<th>제재 항목</th>
							<th>제재 일시</th>
						</tr>
					</thead>
					<tbody>
						<!-- 반복문으로 해당 회원의 제재 내역이 있는지 검사 후 있을 때 출력 -->
						<tr>
							<td>3</td>
							<td>커뮤니티</td>
							<td>커뮤니티 이용 제한 3일</td>
							<td>언어폭력 행위</td>
							<td>2022.03.20 23:15:47</td>
						</tr>
						<tr>
							<td>2</td>
							<td>추모</td>
							<td>추모 이용 제한 3일</td>
							<td>폭력적인 게시글 업로드</td>
							<td>2022.03.15 13:22:28</td>
						</tr>
						<tr>
							<td>1</td>
							<td>마켓</td>
							<td>마켓 이용 제한 1일</td>
							<td>언어폭력 행위</td>
							<td>2022.03.13 18:49:32</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>
</body>
</html>