<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 리뷰 작성</title>
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

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
}

#content_rev {
	display: inline-block;
	width: 650px;
	height: 400px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 14px;
}

#title_rev {
	display: inline-block;
	width: 400px;
	height: 35px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 14px;
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

#regist_btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">주문 내역</span> <span id="sep2">></span> <span
				id="page_sKate">리뷰 작성</span>
			<div class="banned">
				<table>
					<tbody>
						<tr>
							<th>제목</th>
							<td><input type="text" name="title" id="title_rev" /></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td><input type="file" name="fileName" multiple="multiple" /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea name="content" id="content_rev"></textarea></td>
						</tr>
					</tbody>
				</table>
				<button type="button" id="regist_btn" onclick="">저장</button>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="../../footer.jsp" />
	</footer>
</body>
</html>