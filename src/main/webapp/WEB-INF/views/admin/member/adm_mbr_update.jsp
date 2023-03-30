<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정 </title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_update_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="member_list">
				<form>
					<table>
						<caption>고객 정보 수정</caption>
						<tbody>
							<tr>
								<th class="title">가입일</th>
								<td class="td_text">yyyy/MM/dd</td>
								<th class="title">마지막 로그인</th>
								<td class="td_text">yyyy/MM/dd HH:mm:ss</td>
							</tr>
							<tr>
								<th class="title">아이디</th>
								<td><input type="text" name="m_id" size="27" placeholder="test1"></td>
								<th class="title">비밀번호</th>
								<td></td>
							</tr>
							<tr>
								<th class="title">이름</th>
								<td><input type="text" name="m_name" size="27" placeholder="무년지"></td>
								<th class="title">포인트</th>
								<td><input type="text" name="subject" size="20" placeholder="350,000">&nbsp;P</td>
							</tr>
							<tr>
								<th class="title">Phone</th>
								<td colspan="3"><input type="text" name="writer" size="30" placeholder="010-1234-5678"></td>
							</tr>
							<tr>
								<th class="title">집전화</th>
								<td colspan="3"><input type="text" name="writer" size="30" placeholder="-"></td>
							</tr>
							<tr>
								<th class="title">이메일</th>
								<td colspan="3">
									<input type="text" name="writer" size="15" placeholder="fkfkfkdksh">
									&nbsp;@&nbsp;
									<input type="text" name="writer" size="15" placeholder="naver.com">
								</td>
							</tr>
							<tr>
								<th class="title">이메일 수신여부</th>
								<td>
									<input type="radio" name="mail_yn" value="" checked>수신동의&nbsp;
									<input type="radio" name="mail_yn" value="">미동의
								</td>
								<th class="title">SNS 수신여부</th>
								<td>
									<input type="radio" name="sns_yn" value="" checked>수신동의&nbsp;
									<input type="radio" name="sns_yn" value="">미동의
								</td>
							</tr>
							<tr>
								<th class="title">정지횟수</th>
								<td class="td_text">XX 회</td>
								<th class="title">가입경로</th>
								<td class="td_text">지인추천</td>
							</tr>
							<tr>
								<th class="title">관심분야</th>
								<td class="td_text" colspan="3">강아지 / 고양이 / 햄스터 / 기니피그</td>
							</tr>
							<tr>
								<th class="title">주소</th>
								<td class="addr_text" colspan="3">
									<input type="text" name="writer" size="17" placeholder="우편번호검색">
									<input type="text" name="writer" size="17" placeholder="주소"><br>
									<input type="text" name="writer" size="43" placeholder="상세주소">
									</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="정보수정" onclick="sendupdate_go(this.form)"/>
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