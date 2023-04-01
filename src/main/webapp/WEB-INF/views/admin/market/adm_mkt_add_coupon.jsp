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
									<button class="b_btn" onclick="">전체발급</button>
									<button class="b_btn" onclick="">지정발급</button>
									<table class="inner_t">
										<thead>
											<tr>
												<th>번호</th>
												<th>회원아이디</th>
												<th>쿠폰이름</th>
												<th>사용여부</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>test1</td>
												<td>가입축하쿠폰</td>
												<td>Y</td>
												<td>
													<button class="del_btn" onclick="cp_del()">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>test1</td>
												<td>가입축하쿠폰</td>
												<td>Y</td>
												<td>
													<button class="del_btn" onclick="cp_del()">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>test1</td>
												<td>가입축하쿠폰</td>
												<td>Y</td>
												<td>
													<button class="del_btn" onclick="cp_del()">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>test1</td>
												<td>가입축하쿠폰</td>
												<td>Y</td>
												<td>
													<button class="del_btn" onclick="cp_del()">삭제</button>
												</td>
											</tr>
										</tbody>
									</table>
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