<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 계정 수정 </title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/ad_acc_create.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">계정 수정</span>
			<div class="member_list">
				<form>
					<table>
						<caption>관리자 계정 수정</caption>
						<tbody>
							<tr>
								<th class="title">아이디</th>
								<td colspan="3">
									<input type="text" name="ad_id" size="27" value="admin_test1" readonly>
								</td>
							</tr>
							<tr>
								<th class="title">현재 비밀번호</th>
								<td colspan="3">
									<input type="password" name="admin_pwd" size="27">
								</td>
							</tr>
							<tr>
								<th class="title">새 비밀번호</th>
								<td colspan="3">
									<input type="password" name="admin_pwd" size="27">
								</td>
							</tr>
							<tr>
								<th class="title">비밀번호 확인</th>
								<td colspan="3">
									<input type="password" name="admin_pwd" size="27">
								</td>
							</tr>
							<tr>
								<th class="title">이름</th>
								<td><input type="text" name="ad_name" size="27" placeholder="무년지" readonly></td>
							</tr>
							<tr>
								<th class="title">이메일</th>
								<td colspan="3">
									<input type="text" name="writer" size="20">
									&nbsp;@&nbsp;
									<select name="mail_page" >
									    <option value="none">직접입력</option>
									    <option value="google">gmail.com</option>
									    <option value="naver">naver.com</option>
									    <option value="daum">daum.net</option>
									  </select>
									<input type="text" name="writer" size="20">
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="정보수정" onclick="ad_update_go(this.form)"/>
									<input type="reset" value="초기화"/>
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