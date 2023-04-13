<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 정보관리</title>
<link rel="stylesheet"
	href="resources/css/admin_mbr_css/admin_info_style.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
		const toggleList = document.querySelectorAll(".toggleSwitch");

		toggleList.forEach(($toggle) => {
		  $toggle.onclick = () => {
		    $toggle.classList.toggle('active');
		  }
		});
	
}); 

function adm_more_info() {
	location.href="adm_more_info.do";
}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">관리자 정보관리</a></li>
				<li class="mli"><a class="ad-link" href="ad_acc_create.do">관리자
						계정 만들기</a></li>
				<li class="mli"><a class="ad-link" href="ad_acc_update.do">(임시)
						계정 수정</a></li>

			</ul>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text"> 검색조건 : <select name="bott">
							<option value="idx">관리자 번호</option>
							<option value="name">관리자 이름</option>
							<option value="id">관리자 아이디</option>
					</select> <input type="text" name="m_idx" size="25">
					</span> <span class="search_btns"> <input type="button" value="조회"
						id="search_btn"> <input type="reset" value="초기화"
						id="reset_btn">
					</span>
				</form>
			</div>
			<div class="member_list">
				<table class="adm_table">
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
		    $.ajax({
		    url: 'admin_mbr_admin_info_search.do',
		    data: { bott: bott, m_idx: m_idx, cPage:1 },
		    type: 'post',
		    dataType: 'json',
		    success: function(data) {
		    	
				console.log(data);
				$(".adm_table").empty();
				var table="<thead><tr><th></th><th>관리자 번호</th><th>이름</th><th>아이디</th><th>최근 접속일</th><th>계정 생성일</th><th>활성/비활성</th></tr>";
				$(data).each(function(k,v){
					table += "<tr onclick=\"location.href='adm_more_info.do?adm_idx=" + v["idx"] + "'\">";
					var i = v["cnt"];
					var idx = v["idx"];
					var name = v["name"];
					var id = v["id"];
					var access = v["access"];
					var join = v["join"].substring(0, 10);
					var state = v["state"];
					
					table += "<td>" + i + "</td>";
					table += "<td>" + idx + "</td>";
					table += "<td>" + name + "</td>";
					table += "<td>" + id + "</td>";
					table += "<td>" + access + "</td>";
					table += "<td>" + join + "</td>";
					table += "<td>" + state + "</td>";
					table += "</tr>";
				})
					table += "</tbody>"
					$(".adm_table").append(table);
		    },
		    error: function() {
		    	$(".adm_table").empty();
		    }
		  });
		});
	});
	</script>
</body>
</html>