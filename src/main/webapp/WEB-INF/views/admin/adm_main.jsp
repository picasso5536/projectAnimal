<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 > 메인</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1;
}

.banned {
	display: flex;
	flex-direction: column;
	position: relative;
	align-items: center;
	justify-content: space-between;
	padding: 30px;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	margin-bottom: 20px;
	margin-left: 230px;
	margin-top: 15px;
	height: auto;
	min-height: 100%;
	padding-bottom: 150px;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 2000px;
	min-width: 1300px;
}

.chart {
	position: relative;
	width: 100%;
	min-width: 1000px;
	max-width: 1600px;
	height: 200px;
	margin: 0 auto;
}

.chart .slice {
	position: absolute;
	width: 100%;
	height: 100%;
	clip: rect(0, 100px, 200px, 0);
	border-radius: 50%;
}

.chart .slice .fill {
	position: absolute;
	width: 100%;
	height: 100%;
	clip: rect(0, 100px, 200px, 0);
	border-radius: 50%;
	background-color: #4CAF50;
}

.chart .slice .text {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 16px;
	font-weight: bold;
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 1600px;
	min-width: 1000px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	margin-top: 100px;
}

table td, table th {
	padding: 10px;
	text-align: center;
	border: 0;
	border-bottom: 1px solid #DEE2E6;
	font-family: 'NanumSquareRound';
}

thead th {
	background-color: #8db6d4; /* 헤더 배경색 */
	color: #fff; /* 헤더 글자색 */
	font-weight: bold;
}

table td:first-child {
	font-size: 14px;
	color: #666;
	width: 10%;
}

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
}

/* 첫 번째 td 스타일 */
td:first-child {
	text-align: center;
	font-weight: bold;
	color: #333;
}

/* 두 번째 td 스타일 */
td:nth-child(2) {
	text-align: center;
	color: #3498db;
	font-weight: bold;
}

/* 세 번째 td 스타일 */
td:nth-child(3) {
	text-align: center;
	font-weight: bold;
	color: #4CAF50;
}

/* 네 번째 td 스타일 */
td:nth-child(4) {
	text-align: center;
	font-weight: bold;
	color: red;
}

/* 다섯 번째 td 스타일 */
td:last-child {
	text-align: center;
	color: #333;
	font-weight: bold;
}

a {
	text-decoration: none;
	color: #4CAF50;
}

.processing {
	color: red;
}

#see_more {
	background-color: #3498db;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 4px;
	/* position: absolute; */
	bottom: 20px;
	right: 30px;
}

.large_k {
	position: relative;
	margin-top: 30px;
	margin-bottom: 150px;
	border-top: 1px solid grey;
	padding-top: 10px;
}

#see_more {
  position: absolute;
  bottom: 120px;
  right: 0;
}

#see_more:hover {
	background-color: #2980b9;
}

#review_table_adm td:nth-child(4) {
	color: black;
}

#review_table_adm td:nth-child(5) {
	color: blue;
}

#review_table_adm td:nth-child(6) {
	color: red;
}

#review_table_adm td:nth-child(7) {
	color: #ffd400;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="adm_navbar.jsp"></jsp:include>
		<section id="sec1">
			<div class="banned">
				<div class="large_k">
					<span>매출</span>
					<div class="chart">강아지</div>
					<script>
						var xhr = new XMLHttpRequest();
						xhr.onreadystatechange = function() {
							if (this.readyState == 4 && this.status == 200) {
								var data = JSON.parse(this.responseText);
								drawChart(data);
							}
						};
						xhr.open("GET", "data.php", true);
						xhr.send();

						function drawChart(data) {
							var total = 0;
							for (var i = 0; i < data.length; i++) {
								total += parseInt(data[i].value);
							}
							var angle = 0;
							for (var i = 0; i < data.length; i++) {
								var slice = document.createElement("div");
								slice.className = "slice";
								slice.style.transform = "rotate(" + angle
										+ "deg)";
								var fill = document.createElement("div");
								fill.className = "fill";
								fill.style.transform = "rotate("
										+ (360 * parseInt(data[i].value) / total)
										+ "deg)";
								var text = document.createElement("div");
								text.className = "text";
								text.innerHTML = data[i].label;
								slice.appendChild(fill);
								slice.appendChild(text);
								document.querySelector(".chart").appendChild(
										slice);
								angle += 360 * parseInt(data[i].value) / total;
							}
						}
					</script>
				</div>
				<div class="large_k">
					<span>충전 신청</span>
					<div class="charge_adm">
						<table id="charge_table_adm">
							<thead>
								<tr>
									<th></th>
									<th>닉네임</th>
									<th>신청일자</th>
									<th>신청금액</th>
									<th>처리일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>우주체강</td>
									<td>2023.03.27</td>
									<td>1,000,000</td>
									<td>2023.03.28</td>
								</tr>
							</tbody>
						</table>
						<button type="button" id="see_more">더보기</button>
					</div>
				</div>
				<div class="large_k">
					<span>1:1 문의</span>
					<div class="inquire_adm">
						<table id="inquire_table_adm">
							<thead>
								<tr>
									<th></th>
									<th>작성자</th>
									<th>문의 제목</th>
									<th>문의 내용</th>
									<th>작성일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>우주체강</td>
									<td>충전 신청 문의</td>
									<td>아직 충전이 안됐..</td>
									<td>2023.03.28</td>
								</tr>
							</tbody>
						</table>
						<button type="button" id="see_more">더보기</button>
					</div>
				</div>
				<div class="large_k">
					<span>리뷰 관리</span>
					<div class="review_adm">
						<table id="review_table_adm">
							<thead>
								<tr>
									<th></th>
									<th>작성자</th>
									<th>내용</th>
									<th>작성일</th>
									<th>좋아요</th>
									<th>싫어요</th>
									<th>별점</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>우주체강</td>
									<td>뭐 어쩌고 블라블라 ~</td>
									<td>2023.03.28</td>
									<td>402</td>
									<td>27</td>
									<td>4</td>
								</tr>
							</tbody>
						</table>
						<button type="button" id="see_more">더보기</button>
					</div>
				</div>
				<div class="large_k">
					<span>신고 관리</span>
					<div class="charge">
						<table id="charge_point">
							<thead>
								<tr>
									<th></th>
									<th>신고자</th>
									<th>글 작성자</th>
									<th>신고 사유</th>
									<th>누적 신고수</th>
									<th>신고일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>우주체강</td>
									<td>신고해봐</td>
									<td>욕설</td>
									<td>4</td>
									<td>2023.03.28</td>
								</tr>
							</tbody>
						</table>
						<button type="button" id="see_more">더보기</button>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>
</html>