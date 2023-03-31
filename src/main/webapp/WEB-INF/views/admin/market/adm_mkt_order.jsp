<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 관리</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_order_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function more_info(f) {
		location.href="adm_order_more.do";
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="order_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">주문 관리</span>
			<div class="search_order">
				<form id="search_form">
					<table>
						<tbody>
							<tr>
								<th class="title">진행상태</th>
								<td colspan="4">
									<select name="top" >
									    <option value="none">::선택하세요::</option>
									    <option value="order">결제완료</option>
									    <option value="delivery_pre">배송준비중</option>
									    <option value="delivery_s">배송시작</option>
									    <option value="delivery_com">배송완료</option>
									    <option value="order_c">주문취소</option>
									    <option value="cancel_req">취소요청</option>
									    <option value="ex_req">교환요청</option>
									    <option value="ex_com">교환완료</option>
									  </select>
									  <input type="button" value="조회" id="search_btn">
								</td>
							<tr>
								<th class="title">검색조건</th>
								<td colspan="4">
									<select id="s_pro" name="" >
									    <option value="cat">상품명</option>
									    <option value="dog">주문자</option>
									  </select>
									  <input type="text" name="m_name" size="30">
								</td>
							</tr>

						</tbody>
					</table>
				</form>
			</div>
			<div class="search_list">
			<form>
					<table id="list_table">
					<caption>총 주문수 : XX </caption>
						<thead>
							<tr>
								<th class="chk_box">선택</th>
								<th>주문일</th>
								<th>주문번호</th>
								<th>주문자명</th>
								<th>주문방법</th>
								<th>주문포인트</th>
								<th>기능</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>yyyy/MM/dd</td>
								<td>10115264789100</td>
								<td>주문자</td>
								<td>포인트</td>
								<td>XXXXX P</td>
								<td colspan="2">
									<button type="button" class="more_btn" onclick="location.href='adm_order_more.do'">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>yyyy/MM/dd</td>
								<td>10115264789100</td>
								<td>주문자</td>
								<td>포인트</td>
								<td>XXXXX P</td>
								<td colspan="2">
									<button type="button" class="more_btn" onclick="location.href='adm_order_more.do'">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>yyyy/MM/dd</td>
								<td>10115264789100</td>
								<td>주문자</td>
								<td>포인트</td>
								<td>XXXXX P</td>
								<td colspan="2">
									<button type="button" class="more_btn" onclick="location.href='adm_order_more.do'">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>yyyy/MM/dd</td>
								<td>10115264789100</td>
								<td>주문자</td>
								<td>포인트</td>
								<td>XXXXX P</td>
								<td colspan="2">
									<button type="button" class="more_btn" onclick="location.href='adm_order_more.do'">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>yyyy/MM/dd</td>
								<td>10115264789100</td>
								<td>주문자</td>
								<td>포인트</td>
								<td>XXXXX P</td>
								<td colspan="2">
									<button type="button" class="more_btn" onclick="location.href='adm_order_more.do'">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>yyyy/MM/dd</td>
								<td>10115264789100</td>
								<td>주문자</td>
								<td>포인트</td>
								<td>XXXXX P</td>
								<td colspan="2">
									<button type="button" class="more_btn" onclick="location.href='adm_order_more.do'">상세</button>
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