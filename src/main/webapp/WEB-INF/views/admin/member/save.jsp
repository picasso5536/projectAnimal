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
		var result = confirm("지급을 승인하시겠습니까?");
		if(result){
			var url = "point_chk_p.jsp";
	        var name = "point popup";
	        var option = "width=650,height=600,location=no,toolbar=no,menubar=no,status=no,scrollbars=no"
	        window.open(url, name, option);			
		}else{
			alert("지급이 취소되었습니다.");
		}
	}
	/* window.open('coupon.do','window_name',
					'width=650,height=600,location=no,toolbar=no,
								menubar=no,status=no,scrollbars=no'); */
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="search_mbr">
				<form id="search_form">
					<span class="search_text">
						고객 아이디 : <input type="text" name="m_id" size="25">
					</span>
					<span class="search_text">
						고객 이름 : <input type="text" name="m_name" size="25">
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
			</div>
			<div class="member_list">
				<form action="">
					<table>
						<thead>
							<tr>
								<th>선택</th>
								<th>아이디</th>
								<th>이름</th>
								<th>현재 포인트</th>
								<th>지급 포인트</th>
								<th>지급 후 포인트</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="check"></td>
								<td>복숭아</td>
								<td>이름</td>
								<td>1,000,000</td>
								<td><input type="number" size="10">&nbsp;P</td>
								<td>xxxxx P</td>
								<td><button class="pay_btn" onclick="p_pay()">지급하기</button></td>
								<td><button class="more_btn" onclick="more_info()">상세보기</button></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="check"></td>
								<td>test1</td>
								<td>문년지</td>
								<td>1,000,000</td>
								<td><input type="number" size="10">&nbsp;P</td>
								<td>xxxxx P</td>
								<td><button class="pay_btn" onclick="p_pay()">지급하기</button></td>
								<td><button class="more_btn" onclick="more_info()">상세보기</button></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="check"></td>
								<td>test1</td>
								<td>문년지</td>
								<td>1,000,000</td>
								<td><input type="number" size="10">&nbsp;P</td>
								<td>xxxxx P</td>
								<td><button class="pay_btn" onclick="p_pay()">지급하기</button></td>
								<td><button class="more_btn" onclick="more_info()">상세보기</button></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="check"></td>
								<td>test1</td>
								<td>문년지</td>
								<td>1,000,000</td>
								<td><input type="number" size="10">&nbsp;P</td>
								<td>xxxxx P</td>
								<td><button class="pay_btn" onclick="p_pay()">지급하기</button></td>
								<td><button class="more_btn" onclick="more_info()">상세보기</button></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>