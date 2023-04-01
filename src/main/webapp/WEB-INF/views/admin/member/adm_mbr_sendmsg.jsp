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
								<td colspan="3">
									<select name="top" id="msg_type">
										<option value="">::종류::</option>
										<option value="">신고결과</option>
										<option value="">알림</option>
										<option value="">처리결과</option>
										<option value="">이벤트성</option>
									</select>
								</td>
							</tr>
							<tr>
								<th class="title">범위</th>
								<td>
									<select name="top" >
									    <option value="order_s">::발송범위::</option>
									    <option value="order">전체발송</option>
									    <option value="delivery_com">지정발송</option>
									  </select>
								<th class="title">수취인</th>
								<td>
									<input type="text" name="writer" size="25" placeholder="">
								</td>
							</tr>
							<tr>
								<th class="title">내용</th>
								<td class="td_text" colspan="3">
									<textarea name="content" id="content" cols="110" rows="20"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="보내기">
									<input type="reset" value="초기화">
									<input type="button" value="목록" onclick="sendupdate_go(this.form)"/>
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