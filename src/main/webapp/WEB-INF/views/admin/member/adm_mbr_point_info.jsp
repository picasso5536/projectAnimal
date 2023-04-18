<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 관리</title>
<link rel="stylesheet"
	href="resources/css/admin_mbr_css/mbr_point_style.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="point_info">
				<h2>XXX 회원 포인트 상세</h2>
				<form id="search_form" style="margin-top: 20px;">
					<span class="search_text"> &nbsp;&nbsp;검색조건
						&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; <select name="bott">
							<option value="">::종류선택::</option>
							<option value="all">전체</option>
							<option value="add">포인트 지급</option>
							<option value="subtraction">포인트 차감</option>
					</select>
					</span> <br> <span class="search_text"> &nbsp;&nbsp;날짜
						조회&nbsp;&nbsp; : <input type="date" name="s_date" size="25">
						&nbsp;-&nbsp; <input type="date" name="e_date" size="25">
					</span> <span class="search_btns"> <input type="button" value="조회"
						id="search_btn"> <input type="reset" value="초기화"
						id="reset_btn">
					</span>
				</form>

					<table class="p_info_t">
					</table>
					<div class="point_list_div">
						<button type="button" class="more_btn"
							onclick="location.href='admin_mbr_point.do'">목록</button>
					</div>
			</div>
		</section>
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#search_btn').click(function() {
				var bott = $('select[name="bott"]').val();
				var s_date = $('input[name="s_date"]').val();
				var e_date = $('input[name="e_date"]').val();
				var nickname = '${mbr_nickname}';
				$.ajax({
					url : 'admin_mbr_point_detail_search.do',
					data : {
					nickname : nickname,
					bott : bott,
					s_date : s_date,
					e_date : e_date,
					cPage : 1
				},
				type : 'post',
				dataType : 'json',
				success : function(data) {
					console.log(data);
					$(".p_info_t").empty();
					var table = "<thead><tr><th></th><th>닉네임</th><th>변동액</th><th>지급/차감</th><th>사유</th><th>변경관리자</th><th>변동일자</th><th>가용 포인트</th></tr>";
					$(data).each(function(k,v) {
						table += "<tr>";
						var i = v["cnt"];
						var nickname = v["nickname"];
						var amount = v["amount"];
						var content = v["content"];
						var date = v["date"];
						var point = v["point"];

						table += "<td>"+ i + "</td>";
						table += "<td>"+ nickname + "</td>";
						table += "<td>"+ amount + "</td>";
						table += "<td>"+ content + "</td>";
						table += "<td>"+ date + "</td>";
						table += "<td>"+ point + "</td>";
						table += "</tr>";
					})
					table += "</tbody>"
					$(".p_info_t").append(table);
				},
				error : function() {
					$(".p_info_t").empty();
				}
			});
		});
	</script>
</html>