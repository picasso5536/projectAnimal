<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_sup_style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_info_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function admin_comm_comment() {
	location.href="admin_comm_comment.do";
}
</script>
<style type="text/css">
.text{
white-space:nowrap;
	border: none; 
 	background: transparent;
	user-select: none; 
	font-size: 20px; 
} 
</style>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
			<div class="search_pdt">
				<form id="search_form">
				<table id="sup_list">
						<caption>공급사 정보</caption>
						<tbody>
							<tr>
								<th class="title">공급사 명</th>
								<td><input placeholder="참 좋은 회사" class="text" type="text" style="height:23px; "></td>
								<th class="title">공급사 주소</th>
								<td><input placeholder="수원시 팔달구 매교동74-64" class="text" type="text" style="height:23px; "></td>
							</tr>
							<tr>
								<th class="title">전화번호</th>
								<td><input placeholder="010-4114-3331" class="text" type="text" style="height:23px; "></td>
								<th class="title">회사 전화</th>
								<td><input placeholder="031-1111-2222" class="text" type="text" style="height:23px; "></td>
							</tr>
							<tr>
								<th class="title">상품 유형</th>
								<td><input placeholder="의류" class="text" type="text" style="height:23px; "></td>
								<th class="title">거래 상태</th>
								<td><input placeholder="거래중" class="text" type="text" style="height:23px; "></td>
							</tr>
							<tr>
								<th class="title">공급사 정보</th>
								<td class="td_text" colspan="3">
									<textarea disabled style="resize: none;" name="content" id="content" cols="110" rows="20" readonly></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<button type="button" style="margin-left: 1000px;" onclick="admin_comm_comment()" >확인</button>
				</form>
			</div>
		</section>
	</main>
</body>
</html>