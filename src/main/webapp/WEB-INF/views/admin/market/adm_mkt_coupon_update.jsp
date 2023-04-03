<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 수정</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_coupon_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function coupon_list() {
		location.href="admin_mkt_coupon.do";
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">쿠폰 관리</span> <span id="sep2">></span> <span
				id="page_sKate">쿠폰 수정</span>
			<div class="add_coupon">
				<form id="search_form">
					<table>
						<caption>쿠폰 수정</caption>
						<tbody>
							<tr>
								<th class="title">쿠폰명</th>
								<td colspan="4">
									<input type="text" name="c_name" size="50" value="가입축하쿠폰">
								</td>
							<tr>
							<tr>
								<th class="title">기간</th>
								<td colspan="4">
									<input type="date" name="c_s_day" size="15" value="2023-01-01">&nbsp;~&nbsp;
									<input type="date" name="c_e_day" size="15" value="2023-12-31">
								</td>
							<tr>
							<tr>
								<th class="title">할인률</th>
								<td colspan="4">
									<span class="r_label">
										<input type="number" name="c_name" size="20" min="1" value="5">&emsp;&emsp;
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
									    <option value="coupon1">제한없음</option>
									    <option value="coupon2">수량제한</option>
									 </select>
								</td>
							</tr>
							<tr>
								<th class="title">발급회원</th>
								<td colspan="4">
									 <select name="" style="min-width: 200px;">
									    <option value="coupon1">전체발급</option>
									    <option value="coupon2" selected="selected">지정발급</option>
									 </select>
								</td>
							</tr>
							<tr>
								<th class="title">지정발급 선택</th>
								<td class="cbox_td" colspan="4">
									 <span><input type="checkbox" name="scope" value="" checked="checked">신규가입자</span>
									 <span><input type="checkbox" name="scope" value="">생일자</span>
									 <span><input type="checkbox" name="scope" value="">강아지등록회원</span>
									 <span><input type="checkbox" name="scope" value="">고양이등록회원</span>
								</td>
							</tr>
							<tr class="t_bottom">
								<td colspan="5">
									<button type="button" class="b_btn" onclick="()">쿠폰 수정</button>
									<button type="button" class="b_btn" onclick="coupon_list()">취소</button>
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