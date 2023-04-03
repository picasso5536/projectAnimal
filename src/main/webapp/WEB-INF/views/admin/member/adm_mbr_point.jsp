<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_point_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function p_pay() {
		var result = confirm("포인트를 변경하시겠습니까?");
		if(result){
			var url = "point_chk.do";
	        var name = "point popup";
	        var option = "width=700,height=680,location=no,toolbar=no,menubar=no,status=no,scrollbars=no"
	        window.open(url, name, option);			
		}else{
			alert("변경이 취소되었습니다.");
		}
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
		<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="#">고객 포인트 조회</a></li>
				<li class="mli"><a class="ad-link" href="adm_p_add_req.do">포인트 충전 신청</a></li>
			</ul>
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text">
					&nbsp;&nbsp;검색조건 &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
					<select name="bott" >
						<option value="cat">고객 이름</option>
						<option value="dog">고객 아이디</option>
					</select>
					<input type="text" name="m_idx" size="25">
					</span>
					<span class="search_btns">
						<input type="button" value="조회" id="search_btn">
						<input type="reset" value="초기화" id="reset_btn">
					</span>
				</form>
			</div>
			<div class="member_list">
				<form action="">
					<table>
					<caption style="margin-bottom: 20px; font-size: 20px; text-align: left;">조회 목록</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>아이디</th>
								<th>이름</th>
								<th>현재 포인트</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>복숭아</td>
								<td>이름</td>
								<td>1,000,000</td>
								<td><button class="pay_btn" onclick="p_pay()">변경하기</button></td>
								<td><button type="button" class="more_btn" onclick="location.href='adm_point_info.do'">상세보기</button></td>
							</tr>
							<tr>
								<td>2</td>
								<td>test1</td>
								<td>문년지</td>
								<td>1,000,000</td>
								<td><button class="pay_btn" onclick="p_pay()">변경하기</button></td>
								<td><button type="button" class="more_btn" onclick="location.href='adm_point_info.do'">상세보기</button></td>
							</tr>
							<tr>
								<td>3</td>
								<td>test1</td>
								<td>문년지</td>
								<td>1,000,000</td>
								<td><button class="pay_btn" onclick="p_pay()">변경하기</button></td>
								<td><button type="button" class="more_btn" onclick="location.href='adm_point_info.do'">상세보기</button></td>
							</tr>
							<tr>
								<td>4</td>
								<td>test1</td>
								<td>문년지</td>
								<td>1,000,000</td>
								<td><button class="pay_btn" onclick="p_pay()">변경하기</button></td>
								<td><button type="button" class="more_btn" onclick="location.href='adm_point_info.do'">상세보기</button></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>