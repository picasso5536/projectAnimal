<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>택배사 등록</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_sup_style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_info_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function comment() {
	var result = confirm("등록 하시겠습니까?");
	if(result){
		location.href="admin_comm_comment.do";
	}else {
	}
}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
			<div class="search_pdt">
				<form id="search_form">
					<h2 style="margin-left: 10px;">택배사 등록</h2>
					<span style="margin-left:10px;  color: red; font-size: 15px; ">지역할증 2500p 고정</span>
					<table class="type07">
						<tbody>
							<tr>
								<th scope="row" class="title">택배사 이름</th>
								<td>
									&emsp;&emsp;<input type="text" name="deliver" placeholder="예)한진택배">&emsp;
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">배송무료</th>
								<td>
									<input type="radio" name="deliver" checked>&emsp;배송비 전액무료
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">수신자 부담(착불)</th>
								<td>
									<input type="radio" name="deliver">&emsp;수신자 착불부담
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">고정값</th>
								<td>
									<input type="radio" name="deliver">
									<input class="input_1" type="text"placeholder="1,000"> P
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">지역 할증</th>
								<td colspan="3">
									<input type="radio" name="deliver">제주도
									<input type="radio" name="deliver">독도
									<input type="radio" name="deliver">울릉도
									<input type="radio" name="deliver">옥도
									<input type="radio" name="deliver">보령
								</td>
								
							</tr>
							<tr>
								<th scope="row" colspan="4">
										<input type="button" value="저장" id="insert_btn" onclick="comment()">
										<input type="reset" value="초기화" id="reset_btn">
								</th>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>