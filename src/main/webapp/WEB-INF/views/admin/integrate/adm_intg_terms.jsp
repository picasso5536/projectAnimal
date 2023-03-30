<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 > 약관 관리</title>
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

.terms {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	width: 100%;
	margin-top: 60px;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 1000px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
}

table td, table th {
	padding: 10px;
	text-align: center;
	border: 0;
	border-bottom: 1px solid #DEE2E6;
	font-family: 'NanumSquareRound';
}

tbody th {
	background-color: #8db6d4; /* 헤더 배경색 */
	color: #fff; /* 헤더 글자색 */
	font-weight: bold;
	width: 30%;
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
</style>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">통합 관리</span> <span id="sep2">></span> <span
				id="page_sKate">약관 관리</span>
			<div class="border">
				<div class="terms">
					<table>
						<tbody>
							<tr>
								<th>이용약관</th>
								<td>블라블라1</td>
							</tr>
							<tr>
								<th>개인 정보의 수집 항목 및 수집 방법</th>
								<td>블라블라2</td>
							</tr>
							<tr>
								<th>개인 정보의 수집 목적 및 이용 목적</th>
								<td>블라블라3</td>
							</tr>
							<tr>
								<th>개인 정보의 보유 및 이용 기간</th>
								<td>블라블라4</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</main>
</body>
</html>