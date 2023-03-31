<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 관리</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_delivery_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">공급사 관리</span>
			<div class="search_pdt">
				<form id="search_form">
				<table id="delivery">
					<tbody>
						<tr>
							<th class="title">택배사</th>
							<td colspan="5">
								<select name="top" style="width: 200px; height: 25px">
								    <option value="none">::택배사 선택::</option>
								    <option value="order">우체국택배</option>
								    <option value="delivery_pre">대한통운</option>
								    <option value="delivery_s">한진택배</option>
								    <option value="delivery_com">로젠택배</option>
								    <option value="order_c">롯데택배</option>
								  </select>
								  <input type="button" value="등록" id="btns">
								</td>
							<tr>
								<th class="title">배송 추적 설정</th>
								<td colspan="5">
									  <input type="text" name="m_name" size="100" placeholder="url" style="height: 25px">
								</td>
						</tbody>
					</table>
				
					<h2>공급사 등록</h2>
					<table class="type07">
						<tbody>
							<tr>
								<th scope="row" class="title">배송무료</th>
								<td>
									<input type="radio" name="deliver" checked>&emsp;배송비 전액무료
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">수신자 부담</th>
								<td>
									<input type="radio" name="deliver">&emsp;수신자 부담(착불)
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">고정값</th>
								<td>
									<input type="radio" name="deliver">
									<input class="input_1" type="text"placeholder="1,000"> P
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">구매 가격별</th>
								<td>
									<input type="radio" name="deliver">
									<input class="input_1" type="text" placeholder="50,000">&nbsp;P&emsp;&emsp;
									이상 구매시&nbsp;<input class="input_1" type="text" placeholder="0">&nbsp;P<br>
									<p>
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
									이하 구매시&nbsp;<input class="input_1" type="text" placeholder="2,500">&nbsp;P
								</td>
							</tr>
							<tr>
								<th scope="row" class="title">지역 할증</th>
								<td colspan="3">
									<table class="inner_t">
										<thead>
											<tr>
												<th class="title">할증지역</th>
												<th class="title">할증료</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="td_text">
													<select name="top" style="width: 200px; height: 25px">
													    <option value="order">제주</option>
													    <option value="delivery_pre">강원도</option>
													 </select>
												</td>
												<td class="td_text"><input class="input_1" type="text" placeholder="3,000"> P</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<th scope="row" colspan="4">
									<span class="search_btns">
										<input type="button" value="저장" id="insert_btn">
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