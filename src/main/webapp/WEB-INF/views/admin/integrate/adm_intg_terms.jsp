<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

#regist_btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
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

#regist_btn:hover {
	background-color: #2980b9;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).on("click", "#terms1, #terms2, #terms3, #terms4", function() {
		var repNum = $(this).attr("data-repNum");
		var termsName = $(this).closest('tr').find('th').text();
		var termsInfo = $(this).text();
		$(".modal_repCon").val(termsInfo);
		$(".modal_modify_btn").attr("data-repNum", repNum);
		$(".modal_terms_name").text(termsName);
		$(".replyModal").fadeIn(200);
	});

	$(document).on("click", ".terms td", function() {
		var termsName = $(this).prev().text();
		var termsInfo = $(this).text();
		$(".modal_repCon").val(termsInfo);
		$(".modal_modify_btn").attr("data-termsName", termsName);
		$(".modal_modify_btn").attr("data-termsInfo", termsInfo);
		$(".modal_modify_btn").parent().attr("data-termsName", termsName); // 추가된 코드
		$(".replyModal").fadeIn(200);
	});

	$(document).on("click", ".modal_cancel", function() {
		$(".replyModal").fadeOut(200);
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
							<c:choose>
								<c:when test="${empty termslist}">
								</c:when>
								<c:otherwise>
									<c:forEach items="${termslist}" var="k">
										<tr>
											<th id="idx">${k.terms_name}</th>
											<td>${k.terms_info}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
				<button type="button" id="regist_btn" class="modal_regist_btn" onclick="location.href='admin_intg_terms_reg.do'">등록</button>
			</div>
		</section>
	</main>
	<div class="replyModal">
		<div class="modalContent">
			<div>
				<textarea class="modal_repCon" name="modal_repCon"></textarea>
			</div>
			<div>
				<button type="button" class="modal_update_btn">수정</button>
				<button type="button" class="modal_delete_btn">삭제</button>
				<button type="button" class="modal_cancel">취소</button>
			</div>
		</div>
		<div class="modalBackground"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$(document).on("click", ".modal_delete_btn", function() {
			var deleteConfirm = confirm("삭제하시겠습니까?");
			if (deleteConfirm) {
				var termsName = $("#idx").text();
				console.log(termsName);
				$.ajax({
					url : "admin_delete_terms.do",
					type : "post",
					data : {
						termsName : termsName
					},
					async : false,
					success : function(result) {
						if (result == "1") {
							$(".replyModal").fadeOut(200);
							location.reload();
						} else {
							alert("오류입니다.");
						}
					},
					error : function() {
						alert("삭제 에러")
					}
				});
			}
		});

		$(document).on("click", ".modal_update_btn", function() {
			var updateConfirm = confirm("수정하시겠습니까?");
			if (updateConfirm) {
				var termsName = $("#idx").text();
				var termsInfo = $(".modal_repCon").val();
				console.log(termsName);
				console.log(termsInfo);
				$.ajax({
					url : "admin_update_terms.do",
					type : "post",
					data : {
						termsName : termsName,
						termsInfo : termsInfo
					},
					async : false,
					success : function(result) {
						if (result == "1") {
							$(".replyModal").fadeOut(200);
							location.reload();
						} else {
							alert("오류입니다.");
						}
					},
					error : function() {
						alert("수정 에러")
					}
				});
			}
		});
	</script>
</body>
</html>