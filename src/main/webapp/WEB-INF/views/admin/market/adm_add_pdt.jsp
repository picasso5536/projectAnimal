<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_product_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="add_pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">상품 관리</span> <span id="sep2">></span> <span
				id="page_sKate">상품 등록</span>
			<div class="add_pdt">
				<form id="search_form">
					<table>
						<caption>기본정보</caption>
						<tbody>
							<tr>
								<th class="title">상품분류</th>
								<td colspan="4">
									<select name="top" >
									    <option value="none">::대분류::</option>
									    <option value="cat">고양이</option>
									    <option value="dog">강아지</option>
									  </select>
									  <select name="mid" >
									    <option value="none">::중분류::</option>
									    <option value="food">식품</option>
									    <option value="snack">간식</option>
									    <option value="toy">장난감</option>
									    <option value="house">하우스</option>
									    <option value="wear">의류</option>
									  </select>
									  <select name="bott" >
									    <option value="none">::소분류::</option>
									    <option value="cat">건식</option>
									    <option value="dog">주식파우치</option>
									    <option value="dog">생식</option>
									    <option value="dog">분유/우유</option>
									  </select>
									  <input type="button" value="추가" id="search_btn">
								</td>
							<tr>
								<th class="title">상품명</th>
								<td colspan="4">
									  <input type="text" name="pdt_name" size="50">
								</td>
							</tr>
							<tr>
								<th class="title">등록업체</th>
								<td colspan="4">
									  <input type="text" name="pdt_name" size="50">
								</td>
							</tr>
							<tr>
								<th class="title">상품진열</th>
								<td colspan="4">
									<input type="radio" name="show_yn" value="" checked>진열&nbsp;&nbsp;&nbsp;
									<input type="radio" name="show_yn" value="">진열안함
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>가격 및 재고</caption>
						<tbody>
							<tr>
								<th class="title">판매가</th>
								<td colspan="2">
									  <input type="text" name="m_name" size="30"> P
								</td>
								<th class="title">정가</th>
								<td colspan="2">
									  <input type="text" name="m_name" size="30"> P
								</td>
							</tr>
							<tr>
								<th class="title">적립금</th>
								<td colspan="2">
									  <input type="text" name="m_name" size="30"> P
								</td>
								<th class="title">재고량</th>
								<td colspan="2">
									<input type="radio" name="show_yn" value="" checked>품절&nbsp;&nbsp;&nbsp;
									<input type="radio" name="show_yn" value="">무제한&nbsp;&nbsp;&nbsp;
									<input type="radio" name="show_yn" value="">수량
									<input type="text" name="su" size="5"> 개
									
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>배송비</caption>
						<tbody>
							<tr>
								<th class="title">검색조건</th>
								<td colspan="3">
									<input type="radio" name="show_yn" value="" checked>기본 배송정책&emsp;&emsp;
									<input type="radio" name="show_yn" value="">무료배송&emsp;&emsp;
									<input type="radio" name="show_yn" value="">상품별 배송비
									<input type="text" name="su" size="6"> P&emsp;&emsp;
									<input type="radio" name="show_yn" value="">수신자부담(착불)
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>상품사진&emsp;&emsp;
							<label style="font-size: 16px; font-weight: 400;">
								<input type="checkbox" name="add_img" value="">이미지 추가
							</label>
						</caption>
						<tbody>
							<tr>
								<th class="title">원본 이미지</th>
								<td colspan="4">
									<input type="file" name="f_param"/>
								</td>
							</tr>
							<tr>
								<th class="title">이미지 확인</th>
								<td colspan="5">
									<img alt="" src="resources/img/market/pdt.jpg" style="width: 250px; margin-left: 10px;">
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>제품 상세정보</caption>
						<tbody>
							<tr>
								<th class="title">상품 설명 이미지</th>
								<td colspan="4">
									<input type="file" name="f_param"/>
								</td>
							</tr>
							<tr>
								<th class="title">이미지 확인</th>
								<td colspan="5">
									<img alt="" src="resources/img/market/info.jpg" style="width: 300px; margin-left: 10px;">
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