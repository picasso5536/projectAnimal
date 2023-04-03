<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 관리</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_review_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">리뷰 관리</span> <span id="sep2">></span> <span
				id="page_sKate">리뷰 상세</span>
			<div class="review11">
				<form id="search_form">
					<table>
						<caption>리뷰 상세보기</caption>
						<tbody>
							<tr>
								<th class="title">상품 고유번호</th>
								<td class="td_text">XXXXXXXX</td>
								<th class="title">상품이름</th>
								<td class="td_text">박스그냥박스</td>
							</tr>
							<tr>
								<th class="title">작성자</th>
								<td class="td_text">닉네임</td>
								<th class="title">작성일</th>
								<td class="td_text">yyyy/MM/dd</td>
							</tr>
							<tr>
								<th class="title">좋아요</th>
								<td class="td_text">XXXX</td>
								<th class="title">싫어요</th>
								<td class="td_text">XXXX</td>
							</tr>
							<tr>
								<th class="title">별점</th>
								<td colspan="3">
									<div class="star">
									<div class="stars_img">
										<div class="star-fill space-x-2 text-lg" :style="{width: 4%}">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
										<div class="star-base space-x-2 text-lg">
											<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
										</div>
									</div>
									<span class="stars_score">4.6</span>
								</div>
								</td>
							</tr>
							<tr>
								<th class="title">리뷰이미지</th>
								<td colspan="3">
									<img alt="" src="resources/img/market/pdt.jpg" style="width: 250px; margin-left: 10px;">
								</td>
							</tr>
							<tr>
								<th class="title">리뷰 내용</th>
								<td class="td_text" colspan="3">
									<textarea name="content" id="content" cols="116" rows="24" readonly></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="삭제" onclick="del_go(this.form)">
									<input type="button" value="목록" onclick="location.href='admin_mkt_review.do'">
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