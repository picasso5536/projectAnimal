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
				<li class="mli"><a class="ad-link" href="admin_mbr_point.do">포인트 내역 조회</a></li>
				<li class="mli"><a class="ad-link" href="#">포인트 충전 신청</a></li>
			</ul>
			<div class="member_list">
				<form action="">
					<table>
					<caption style="margin-bottom: 20px; font-size: 20px; text-align: left;">충전 신청 목록</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>닉네임</th>
								<th>신청일자</th>
								<th>신청금액</th>
								<th>처리상태</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>우주체강</td>
								<td>2023.03.27</td>
								<td>1,000,000</td>
								<td>처리대기중</td>
								<td>
									<button class="pay_btn" onclick="p_pay()">지급하기</button>
									<button class="pay_btn" onclick="c_pay()">거절하기</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>우주체강</td>
								<td>2023.03.27</td>
								<td>1,000,000</td>
								<td>처리대기중</td>
								<td>
									<button class="pay_btn" onclick="p_pay()">지급하기</button>
									<button class="pay_btn" onclick="c_pay()">거절하기</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>우주체강</td>
								<td>2023.03.27</td>
								<td>1,000,000</td>
								<td>처리대기중</td>
								<td>
									<button class="pay_btn" onclick="p_pay()">지급하기</button>
									<button class="pay_btn" onclick="c_pay()">거절하기</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>우주체강</td>
								<td>2023.03.27</td>
								<td>1,000,000</td>
								<td>처리대기중</td>
								<td>
									<button class="pay_btn" onclick="p_pay()">지급하기</button>
									<button class="pay_btn" onclick="c_pay()">거절하기</button>
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