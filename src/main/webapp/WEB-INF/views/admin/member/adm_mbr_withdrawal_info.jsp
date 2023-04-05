<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 회원 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_update_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">탈퇴회원 관리</span> <span id="sep2">></span> <span
				id="page_sKate">탈퇴회원 상세</span>
			<div class="member_list">
				<form>
					<table>
						<caption>탈퇴 회원 정보</caption>
						<tbody>
							<tr>
								<th class="title">가입일</th>
								<td class="td_text">yyyy/MM/dd</td>
								<th class="title">탈퇴일자</th>
								<td>yyyy/MM/dd</td>
							</tr>
							<tr>
								<th class="title">아이디</th>
								<td>test1</td>
								<th class="title">닉네임</th>
								<td>무년</td>
							</tr>
							<tr>
								<th class="title">이름</th>
								<td colspan="3">무년지</td>
							</tr>
							<tr>
								<th class="title">Phone</th>
								<td>010-1234-5678</td>
								<th class="title">집전화</th>
								<td>-</td>
							</tr>
							<tr>
								<th class="title">이메일</th>
								<td colspan="3">
									fkfkfkdksh@naver.com
								</td>
							</tr>
							<tr>
								<th class="title">관심분야</th>
								<td class="td_text" colspan="3">강아지 / 고양이 / 햄스터 / 기니피그</td>
							</tr>
							<tr>
								<th class="title">주소</th>
								<td class="addr_text" colspan="3">
									서울특별시 마포구 백범로23
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="목록" onclick="location.href='mbr_withdrawal.do'"/>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>