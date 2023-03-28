<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보관리</title>
<link rel="stylesheet" href="resources/css/admin_css/ad_crm.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="ad_navbar.jsp"></jsp:include>
		<section id="sec1">
			<ul id="crm_sub">
				<li class="mli">고객 정보관리</li>
				<li class="mli">관리자 계정관리</li>
				<li class="mli">고객 포인트 관리</li>
				<li class="mli">약관 관리</li>
			</ul>
			<div class="banned">
				<table>
					<thead>
						<tr>
							<th>고객 고유번호</th>
							<th>이름</th>
							<th>아이디</th>
							<th>휴대전화</th>
							<th>생년월일</th>
							<th>가입일</th>
							<th>탈퇴여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="고객정보 상세">AS34FS8GJEL</a></td>
							<td><a href="고객정보 상세">문년지</a></td>
							<td><a href="고객정보 상세">test1</a></td>
							<td>010-1111-2222</td>
							<td>1997.03.19</td>
							<td>2022.03.19</td>
							<td> O </td>
						</tr>
						<tr>
							<td>3</td>
							<td>커뮤니티</td>
							<td><a href="my_inquire_view.do">게시글 삭제 문의합니다.</a></td>
							<td><a href="my_answer_view.do" class="processing">처리 완료 / 답변</a></td>
							<td>2022.03.20 23:15:47</td>
						</tr>
						<tr>
							<td>2</td>
							<td>추모</td>
							<td><a href="my_inquire_view.do">분위기 저해 게시글에 대하여</a></td>
							<td><a href="my_answer_view.do" class="processing">처리 완료 / 답변</a></td>
							<td>2022.03.15 13:22:28</td>
						</tr>
						<tr>
							<td>1</td>
							<td>마켓</td>
							<td><a href="my_inquire_view.do">가격이 잘못 표기되었어요 ~</a></td>
							<td><a href="my_answer_view.do" class="processing">처리 완료 / 답변</a></td>
							<td>2022.03.13 18:49:32</td>
						</tr>
					</tbody>
				</table>
				<button type="button" id="inquire_btn">문의하기</button>
			</div>
		</section>
	</main>
</body>
</html>