<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정 </title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_coupon_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function p_pay() {
		location.href="adm_mkt_cp_update.do";
	} 
</script>
</head>
<body>
	<main>
	<!-- 쿠폰 검색 없어서 안만들었는데 필요한 경우 다른데서 코드 복사해 사용할 것  -->
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">쿠폰 관리</span>
			<div class="search_list">
				<form>
					<table id="list_table">
						<caption>쿠폰 목록<br>
							<button type="button" class="b_btn" onclick="location.href='adm_mkt_addcp.do'">+ 쿠폰 등록</button>
						</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>쿠폰명</th>
								<th>기간</th>
								<th>할인</th>
								<th>수량</th>
								<th>기능</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>가입축하쿠폰</td>
								<td>2023/01/01 ~ 2023/12/31</td>
								<td>5%</td>
								<td>제한없음</td>
								<td colspan="2">
									<button type="button" class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>가입축하쿠폰</td>
								<td>2023/01/01 ~ 2023/12/31</td>
								<td>5%</td>
								<td>제한없음</td>
								<td colspan="2">
									<button type="button" class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>가입축하쿠폰</td>
								<td>2023/01/01 ~ 2023/12/31</td>
								<td>5%</td>
								<td>제한없음</td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>가입축하쿠폰</td>
								<td>2023/01/01 ~ 2023/12/31</td>
								<td>5%</td>
								<td>제한없음</td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>가입축하쿠폰</td>
								<td>2023/01/01 ~ 2023/12/31</td>
								<td>5%</td>
								<td>제한없음</td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
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