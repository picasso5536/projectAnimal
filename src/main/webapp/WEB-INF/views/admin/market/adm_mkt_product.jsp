<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정 </title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_product_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
			<div class="search_pdt">
				<form id="search_form">
					<table>
						<tbody>
							<tr>
								<th class="title">카테고리</th>
								<td colspan="4">
									<select name="top" >
									    <option value="none">::선택하세요::</option>
									    <option value="cat">고양이</option>
									    <option value="dog">강아지</option>
									  </select>
									  <select name="mid" >
									    <option value="none">::선택하세요::</option>
									    <option value="food">식품</option>
									    <option value="snack">간식</option>
									    <option value="toy">장난감</option>
									    <option value="house">하우스</option>
									    <option value="wear">의류</option>
									  </select>
									  <select name="bott" >
									    <option value="none">::선택하세요::</option>
									    <option value="cat">건식</option>
									    <option value="dog">주식파우치</option>
									    <option value="dog">생식</option>
									    <option value="dog">분유/우유</option>
									  </select>
								</td>
							<tr>
								<th class="title">검색조건</th>
								<td colspan="2">
									<select name="" >
									    <option value="cat">상품명</option>
									    <option value="dog">공급사</option>
									  </select>
									  <input type="text" name="m_name" size="15">
								</td>
								<th class="title">쿠폰적용</th>
								<td>
									<select name="" >
									    <option value="none">::선택::</option>
									    <option value="coupon">쿠폰 적용</option>
									    <option value="coupon_n">쿠폰 미적용</option>
									  </select>
								</td>
							</tr>
							<tr>
								<th class="title">재고여부</th>
								<td colspan="2">
									<select name="" >
									    <option value="none">::재고상태::</option>
									    <option value="">????</option>
									  </select>
									  <input type="text" name="m_name" size="7">&nbsp;개 이하
								</td>
								<th class="title">진열여부</th>
								<td>
									<select name="" >
									    <option value="non">::선택::</option>
									    <option value="show">진열중</option>
									    <option value="hid">숨김</option>
									  </select>
								</td>
							</tr>
							<tr>
								<th class="title">등록업체</th>
								<td colspan="4">
									<select name="top" >
									    <option value="none">::선택하세요::</option>
									    <option value="cat">고양이</option>
									    <option value="dog">강아지</option>
									  </select>
									  <input type="button" value="조회" id="search_btn">
								</td>
							</tr>

						</tbody>
					</table>
				</form>
			</div>
			<div class="search_list">
			<form>
				<button id="add_pdt_btn" >+ 상품등록</button>
					<table id="list_table">
						<thead>
							<tr>
								<th class="chk_box">선택</th>
								<th>상품코드</th>
								<th>상품이미지</th>
								<th>상품이름</th>
								<th>상품가격</th>
								<th>재고</th>
								<th>진열순서</th>
								<th colspan="2">기능</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>2342423</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>어쩌구</td>
								<td>5,000 P</td>
								<td>xx</td>
								<td></td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
									<button class="more_btn" onclick="more_info()">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>4533463</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>어쩌구</td>
								<td>10,000 P</td>
								<td>xx</td>
								<td></td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
									<button class="more_btn" onclick="more_info()">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>4645656</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>어쩌구</td>
								<td>15,000P</td>
								<td>xx</td>
								<td></td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
									<button class="more_btn" onclick="more_info()">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>3534534</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>어쩌구</td>
								<td>30,000 P</td>
								<td>xx</td>
								<td></td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
									<button class="more_btn" onclick="more_info()">상세</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td>2349234</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>어쩌구</td>
								<td>100,000 P</td>
								<td>xx</td>
								<td></td>
								<td colspan="2">
									<button class="update_btn" onclick="p_pay()">수정</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
									<button class="more_btn" onclick="more_info()">상세</button>
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