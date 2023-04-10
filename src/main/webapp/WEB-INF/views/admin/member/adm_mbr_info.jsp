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
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">회원 정보관리</a></li>
				<li class="mli"><a class="ad-link" href="mbr_withdrawal.do">탈퇴회원관리</a></li>
			</ul>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text"> 검색조건 : <select name="bott">
							<option value="name">회원 이름</option>
							<option value="id">회원 아이디</option>
					</select> <input type="text" name="m_idx" size="25">
					</span> <span class="search_btns"> <input type="button" value="조회"
						id="search_btn"> <input type="reset" value="초기화"
						id="reset_btn">
					</span>
				</form>
			</div>
			<div class="member_list">
				<table id="table">
					<thead>
						<tr>
							<th></th>
							<th>이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>휴대전화</th>
							<th>생년월일</th>
							<th>가입일</th>
							<th>탈퇴여부</th>
						</tr>
					</thead>
					<tbody id="tbody">
					</tbody>
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
		      url: 'admin_mbr_info_search.do',
		      data: { bott: bott, m_idx: m_idx },
		      type: 'POST',
		      dataType: 'json',
		      success: function(data) {
		    	    // controller에서 보낸 mbrlist를 변수에 저장
		    	    var mbrlist = data.mbrlist;

		    	    // 테이블의 tbody 태그를 변수에 저장
		    	    var tbody = $("#tbody");

		    	    // tbody 태그의 내용을 초기화
		    	    tbody.empty();

		    	    // mbrlist를 반복문으로 확인하여 테이블에 추가
		    	    if (mbrlist.length > 0) {
		    	    	$.each(members, function(index, member) {
		                    var row = '<tbody><tr>';
		                    row += '<td>' + '</td>';
		                    row += '<td>' + mbr.name + '</td>';
		                    row += '<td>' + mbr.id + '</td>';
		                    row += '<td>' + mbr.nickname + '</td>';
		                    row += '<td>' + mbr.cellphone + '</td>';
		                    row += '<td>' + mbr.birth + '</td>';
		                    row += '<td>' + mbr.join + '</td>';
		                    row += '<td>' + (mbrlist[i].mbr_withdraw == 0 ? "탈퇴" : "가입") + '</td>';
		                    row += '</tr></tbody>';

		                    table.append(row);
		                });
		    	    } else {
		    	        // mbrlist가 비어있으면 테이블에 등록된 회원 정보가 없다는 메시지 추가
		    	        var msg = $("<tr><td colspan='9'><h2>등록된 회원 정보가 없습니다.</h2></td></tr>");
		    	        tbody.append(msg);
		    	    }
		    	},
		      error: function() {
		        alert('서버와 통신 중 오류가 발생했습니다.');
		      }
		    });
		  });
		});
	</script>
</body>
</html>