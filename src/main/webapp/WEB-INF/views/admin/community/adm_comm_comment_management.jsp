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
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
			<div class="search_pdt">
				<form id="search_form">
				<table id="sup_list">
				<caption>택배사 리스트</caption>
						<tbody>
							<tr>
								<th scope="row" class="title">공급사명</th>
								<td><input class="input_1" type="text"></td>
							</tr>
							<tr>
								<th scope="row" class="title">공급사 코드</th>
								<td>자동 생성</td>
							</tr>
							<tr>
								<th scope="row" class="title">사용여부</th>
								<td>
									<input type="radio" name="using" checked>사용함&emsp;&emsp;
									<input type="radio" name="using">사용안함
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">공급사 유형</th>
								<td>
									<input type="radio" name="type" checked>사입&emsp;&emsp;&emsp;
									<input type="radio" name="type">직배송
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">공급사 구조</th>
								<td>
									<input type="radio" name="const" checked>도매&emsp;
									<input type="radio" name="const">사입업체&emsp;
									<input type="radio" name="const">입점업체&emsp;
									<input type="radio" name="const">기타
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">거래 상태</th>
								<td>
									<input type="radio" name="state" checked>거래중&emsp;&emsp;
									<input type="radio" name="state">거래중지&emsp;&emsp;
									<input type="radio" name="state">거래해지
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">거래상품유형</th>
								<td><input class="input_1" type="text" placeholder="예시)식품"></td>
							</tr>
							<tr>
								<th scope="row" colspan="2">
									<span class="search_btns" style="margin-left: 500px;">
										<input type="button" value="저장" id="insert_btn" onclick="location.href='admin_comm_comment.do'">
										<input type="reset" value="초기화" id="reset_btn">
									</span>
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