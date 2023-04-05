<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 관리 </title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_inven_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function inven_info() {
		location.href="adm_mkt_inven_up.do";
	}
	
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">재고 관리</span>
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
							</tr>
							<tr>
								<th class="title">재고상태</th>
								<td colspan="4">
									<input type="radio" name="pdt" value="" checked>전체&emsp;&emsp;
									<input type="radio" name="pdt" value="">품절&emsp;&emsp;
									<input type="radio" name="pdt" value="">부족&emsp;&emsp;
									<input type="radio" name="pdt" value="">여유&emsp;&emsp;
									<input type="radio" name="pdt" value="">진열안함
								</td>
							</tr>
							<tr>
								<th class="title">검색조건</th>
								<td colspan="4">
									<select name="" >
									    <option value="cat">상품명</option>
									    <option value="dog">공급사</option>
									  </select>
									  <input type="text" name="m_name" size="20">
								  	  <input type="button" value="조회" id="search_btn">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div class="search_list">
			<button type="button" id="add_pdt_btn" onclick="location.href='adm_mkt_inven_insert.do'">+ 재고등록</button>
			<form>
					<table id="list_table">
						<thead>
							<tr>
								<th>재고번호</th>
								<th>상품이미지</th>
								<th>상품이름</th>
								<th>상품가격</th>
								<th>공급사</th>
								<th>상태</th>
								<th>재고수량</th>
								<th colspan="2">기능</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2342423</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 40px"></td>
								<td>캣타워</td>
								<td>50,000 P</td>
								<td>회사명</td>
								<td>품절</td>
								<td>0</td>
								<td colspan="2">
									<button type="button" class="btns" onclick="inven_info()">수정</button>
									<button class="btns" onclick="more_info()">복사</button>
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