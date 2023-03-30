<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 관리</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_review_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
			<div class="search_review">
				<form id="search_form">
					<div class="search_text">
						카테고리 : <select name="top" >
									<option value="none">::선택하세요::</option>
									<option value="cat">고양이</option>
									<option value="dog">강아지</option>
								 </select>
					</div>
					<div class="search_text">
						검색 조건 : <select name="" >
								    <option value="cate">::세부 카테고리::</option>
								    <option value="dog">식품</option>
								    <option value="dog">간식</option>
								    <option value="dog">장난감</option>
								    <option value="dog">하우스</option>
								    <option value="dog">의류</option>
								  </select>
								  <input type="text" name="m_name" size="25">
					</div>
					<div class="search_btns">
						<input type="button" value="조회" id="search_btn">
						<input type="reset" value="초기화" id="reset_btn">
					</div>
				</form>
			</div>
			<div class="search_list">
				<form>
					<table id="list_table">
						<thead>
							<tr>
								<th class="chk_box">선택</th>
								<th>번호</th>
								<th>상품</th>
								<th>상품평</th>
								<th>별점</th>
								<th>작성자</th>
								<th>좋아요</th>
								<th>싫어요</th>
								<th>작성일</th>
								<th colspan="2">상세보기/삭제</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td class="chk_box">1</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 60px"></td>
								<td class="content">상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평...</td>
								<td>별점</td>
								<td>작성자</td>
								<td class="chk_box">2054</td>
								<td class="chk_box">20</td>
								<td>yyyy/MM/dd</td>
								<td colspan="2">
									<button class="more_btn" onclick="more_info()">상세</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td class="chk_box">1</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 60px"></td>
								<td class="content">상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평...</td>
								<td>별점</td>
								<td>작성자</td>
								<td class="chk_box">2054</td>
								<td class="chk_box">20</td>
								<td>yyyy/MM/dd</td>
								<td colspan="2">
									<button class="more_btn" onclick="more_info()">상세</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td class="chk_box">1</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 60px"></td>
								<td class="content">상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평...</td>
								<td>별점</td>
								<td>작성자</td>
								<td class="chk_box">2054</td>
								<td class="chk_box">20</td>
								<td>yyyy/MM/dd</td>
								<td colspan="2">
									<button class="more_btn" onclick="more_info()">상세</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td class="chk_box">1</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 60px"></td>
								<td class="content">상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평...</td>
								<td>별점</td>
								<td>작성자</td>
								<td class="chk_box">2054</td>
								<td class="chk_box">20</td>
								<td>yyyy/MM/dd</td>
								<td colspan="2">
									<button class="more_btn" onclick="more_info()">상세</button>
									<button class="del_btn" onclick="more_info()">삭제</button>
								</td>
							</tr>
							<tr>
								<td class="chk_box"><input type="checkbox" name="check"></td>
								<td class="chk_box">1</td>
								<td><img src="resources/img/market/img_icon.png" style="width: 60px"></td>
								<td class="content">상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평 테스트 어쩌구저쩌구상품평...</td>
								<td>별점</td>
								<td>작성자</td>
								<td class="chk_box">2054</td>
								<td class="chk_box">20</td>
								<td>yyyy/MM/dd</td>
								<td colspan="2">
									<button class="more_btn" onclick="more_info()">상세</button>
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