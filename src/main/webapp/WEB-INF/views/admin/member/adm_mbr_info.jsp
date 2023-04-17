<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 관리</title>
<link rel="stylesheet"
	href="resources/css/admin_mbr_css/mbr_info_style.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">회원 정보 관리</span> <span id="sep2">></span> <span
				id="page_sKate">고객 정보 관리</span>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text"> 검색조건 : <select name="bott">
							<option value="name">회원 이름</option>
							<option value="id">회원 아이디</option>
							<option value="withdraw">탈퇴 회원</option>
					</select> <input type="text" name="m_idx" size="25">
					</span> <span class="search_btns"> <input type="button" value="조회"
						id="search_btn"> <input type="reset" value="초기화"
						id="reset_btn">
					</span>
				</form>
			</div>
			<div class="member_list">
				<table class="mbr_table">
				</table>
			</div>
		</section>
	</main>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#search_btn').click(function() {
			var bott = $('select[name="bott"]').val();
		    var m_idx = $('input[name="m_idx"]').val();
		    console.log(m_idx);
		    $.ajax({
		    url: 'admin_mbr_info_search.do',
		    data: { bott: bott, m_idx: m_idx, cPage:1 },
		    type: 'post',
		    dataType: 'json',
		    success: function(data) {
		    	
				console.log(data);
				$(".mbr_table").empty();
				var table="<thead><tr><th></th><th>이름</th><th>아이디</th><th>닉네임</th><th>휴대전화</th><th>생년월일</th><th>가입일</th><th>탈퇴여부</th></tr>";
				$(data).each(function(k,v){
					table += "<tr onclick=\"location.href='member_update.do?mbr_nickname=" + v["nickname"] + "'\">";
					var i = v["cnt"];
					var name = v["name"];
					var id = v["id"];
					var nickname = v["nickname"];
					var cellphone = v["cellphone"];
					var birth = v["birth"];
					var join = v["join"].substring(0, 10);
					var withdraw = v["withdraw"];
					
					table += "<td>" + i + "</td>";
					table += "<td>" + name + "</td>";
					table += "<td>" + id + "</td>";
					table += "<td>" + nickname + "</td>";
					table += "<td>" + "0"+ cellphone + "</td>";
					table += "<td>" + birth + "</td>";
					table += "<td>" + join + "</td>";
					table += "<td>" + (withdraw == 0 ? "탈퇴" : "가입") + "</td>";
					table += "</tr>";
				})
					table += "</tbody>"
					$(".mbr_table").append(table);
		    },
		    error: function() {
		    	$(".mbr_table").empty();
		    }
		  });
		});
	});
	</script>
</body>
</html>