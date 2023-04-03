<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 회원 관리 </title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_withdrawal_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
		<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="admin_mbr_info.do">고객 정보관리</a></li>
				<li class="mli"><a class="ad-link" href="#">탈퇴회원관리</a></li>
			</ul>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text">
					검색조건 : 
						<select name="bott" >
						    <option value="cat">고객 이름</option>
						    <option value="dog">고객 아이디</option>
						  </select>
						  <input type="text" name="m_name" size="25">
					</span>
					<br>
					<span class="search_text">
						&nbsp;&nbsp;탈퇴일&nbsp;&nbsp; : <input type="date" name="s_date" size="25">
						&nbsp;-&nbsp;
								<input type="date" name="e_date" size="25">
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
							<th>회원번호</th>
							<th>이름</th>
							<th>아이디</th>
							<th>계정생성일자</th>
							<th>탈퇴일자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>AS34FS8GJEL</td>
							<td>문년지</td>
							<td>test1</td>
							<td>2022.03.19</td>
							<td>2023.02.10</td>
						</tr>
						<tr>
							<td>AS34FS8GJEL</td>
							<td>문년지</td>
							<td>test1</td>
							<td>2020.03.19</td>
							<td>2022.12.31</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>
</body>
</html>