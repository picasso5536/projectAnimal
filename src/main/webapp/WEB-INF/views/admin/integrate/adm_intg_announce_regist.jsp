<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 > 공지 등록</title>
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

.ann_rounce {
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
	min-width: 800px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	margin-top: 40px;
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

table td {
	cursor: pointer;
}

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
}

#title_ann_r {
	display: inline-block;
	width: 400px;
	height: 35px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 14px;
}

#content_ann_r {
	display: inline-block;
	width: 650px;
	height: 400px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 14px;
}

.option_ann_r {
	margin-top: 5px;
	margin-bottom: 20px;
	border-collapse: collapse;
	width: 100%;
	max-width: 700px;
}

.selectbox {
	padding: 10px;
	font-size: 16px;
	border: none;
	border-radius: none;
	border-bottom: 1.5px solid #ccc;
	color: #333;
	position: relative;
	appearance: none;
	margin-left: 3px;
}

.selectbox::after {
	content: "";
	display: block;
	width: 0;
	height: 0;
	border-style: solid;
	position: absolute;
	top: 50%;
	right: 10px;
	transform: translateY(-50%);
}

.selectbox:focus {
	outline: none;
	border: none;
	border-radius: none;
	border-bottom: 1.5px solid #ccc;
	border-color: #007bff;
}

.selectbox option {
	background-color: #fff;
	color: #333;
}

.selectbox option[disabled]:selected {
	color: #fff;
}

.selectbox option:checked {
	background-color: #007bff;
	color: #fff;
}

::-webkit-input-placeholder {
	color: #aaa;
	opacity: 1;
}

:-moz-placeholder {
	color: #aaa;
	opacity: 1;
}

::-moz-placeholder {
	color: #aaa;
	opacity: 1;
}

:-ms-input-placeholder {
	color: #aaa;
	opacity: 1;
}

#radio_ann_r {
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">통합 관리</span> <span id="sep2">></span> <span
				id="page_sKate">공지 등록</span>
			<div class="border">
				<div class="ann_rounce">
					<form action="admin_intg_announce_ins.do" method="post"
						enctype="multipart/form-data">
						<div class="option_ann_r">
							카테고리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select
								class="selectbox" name="notice_div">
								<option value="" disabled selected hidden>카테고리 선택</option>
								<option value="home">홈</option>
								<option value="market">마켓</option>
							</select>
						</div>
						<div class="option_ann_r">
							<div id="radio_ann_r">
								우선순위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label> <input
									type="radio" name="notice_priorty" value="1" checked="checked">
									최상위
								</label> &nbsp;&nbsp;<label> <input type="radio"
									name="notice_priorty" value="2"> 중요
								</label> &nbsp;&nbsp;<label> <input type="radio"
									name="notice_priorty" value="3"> 일반
								</label>
							</div>
						</div>
						<div class="option_ann_r">
							<div id="radio_ann_r">
								상태&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
									<input type="radio" name="notice_state" value="announce"
									checked="checked"> 공지사항
								</label> &nbsp;&nbsp;<label> <input type="radio"
									name="notice_state" value="event"> 이벤트
								</label> &nbsp;&nbsp;<label> <input type="radio"
									name="notice_state" value="etc"> 기타
								</label>
							</div>
						</div>
						<table>
							<tbody>
								<tr>
									<th>제목</th>
									<td><input type="text" name="notice_title"
										id="title_ann_r"></td>
								</tr>
								<tr>
									<th>이미지</th>
									<td><input type="file" name="notice_profile_param"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea name="notice_info" id="content_ann_r"></textarea></td>
								</tr>
								<tr>
									<th>공개여부</th>
									<td><label> <input type="radio"
											name="notice_visible" value="1" checked> 보임
									</label> &nbsp;&nbsp;<label> <input type="radio"
											name="notice_visible" value="0"> 안보임
									</label></td>
								</tr>
							</tbody>
						</table>
						<button type="submit" id="regist_btn">등록</button>
					</form>
				</div>
			</div>
		</section>
	</main>
</body>
</html>