<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 문의 내역</title>
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
	position: relative;
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
	max-height: 2000px;
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
tbody tr>input:hover {
	background-color: #f5f5f5;
}

a {
	text-decoration: none;
	color: #4CAF50;
}

.processing {
	color: red;
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
	position: absolute;
	bottom: 20px;
	right: 30px;
}

input[type="text"], #msg_info {
	padding: 10px;
	border-radius: 8px;
	border: none;
	font-size: 15px;
	width: 300px;
	margin-left: 0px;
}

input[type="text"]:focus, #msg_info:focus {
	outline: none;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
	padding-left: 5px;
	border: none;
	border-bottom: 2px solid rgba(126, 192, 238, 0.8);
	transition: border-bottom-color 0.4s linear;
	border-bottom-width: 1px;
}

button:hover {
	background-color: #2980b9;
}

#msg_info {
	width: 640px;
	heigth: 100px;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">받은 메시지</span>
			<div class="banned">
				<table>
					<tbody>
						<tr>
							<th>받는이</th>
							<td><input type="text" id="msg_receiver"></td>
						</tr>
						<tr>
							<th>메시지 제목</th>
							<td><input type="text" id="msg_title"></td>
						</tr>
						<tr>
							<th>첨부 파일</th>
							<td><input type="file" id="msg_f_name"></td>
						</tr>
						<tr>
							<th>메시지 내용</th>
							<td><textarea rows="40" name="msg_info" id="msg_info"></textarea></td>
						</tr>
					</tbody>
				</table>
				<button>전송</button>
			</div>
		</section>
	</main>
</body>
</html>