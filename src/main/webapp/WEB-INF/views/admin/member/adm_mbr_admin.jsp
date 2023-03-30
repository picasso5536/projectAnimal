<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 정보관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/admin_info_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#admin_link").click(function() {
		location.href="member_update.do";
		
	});
		const toggleList = document.querySelectorAll(".toggleSwitch");

		toggleList.forEach(($toggle) => {
		  $toggle.onclick = () => {
		    $toggle.classList.toggle('active');
		  }
		});
	
}); 
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text">
						관리자 번호 : <input type="text" name="m_idx" size="25">
					</span>
					<span class="search_text">
						관리자 이름 : <input type="text" name="m_name" size="25">
					</span>
					<span class="search_text">
						관리자 아이디 : <input type="text" name="m_id" size="25">
					</span>
					<span class="search_btns">
						<input type="button" value="조회" id="search_btn">
						<input type="reset" value="초기화" id="reset_btn">
					</span>
				</form>
			</div>
			<div class="member_list">
				<table>
					<thead>
						<tr>
							<th>관리자 번호</th>
							<th>이름</th>
							<th>아이디</th>
							<th>최근접속일자</th>
							<th>계정생성일자</th>
							<th>활성화/비활성화</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>AS34FS8GJEL</td>
							<td>문년지</td>
							<td>test1</td>
							<td>2023.02.10</td>
							<td>2022.03.19</td>
							<td>
								<label for="toggle" class="toggleSwitch">
								  <span class="toggleButton"></span>
								</label>
							</td>
						</tr>
						<tr>
							<td>AS34FS8GJEL</td>
							<td>문년지</td>
							<td>test1</td>
							<td>2022.12.31</td>
							<td>2020.03.19</td>
							<td>
								<label for="toggle" class="toggleSwitch blue">
								  <span class="toggleButton"></span>
								</label>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>
</body>
</html>