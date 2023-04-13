<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 상세보기 </title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/ad_acc_create.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="member_list">
				<form>
					<table>
						<caption>관리자 상세</caption>
						<tbody>
							<tr>
								<th class="title">관리자 고유번호</th>
								<td>${avo.adm_idx}</td>
								<th class="title">계정생성일</th>
								<td>${avo.adm_join}</td>
							</tr>
							<tr>
								<th class="title">관리자 이름</th>
								<td>${avo.adm_name}</td>
								<th class="title">관리자 아이디</th>
								<td>${avo.adm_id}</td>
							</tr>
							<tr>
								<th class="title">최근 접속일</th>
								<td>${avo.adm_access}</td>
							</tr>
							<tr>
								<th class="title">이메일</th>
								<td colspan="3">
									${avo.adm_email}
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="목록" onclick="location.href='admin_mbr_admin.do'">
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