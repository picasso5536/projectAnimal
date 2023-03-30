<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(임시)관리자 계정 생성 </title>
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
						<caption>관리자 계정 생성</caption>
						<tbody>
							<tr>
								<th class="title">아이디</th>
								<td colspan="3">
									<input type="text" name="ad_id" size="27" >
									<input type="button" name="ad_id_chk" value="중복확인">
								</td>
							</tr>
							<tr>
								<th class="title">비밀번호</th>
								<td colspan="3">
									<input type="text" name="admin_pwd" size="27">
									<input type="button" name="ad_pwd_create" value="비밀번호생성">
								</td>
							</tr>
							<tr>
								<th class="title">이름</th>
								<td><input type="text" name="ad_name" size="27" placeholder="무년지"></td>
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
									<input type="button" value="계정생성" onclick="ad_insert_go(this.form)"/>
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