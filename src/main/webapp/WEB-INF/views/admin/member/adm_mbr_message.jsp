<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_message_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">

$(document).ready(function() {
	$("#mem_link").click(function() {
		location.href="member_update.do";
	});
	
}); 
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="msg_sec">
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">메시지 관리</a></li>
				<li class="mli"><a class="ad-link" href="adm_send_msg.do">메시지 보내기</a></li>
			</ul>
			<div class="send_msg">
				<form id="msg_form">
					<table id="list_table">
						<caption>검색</caption>
						<tbody>
							<tr>
								<th class="title">종류검색</th>
								<td colspan="4">
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
								<th class="title">범위검색</th>
								<td colspan="4">
									<select name="top" >
									    <option value="order_s">::발송범위::</option>
									    <option value="order">전체발송</option>
									    <option value="delivery_com">지정발송</option>
									  </select>
								</td>
							</tr>
							<tr>
								<th class="title">검색조건</th>
								<td colspan="4">
									<select name="top" >
									    <option value="">::검색조건::</option>
									    <option value="">고객명</option>
									    <option value="">닉네임</option>
									    <option value="">아이디</option>
									 </select>
									 <input type="text" name="m_name" size="15">
								  	 <input type="button" value="조회" id="search_btn">
								</td>
							</tr>
						</tbody>
					</table>
				<table>
					<thead>
						<tr onclick="location.href='mbr_msg_onelist.do'">
							<th></th>
							<th>보낸날짜</th>
							<th>고객명</th>
							<th>닉네임</th>
							<th>내용</th>
							<th>종류</th>
						</tr>
					</thead>
					<tbody>
						<tr onclick="location.href='mbr_msg_onelist.do'">
							<td>1</td>
							<td>2023.03.19</td>
							<td>무년</td>
							<td>test1</td>
							<td>신고결과를 알려드립니다....</td>
							<td>신고결과</td>
						</tr>
						<tr onclick="location.href='mbr_msg_onelist.do'">
							<td>1</td>
							<td>2023.03.19</td>
							<td>무년</td>
							<td>test1</td>
							<td>**이벤트 참여결과를 알려드립니다**</td>
							<td>이벤트성</td>
						</tr>
						<tr onclick="location.href='mbr_msg_onelist.do'">
							<td>1</td>
							<td>2023.03.19</td>
							<td>무년</td>
							<td>test1</td>
							<td>**어쩌구 저쩌구에 대한 알림** ...</td>
							<td>알림</td>
						</tr>
					</tbody>
				</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>