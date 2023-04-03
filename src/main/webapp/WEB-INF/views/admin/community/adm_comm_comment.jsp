<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공급사 관리</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_sup_style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_info_style.css" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
}

table td, table th {
    
	padding: 10px;
	text-align: center;
	border: 0;
	border-bottom: 1px solid #DEE2E6;
	font-family: 'NanumSquareRound';
}
table td{
	 cursor: pointer; 
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

#del_ann {
	background-color: #f60000;
}

#del_ann:hover {
	background-color: #cc0000;
}

#up_ann {
	background-color: #3498db;
}

#up_ann:hover {
	background-color: #2980b9;
}

.datepicker {
	font-size: 16px;
	padding: 10px;
	outline: none;
	box-shadow: none;
	width: 150px;
	text-align: center;
	border: none;
	border-radius: none;
	border-bottom: 1.5px solid #ccc;
}

.datepicker:focus {
	border-color: #007bff;
}

#select_ann {
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
.select_ann1 {
	background-color: #3498db; /* 버튼 배경색 */
	border: none; /* 테두리 없앰 */
	color: white; /* 글자색 */
	padding: 0px 20px; /* 버튼 내부 여백 */
	font-weight: bold;
	cursor: pointer; /* 마우스 커서 손가락으로 변경 */
	transition-duration: 0.4s; /* 마우스 오버 시 효과를 위한 전환 시간 설정 */
	height: 38px;
	border-radius: 5px;
	margin-bottom: 30px;
	margin-left: 1030px;
}

#init_ann {
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

#select_ann:hover {
	background-color: #2980b9; /* 마우스 오버 시 버튼 배경색 변경 */
}

#init_ann:hover {
	background-color: #3e8e41; /* 마우스 오버 시 버튼 배경색 변경 */
}

.start_end {
	margin-top: 5px;
	margin-bottom: 20px;
	border-collapse: collapse;
	width: 100%;
	max-width: 700px;
}

.option_ann {
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

.search_ann {
	margin-left: 40px;
	width: 200px;
	height: 32px;
}

#search_ann_btn {
	margin-left: 150px;
	margin-bottom: 30px;
}

.search_ann {
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

.search_ann:focus {
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

#radio_ann {
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

#info_ann{
	cursor: pointer;
}
</style>
<script type="text/javascript">
$(document).on(
		"click",
		"#info_ann",
		function() {
			//$(".replyModal").attr("style", "display:block;");
			$(".replyModal").fadeIn(200);
			var repNum = $(this).attr("data-repNum");
			var repCon = $(this).parent().parent()
					.children(".replyContent").text();
			$(".modal_repCon").val(repCon);
			$(".modal_modify_btn").attr("data-repNum", repNum);
		});
		

function adm_comm_comment_management() {
    var result = confirm("등록 하시겠습니까?");
    if(result){
    location.href="adm_comm_comment_management.do";
    }else {
    }
}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
			<!-- 	<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">공급사 리스트</a></li>
				<li class="mli"><a class="ad-link" href="adm_comm_post_management.do">공급사 등록</a></li>
				<li class="mli"><a class="ad-link" href="adm_comm_post_registration.do">공급사 관리</a></li>
			</ul> -->
			<div class="search_pdt">
					<form action="">
						<div class="option_ann">
							택배회사&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" class="search_ann" id="search_slot" placeholder="택배사 입력">
						</div>
						<div class="start_end">
							계약일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="text" class="datepicker" id="s_datepicker"
								placeholder="시작일" style="margin-left: 35px;">
							&nbsp;&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="text" class="datepicker" id="e_datepicker"
								placeholder="종료일">
						</div>
						<script src="https://cdn.jsdelivr.net/npm/pikaday/pikaday.js"></script>
						<script
							src="https://cdn.jsdelivr.net/npm/pikaday/plugins/pikaday-i18n.js"></script>
						<script>
							var picker = new Pikaday(
									{
										field : document
												.getElementById('s_datepicker'),
										format : 'YYYY년 MM월 DD일 (ddd)',
										i18n : {
											previousMonth : '이전달',
											nextMonth : '다음달',
											months : [ '1월', '2월', '3월', '4월',
													'5월', '6월', '7월', '8월',
													'9월', '10월', '11월', '12월' ],
											weekdays : [ '일요일', '월요일', '화요일',
													'수요일', '목요일', '금요일', '토요일' ],
											weekdaysShort : [ '일', '월', '화',
													'수', '목', '금', '토' ]
										},
										toString : function(date) {
											var day = date.getDate();
											var month = date.getMonth() + 1;
											var year = date.getFullYear();

											return year + '-' + month + '-'
													+ day;
										},
									});
						</script>
						<script>
							var picker = new Pikaday(
									{
										field : document
												.getElementById('e_datepicker'),
										format : 'YYYY년 MM월 DD일 (ddd)',
										i18n : {
											previousMonth : '이전달',
											nextMonth : '다음달',
											months : [ '1월', '2월', '3월', '4월',
													'5월', '6월', '7월', '8월',
													'9월', '10월', '11월', '12월' ],
											weekdays : [ '일요일', '월요일', '화요일',
													'수요일', '목요일', '금요일', '토요일' ],
											weekdaysShort : [ '일', '월', '화',
													'수', '목', '금', '토' ]
										},
										toString : function(date) {
											var day = date.getDate();
											var month = date.getMonth() + 1;
											var year = date.getFullYear();

											return year + '-' + month + '-'
													+ day;
										},
									});
						</script>
						<div id="search_ann_btn">
							<button type="button" id="select_ann">조회</button>
							<button type="reset" id="init_ann">검색 초기화</button>
							
						</div>
					</form>
				<form id="search_form">
				<table id="sup_list">
				<caption>공급사 리스트</caption>
						<thead>
							<tr >
								<th><input type="checkbox" name="check"></th>
								<th>번호</th>
								<th>택배사 코드</th>
								<th>택배사 명</th>
								<th>거래상태</th>
								<th>등록일자</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="check"></td>
								<td>1</td>
								<td>50000A</td>
								<td  onclick="location.href='adm_comm_comment_registration.do'">택배사 이름 1</td>
								<td>거래중</td>
								<td>yyyy/MM/dd</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="check"></td>
								<td>1</td>
								<td>50000A</td>
								<td  onclick="location.href='adm_comm_comment_registration.do'">택배사 이름 1</td>
								<td>거래중</td>
								<td>yyyy/MM/dd</td>
							</tr>
						
						</tbody>
					</table>
				</form>
					<button type="button" class="select_ann1" onclick="adm_comm_comment_management()" >등록</button>
			</div>
		</section>
	</main>
</body>
</html>