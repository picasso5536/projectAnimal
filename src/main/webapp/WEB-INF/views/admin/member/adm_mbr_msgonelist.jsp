<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지 보내기</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_message_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="msg_sec">
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="admin_mbr_message.do">메시지 관리</a></li>
				<li class="mli"><a class="ad-link" href="#">메시지 보내기</a></li>
			</ul>
			<div class="send_msg">
				<form id="msg_form">
					<table id="list_table">
						<caption>메시지 전송</caption>
						<tbody>
							<tr>
								<th class="title">메시지 종류</th>
								<td>
									신고결과
								</td>
								<th class="title">전송일</th>
								<td>
									yyyy/MM/dd hh:mm:ss
								</td>
							</tr>
							<tr>
								<th class="title">발신관리자</th>
								<td>
									관리자1번
								</td>
								<th class="title">메시지 번호</th>
								<td>
									XXXXXX
								</td>
							</tr>
							<tr>
								<th class="title">수취인명</th>
								<td>
									무년
								</td>
								<th class="title">수취인닉네암</th>
								<td>
									test1
								</td>
							</tr>
							<tr>
								<th class="title">내용</th>
								<td colspan="3" style="text-align: left;">
									 신고 결과를 알려드립니다.<br>
									 고객님이 신고한 어쩌구.. 저쩌구...
									 처리결과가.. 어쩌구,,,
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="목록" onclick="location.href='admin_mbr_message.do'"/>
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