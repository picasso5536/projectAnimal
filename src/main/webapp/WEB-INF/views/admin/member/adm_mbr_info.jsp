<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_info_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">고객 정보관리</a></li>
				<li class="mli"><a class="ad-link" href="mbr_withdrawal.do">탈퇴회원관리</a></li>
			</ul>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text">
						검색조건 : 
						<select name="bott" >
						    <option value="none">고유번호</option>
						    <option value="cat">고객 이름</option>
						    <option value="dog">고객 아이디</option>
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
				<table>
					<thead>
						<tr>
							<th>고객 고유번호</th>
							<th>이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>휴대전화</th>
							<th>생년월일</th>
							<th>가입일</th>
							<th>탈퇴여부</th>
						</tr>
					</thead>
					<tbody>
						<tr onclick="location.href='member_update.do'">
							<td>AS34FS8GJEL</td>
							<td>문년지</td>
							<td>test1</td>
							<td>test1</td>
							<td>010-1111-2222</td>
							<td>1997.03.19</td>
							<td>2022.03.19</td>
							<td> X </td>
						</tr>
						<tr onclick="location.href='member_update.do'">
							<td>AS34FS8GJEL</td>
							<td>문년지</td>
							<td>test1</td>
							<td>test1</td>
							<td>010-1111-2222</td>
							<td>1997.03.19</td>
							<td>2022.03.19</td>
							<td> X </td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</main>
</body>
</html>