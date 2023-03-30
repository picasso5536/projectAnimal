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

table td {
	cursor: pointer;
}

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
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
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).on(
			"click",
			"#terms1",
			function() {
				//$(".replyModal").attr("style", "display:block;");
				$(".replyModal").fadeIn(200);
				var repNum = $(this).attr("data-repNum");
				var repCon = $(this).parent().parent()
						.children(".replyContent").text();
				$(".modal_repCon").val(repCon);
				$(".modal_modify_btn").attr("data-repNum", repNum);
			});
	$(document).on(
			"click",
			"#terms2",
			function() {
				//$(".replyModal").attr("style", "display:block;");
				$(".replyModal").fadeIn(200);
				var repNum = $(this).attr("data-repNum");
				var repCon = $(this).parent().parent()
						.children(".replyContent").text();
				$(".modal_repCon").val(repCon);
				$(".modal_modify_btn").attr("data-repNum", repNum);
			});
	$(document).on(
			"click",
			"#terms3",
			function() {
				//$(".replyModal").attr("style", "display:block;");
				$(".replyModal").fadeIn(200);
				var repNum = $(this).attr("data-repNum");
				var repCon = $(this).parent().parent()
						.children(".replyContent").text();
				$(".modal_repCon").val(repCon);
				$(".modal_modify_btn").attr("data-repNum", repNum);
			});
	$(document).on(
			"click",
			"#terms4",
			function() {
				//$(".replyModal").attr("style", "display:block;");
				$(".replyModal").fadeIn(200);
				var repNum = $(this).attr("data-repNum");
				var repCon = $(this).parent().parent()
						.children(".replyContent").text();
				$(".modal_repCon").val(repCon);
				$(".modal_modify_btn").attr("data-repNum", repNum);
			});
</script>
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
								<td id="terms1">블라블라1</td>
							</tr>
							<tr>
								<th>개인 정보의 수집 항목 및 수집 방법</th>
								<td id="terms2">블라블라2</td>
							</tr>
							<tr>
								<th>개인 정보의 수집 목적 및 이용 목적</th>
								<td id="terms3">블라블라3</td>
							</tr>
							<tr>
								<th>개인 정보의 보유 및 이용 기간</th>
								<td id="terms4">블라블라4</td>
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
				<button type="button" class="modal_regist_btn">등록</button>
				<button type="button" class="modal_cancel">취소</button>
			</div>
		</div>
		<div class="modalBackground"></div>
	</div>
	<script>
		$(".modal_cancel").click(function() {
			$(".replyModal").attr("style", "display:none;");
		});

		$(".modal_regist_btn").click(function() {
			var modifyConfirm = confirm("등록하시겠습니까?");
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
						alert("등록 에러")
					}
				});
			}
		});
	</script>
</body>
</html>