<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_point_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function p_pay(nickname) {
		var result = confirm("포인트를 변경하시겠습니까?");
		if(result){
			var url = "point_chk.do?mbr_nickname="+nickname;
	        var name = "point popup";
	        var option = "width=700,height=680,location=no,toolbar=no,menubar=no,status=no,scrollbars=no"
	        window.open(url, name, option);			
		}else{
			alert("변경이 취소되었습니다.");
		}
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
		<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">고객 포인트 조회</a></li>
				<li class="mli"><a class="ad-link" href="adm_p_add_req.do">포인트 충전 신청</a></li>
			</ul>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text">
					&nbsp;&nbsp;검색조건 &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
					<select name="bott" >
						<option value="name">회원명</option>
						<option value="id">회원 아이디</option>
					</select>
					<input type="text" name="m_idx" size="25">
					</span>
					<span class="search_btns">
						<input type="button" value="조회" id="search_btn">
						<input type="reset" value="초기화" id="reset_btn">
					</span>
				</form>
			</div>
			<div class="member_list">
				<form action="">
					<table class="point_table">
					</table>
				</form>
			</div>
		</section>
	</main>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#search_btn').click(function() {
			var bott = $('select[name="bott"]').val();
		    var m_idx = $('input[name="m_idx"]').val();
		    $.ajax({
		    url: 'admin_mbr_point_search.do',
		    data: { bott: bott, m_idx: m_idx, cPage:1 },
		    type: 'post',
		    dataType: 'json',
		    success: function(data) {
		    	
				console.log(data);
				$(".point_table").empty();
				var table="<thead><tr><th></th><th>이름</th><th>아이디</th><th>현재 포인트</th><th></th><th></th></tr>";
				$(data).each(function(k,v){
					table += "<tr>";
					var i = v["cnt"];
					var name = v["name"];
					var id = v["id"];
					var point = v["point"];
					var nickname = v["nickname"];
					
					table += "<td>" + i + "</td>";
					table += "<td>" + name + "</td>";
					table += "<td>" + id + "</td>";
					table += "<td>" + point + "</td>";
					table += "<td><button class=\"pay_btn\" onclick=\"p_pay('" + nickname + "')\">변경</button></td>";
					table += "<td><button type=\"button\" class=\"more_btn\" onclick=\"location.href='adm_point_info.do'\">상세</button></td>";
					table += "</tr>";
				})
					table += "</tbody>"
					$(".point_table").append(table);
		    },
		    error: function() {
		    	$(".point_table").empty();
		    }
		  });
		});
	});
	</script>
</body>
</html>