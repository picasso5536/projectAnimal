<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 > 신고 관리</title>
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

.report {
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

#del_rep {
	background-color: #f60000;
}

#del_rep:hover {
	background-color: #cc0000;
}

#up_rep {
	background-color: #3498db;
}

#up_rep:hover {
	background-color: #2980b9;
}

#select_rep {
	background-color: #3498db; /* 버튼 배경색 */
	border: none; /* 테두리 없앰 */
	color: white; /* 글자색 */
	padding: 0px 20px; /* 버튼 내부 여백 */
	text-align: center; /* 텍스트 중앙 정렬 */
	text-decoration: none; /* 밑줄 없앰 */
	font-size: 14px; /* 글자 크기 */
	font-weight: bold;
	border-radius: 5px; /* 버튼 모서리 둥글게 */
	cursor: pointer; /* 마우스 커서 손가락으로 변경 */
	transition-duration: 0.4s; /* 마우스 오버 시 효과를 위한 전환 시간 설정 */
	height: 38px;
	border-radius: 5px;
	margin-bottom: 30px;
	margin-left: 20px;
}

#init_rep {
	background-color: #4CAF50; /* 버튼 배경색 */
	border: none; /* 테두리 없앰 */
	color: white; /* 글자색 */
	padding: 0px 20px; /* 버튼 내부 여백 */
	text-align: center; /* 텍스트 중앙 정렬 */
	text-decoration: none; /* 밑줄 없앰 */
	font-size: 14px; /* 글자 크기 */
	font-weight: bold;
	border-radius: 5px; /* 버튼 모서리 둥글게 */
	cursor: pointer; /* 마우스 커서 손가락으로 변경 */
	transition-duration: 0.4s; /* 마우스 오버 시 효과를 위한 전환 시간 설정 */
	height: 38px;
	width: 120px;
	border-radius: 5px;
	margin-bottom: 30px;
	margin-left: 20px;
	margin-right: 20px;
}

#select_rep:hover {
	background-color: #2980b9; /* 마우스 오버 시 버튼 배경색 변경 */
}

#init_rep:hover {
	background-color: #3e8e41; /* 마우스 오버 시 버튼 배경색 변경 */
}

.option_rep {
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

.search_rep {
	margin-left: 40px;
	width: 200px;
	height: 32px;
}

#search_rep_btn {
	margin-left: 150px;
	margin-bottom: 30px;
}

.search_rep {
	width: 250px;
	height: 28px;
	padding: 5px;
	border: none;
	border-radius: none;
	border-bottom: 0.5px solid #ccc;
	font-size: 16px;
	color: #333;
	box-shadow: none;
	transition: border-color 0.6s ease-in-out;
}

.search_rep:focus {
	outline: none;
	border-color: #007bff;
	box-shadow: 0 1px 0 0 #007bff;
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

#radio_rep {
	margin-top: 30px;
	margin-bottom: 30px;
}

div.replyModal {
	position: relative;
	z-index: 1;
	display: none;
}

div.modalBackground {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	z-index: -1;
}

div.modalContent {
	position: fixed;
	top: 10%;
	left: calc(50% - 400px);
	width: 800px;
	height: 500px;
	padding: 20px 10px;
	background: #fff;
	border: 2px solid #666;
	border-radius: 20px;
}

div.modalContent textarea {
	font-size: 16px;
	font-family: '맑은 고딕', verdana;
	padding: 10px;
	width: 780px;
	height: 440px;
	border-radius: 10px;
}

div.modalContent button {
	font-size: 14px;
	color: #fff;
	padding: 5px;
	margin: 10px 0;
	background: #3498db;
	border: 1px solid #ccc;
	padding: 5px 10px;
}

div.modalContent button:hover {
	background: #2980b9;
}

div.modalContent button.modal_cancel {
	margin-left: 20px;
}

#info_rep {
	cursor: pointer;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).on(
			"click",
			"#info_rep",
			function() {
				//$(".replyModal").attr("style", "display:block;");
				$(".replyModal").fadeIn(200);
				var repNum = $(this).attr("data-repNum");
				var repCon = $(this).parent().parent()
						.children(".replyContent").text();
				$(".modal_repCon").val(repCon);
				$(".modal_process_btn").attr("data-repNum", repNum);
			});
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">통합 관리</span> <span id="sep2">></span> <span
				id="page_sKate">신고 관리</span>
			<div class="border">
				<div class="report">
					<form action="">
						<div class="option_rep">
							검색어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select
								class="selectbox">
								<option value="author">작성자</option>
								<option value="title">제목</option>
								<option value="content">제목 + 내용</option>
							</select><input type="text" class="search_rep" id="search_slot"
								placeholder="검색어 입력">
						</div>
						<div class="option_rep">
							카테고리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select
								class="selectbox">
								<option value="" disabled selected hidden>카테고리 선택</option>
								<option value="1">욕설 / 명예훼손</option>
								<option value="2">음란물</option>
								<option value="3">홍보성</option>
								<option value="4">기타</option>
							</select>
						</div>
						<div class="option_rep">
							<div id="radio_rep">
								상태&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
									<input type="radio" name="state_rep" value="state_all" checked>
									전체
								</label> &nbsp;&nbsp;<label> <input type="radio"
									name="state_rep" value="main"> 답변 대기중
								</label> &nbsp;&nbsp;<label> <input type="radio"
									name="state_rep" value="market"> 답변 완료
								</label>
							</div>
						</div>
						<div id="search_rep_btn">
							<button type="button" id="select_rep">조회</button>
							<button type="button" id="init_rep">검색 초기화</button>
						</div>
					</form>
					<table class="cols">
						<thead>
							<tr>
								<th></th>
								<th>신고 글</th>
								<th>카테고리</th>
								<th>내용</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>1302</td>
								<td>욕설 / 명예훼손</td>
								<td id="info_rep">욕설로 신고합니다.</td>
								<td>우주체강</td>
								<td>2023.03.28</td>
								<td>처리 중</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</main>
	<div class="replyModal">
		<div class="modalContent">
			<div>
				<textarea class="modal_repCon" name="modal_repCon"></textarea>
			</div>
			<div>
				<button type="button" class="modal_process_btn">처리</button>
				<button type="button" class="modal_cancel">취소</button>
			</div>
		</div>
		<div class="modalBackground"></div>
	</div>
	<script>
		$(".modal_cancel").click(function() {
			$(".replyModal").attr("style", "display:none;");
		});

		$(".modal_process_btn").click(function() {
			var modifyConfirm = confirm("처리하시겠습니까?");
			if (modifyConfirm) {
				var data = {
					repNum : $(this).attr("data-repNum"),
					repCon : $(".modal_repCon").val()
				}; // ReplyVO 형태로 데이터 생성
				$.ajax({
					url : "",
					type : "post",
					data : data,
					success : function(result) {

						if (result == 1) {
							replyList();
							$(".replyModal").fadeOut(200);
						} else {
							alert("오류입니다.");
						}
					},
					error : function() {
						alert("처리 에러")
					}
				});
			}
		});
	</script>
</body>
</html>