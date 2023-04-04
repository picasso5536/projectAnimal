<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 수정</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_inven_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function inven_info() {
		location.href="adm_mkt_inven_up.do";
	}
	function go_inven_list() {
		location.href="admin_mkt_inven.do";
	}
	
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">재고 관리</span> <span id="sep2">></span> <span
				id="page_sKate">재고 수정</span>
			<div class="search_list">
			<form>
					<table id="list_table">
						<caption>재고 수정</caption>
						<tbody>
							<tr>
								<th class="title">공급사명</th>
								<td colspan="2">
									   <input type="text" name="c_name" size="20" value="000" readonly>
								</td>
								<th class="title">공급사 고유번호</th>
								<td colspan="2">
									  132154
								</td>
							</tr>
							<tr>
								<th class="title">상품명</th>
								<td colspan="2">
									   <input type="text" name="c_name" size="20" value="어쩌구,,," readonly>
								</td>
								<th class="title">상품 고유번호</th>
								<td colspan="2">
									  32165484
								</td>
							</tr>
							<tr>
								<th class="title">공급사 전화번호</th>
								<td colspan="4">
									 <input type="text" name="m_name" size="10" value="02">&nbsp;-&nbsp;
									 <input type="text" name="m_name" size="10" value="0000">&nbsp;-&nbsp;
									 <input type="text" name="m_name" size="10" value="1111">
								</td>
							</tr>
							<tr>
								<th class="title">상품 대표이미지</th>
								<td colspan="4">
									<img src="resources/img/market/img_icon.png" style="width: 90px">
								</td>
							</tr>
							<tr>
								<th class="title">재고상태</th>
									<td colspan="5">
										<input type="radio" name="show_yn1" value="" checked>품절&nbsp;&nbsp;&nbsp;
										<input type="radio" name="show_yn1" value="">무제한&nbsp;&nbsp;&nbsp;
										<input type="radio" name="show_yn1" value="">공급지연&nbsp;&nbsp;&nbsp;
										<input type="radio" name="show_yn1" value="">입고대기&nbsp;&nbsp;&nbsp;
										<input type="radio" name="show_yn1" value="">수량
										<input type="text" name="su" size="5"> 개
									</td>
								<tr>
								<td colspan="5">
									<input type="button" onclick="inven_info()" value="수정하기">
									<input type="reset" value="초기화">
									<input type="button" onclick="go_inven_list()" value="목록">
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