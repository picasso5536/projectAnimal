<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_point_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="point_info">
				<h2>XXX 회원 포인트 상세</h2>
				<form id="search_form"  style="margin-top: 20px;">
					<span class="search_text">
					&nbsp;&nbsp;검색조건 &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
					<select name="bott">
						<option value="cat">::종류선택::</option>
						<option value="cat">전체</option>
						<option value="cat">포인트 지급</option>
						<option value="dog">포인트 차감</option>
					</select>
					</span>

					<br>
					<span class="search_text">
						&nbsp;&nbsp;날짜 조회&nbsp;&nbsp; : <input type="date" name="s_date" size="25">
						&nbsp;-&nbsp;
								<input type="date" name="e_date" size="25">
					</span>
					<span class="search_btns">
						<input type="button" value="조회" id="search_btn">
						<input type="reset" value="초기화" id="reset_btn">
					</span>
				</form>
				
				<form action="">
					<table class="p_info_t">
					<caption style="margin-bottom: 20px; font-size: 20px;">회원 포인트 변동내역</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>닉네임</th>
								<th>이름</th>
								<th>변동내용</th>
								<th>지급/차감</th>
								<th>사유상세</th>
								<th>변경관리자</th>
								<th>변동일자</th>
								<th>가용포인트</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>복숭아</td>
								<td>이름</td>
								<td>+ 3,000 P</td>
								<td>지급</td>
								<td>가입축하포인트</td>
								<td>관리자1</td>
								<td>yyyy/MM/dd hh:mm:ss</td>
								<td>3,000 &nbsp; P</td>
								
							</tr>						
							<tr>
								<td>1</td>
								<td>복숭아</td>
								<td>이름</td>
								<td>+ 100,000 P</td>
								<td>지급</td>
								<td>포인트 충전신청</td>
								<td>관리자2</td>
								<td>yyyy/MM/dd hh:mm:ss</td>
								<td>103,000 &nbsp; P</td>
								
							</tr>						
							<tr>
								<td>1</td>
								<td>복숭아</td>
								<td>이름</td>
								<td>- 13,000 P</td>
								<td>차감</td>
								<td>상품결제</td>
								<td>관리자1</td>
								<td>yyyy/MM/dd hh:mm:ss</td>
								<td>90,000 &nbsp; P</td>
								
							</tr>						
						</tbody>
					</table>
					<div class="point_list_div"><button type="button" class="more_btn" onclick="location.href='admin_mbr_point.do'">목록</button></div>
				</form>
			</div>
		</section>
	</main>
</body>
</html>