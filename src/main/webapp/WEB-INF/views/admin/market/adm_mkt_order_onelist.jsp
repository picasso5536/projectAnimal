<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 관리</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_order_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="order_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">주문 관리</span> <span id="sep2">></span> <span
				id="page_sKate">주문 상세</span>
			<div class="search_list">
				<form id="search_form">
					<table id="list_table">
						<caption>주문 상세보기</caption>
						<thead>
							<tr>
								<th>상품코드</th>
								<th>상품이미지</th>
								<th>상품이름</th>
								<th>상품가격</th>
								<th>수량</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>50000A</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>캣타워</td>
								<td>50,000 P</td>
								<td>1</td>
								<td>
									<button class="cancle_btn" onclick="">취소</button>
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<tbody>
							<tr>
								<th class="title">주문번호</th>
								<td>110255885</td>
								<th class="title">결제방법</th>
								<td>포인트</td>
							</tr>
							<tr>
								<th class="title">주문일자</th>
								<td colspan="3">yyyy/MM/dd</td>
							</tr>
							<tr>
								<th class="title">운송장번호</th>
								<td colspan="3">100511841135874</td>
							</tr>
							<tr>
								<th class="title">처리상태</th>
								<td>
									<select name="top" >
									    <option value="order_s">주문접수</option>
									    <option value="order">결제완료</option>
									    <option value="delivery_com">배송완료</option>
									    <option value="order_c">주문취소</option>
									  </select>
								</td>
								<th class="title">발송일자</th>
								<td>yyyy/MM/dd</td>
							</tr>
							<tr>
								<th class="title" rowspan="3">처리상황</th>
								<td colspan="3" rowspan="3">
									<table class="inner_t">
										<thead>
											<tr>
												<th>주문접수</th>
												<th>결제완료</th>
												<th>배송완료</th>
												<th>주문취소</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="td_text">yyyy/MM/dd</td>
												<td class="td_text">-</td>
												<td class="td_text">-</td>
												<td class="td_text">-</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							
						</tbody>
					</table>
					<table>
						<caption>주문자 정보</caption>
						<tbody>
							<tr>
								<th class="title">주문자명</th>
								<td><input type="text" name="m_name" size="27" placeholder="무년지"></td>
								<th class="title">이메일</th>
								<td colspan="3">
									<input type="text" name="writer" size="15" placeholder="fkfkfkdksh">
									&nbsp;@&nbsp;
									<input type="text" name="writer" size="15" placeholder="naver.com">
								</td>
							</tr>
							<tr>
								<th class="title">Phone</th>
								<td><input type="text" name="writer" size="30" placeholder="010-1234-5678"></td>
								<th class="title">집전화</th>
								<td><input type="text" name="writer" size="30" placeholder="-"></td>
							</tr>
							<tr>
								<th class="title">우편번호</th>
								<td class="addr_text" colspan="3">
									<input type="text" name="writer" size="17" placeholder="우편번호검색">
								</td>	
							</tr>
							<tr>
								<th class="title">주소</th>
									<td class="addr_text" colspan="3">
										<input type="text" name="writer" size="17" placeholder="주소"><br>
										<input type="text" name="writer" size="43" placeholder="상세주소">
									</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>수취인 정보</caption>
						<tbody>
							<tr>
								<th class="title">주문자명</th>
								<td><input type="text" name="m_name" size="27" placeholder="무년지"></td>
								<th class="title">이메일</th>
								<td colspan="3">
									<input type="text" name="writer" size="15" placeholder="fkfkfkdksh">
									&nbsp;@&nbsp;
									<input type="text" name="writer" size="15" placeholder="naver.com">
								</td>
							</tr>
							<tr>
								<th class="title">Phone</th>
								<td><input type="text" name="writer" size="30" placeholder="010-1234-5678"></td>
								<th class="title">집전화</th>
								<td><input type="text" name="writer" size="30" placeholder="-"></td>
							</tr>
							<tr>
								<th class="title">우편번호</th>
								<td class="addr_text" colspan="3">
									<input type="text" name="writer" size="17" placeholder="우편번호검색">
								</td>	
							</tr>
							<tr>
								<th class="title">주소</th>
								<td class="addr_text" colspan="3">
									<input type="text" name="writer" size="17" placeholder="주소"><br>
									<input type="text" name="writer" size="43" placeholder="상세주소">
								</td>
							</tr>
							<tr>
								<th class="title">배송요청사항</th>
								<td class="td_text" colspan="3">
									<textarea name="content" id="content" cols="110" rows="20" readonly></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="목록" onclick="sendupdate_go(this.form)"/>
									<input type="button" value="확인"/>
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