<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 등록</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_coupon_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">쿠폰 관리</span> <span id="sep2">></span> <span
				id="page_sKate">쿠폰 등록</span>
			<div class="add_coupon">
				<form id="search_form">
					<table>
						<caption>쿠폰 등록</caption>
						<tbody>
							<tr>
								<th class="title">쿠폰명</th>
								<td colspan="4">
									<input type="text" name="c_name" size="50">
								</td>
							<tr>
							<tr>
								<th class="title">기간</th>
								<td colspan="4">
									<input type="date" name="c_s_day" size="15">&nbsp;~&nbsp;
									<input type="date" name="c_e_day" size="15">
								</td>
							<tr>
							<tr>
								<th class="title">할인율</th>
								<td colspan="4">
									<span class="r_label">
										<input type="number" name="c_name" size="20" min="1">&emsp;&emsp;
										<input type="radio" name="dc_type" value="" checked>% 퍼센트
										&nbsp;&nbsp;&nbsp;
										<input type="radio" name="dc_type" value="">원
									</span>
								</td>
							<tr>
							<tr>
								<th class="title">수량</th>
								<td colspan="4">
									 <select name="" style="min-width: 200px;">
									    <option value="none">::수량제한::</option>
									    <option value="coupon1">??</option>
									    <option value="coupon2">??</option>
									 </select>
								</td>
							</tr>
							<tr>
								<th class="title">발급회원</th>
								<td colspan="4">
									 <select name="" style="min-width: 200px;">
									    <option value="none">::발급범위::</option>
									    <option value="coupon1">전체발급</option>
									    <option value="coupon2">지정발급</option>
									 </select>
								</td>
							</tr>
							<tr>
								<th class="title">지정발급 선택</th>
								<td class="cbox_td" colspan="4">
									 <span><input type="checkbox" name="scope" value="">신규가입자</span>
									 <span><input type="checkbox" name="scope" value="">생일자</span>
									 <span><input type="checkbox" name="scope" value="">강아지등록회원</span>
									 <span><input type="checkbox" name="scope" value="">고양이등록회원</span>
								</td>
							</tr>
							<tr class="t_bottom">
								<td colspan="5">
									<button class="b_btn" onclick="()">쿠폰 등록</button>
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