<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 펫 등록</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pikaday/css/pikaday.css">
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

/*////////////////////////////////////*/
.border {
	position: relative;
	display: flex;
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

.border .pet:not(:first-child) {
	border-left: 1px solid #ccc;
}

.pet {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	width: 100%;
	margin-top: 60px;
}

.pet-picture {
	width: 300px;
	height: 300px;
	background-color: #000000;
	border-radius: 10px;
}

.pet-info {
	flex-direction: column;
	margin-top: 20px;
	margin-left: -60px;
	margin-bottom: 20px;
}

.pet-picture_btn {
	margin-top: 10px;
	margin-left: 220px;
	margin-bottom: 10px;
}

/* 프로필 정보 스타일 */
.pet-info p {
	margin: 0;
	padding: 5px 0;
	font-size: 16px;
	color: #333;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 1500px;
	min-width: 1300px;
}

button {
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
}

#regist_btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
}

.delete {
	margin-top: 20px;
	background-color: #ff3333;
}

.delete:hover {
	background-color: #fa0404;
}

.update {
	background-color: #3498db;
}

.update:hover {
	background-color: #2980b9;
}

input {
	display: inline-block;
	width: 120px;
	height: 35px;
	padding: 8px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 14px;
	margin-right: 10px;
}

.datepicker {
	font-size: 16px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	outline: none;
	box-shadow: none;
	width: 150px;
	text-align: center;
}

/* 활성화된 텍스트 입력란 스타일 */
.datepicker:focus {
	border-color: #007bff;
}

.profile-button {
	margin: 0 5px;
	padding: 5px 10px;
	background-color: #FFDAAD;
	border: none;
	border-radius: 3px;
	font-size: 14px;
	cursor: pointer;
	border-radius: 30px;
}

.profile-button:hover {
	background-color: #ddd;
}

#file {
	display: none;
}

.pet-picture {
	width: 300px;
	height: 300px;
	background-color: #000000;
	border-radius: 10px;
}

input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
</style>
</head>
<body>
	<main>
		<jsp:include page="my_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">마이페이지</span> <span id="sep1">|</span> <span
				id="page_mKate">계정관리</span> <span id="sep2">></span> <span
				id="page_sKate">펫 정보</span>
			<div class="border">
				<div class="pet">
					<div class="pet-picture">
						<img src="your-image-url.jpg" alt="pet picture">
					</div>
					<div class="pet-picture_btn">
						<label for="file">
							<div class="profile-button">사진 선택</div>
						</label> <input type="file" name="file" id="file">
					</div>
					<div class="pet-info">
						<p>
							펫 이름 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" />
						</p>
						<p>
							펫 종류 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" />
						</p>
						<p>
							펫 몸무게 : <input type="number" step="0.1">kg
						</p>
						<p>
							펫 생일 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="datepicker" />
						</p>
						<script src="https://cdn.jsdelivr.net/npm/pikaday/pikaday.js"></script>
						<script
							src="https://cdn.jsdelivr.net/npm/pikaday/plugins/pikaday-i18n.js"></script>
						<script>
							var picker = new Pikaday({
								field : document.getElementById('datepicker'),
								format : 'YYYY년 MM월 DD일 (ddd)',
								i18n : {
									previousMonth : '이전달',
									nextMonth : '다음달',
									months : [ '1월', '2월', '3월', '4월', '5월',
											'6월', '7월', '8월', '9월', '10월',
											'11월', '12월' ],
									weekdays : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									weekdaysShort : [ '일', '월', '화', '수', '목',
											'금', '토' ]
								},
								toString : function(date) {
									var day = date.getDate();
									var month = date.getMonth() + 1;
									var year = date.getFullYear();

									return year + '-' + month + '-' + day;
								},
							});
						</script>
						<p>
							펫 증명서 : <input type="number" />
						</p>
					</div>
				</div>
				<button type="button" id="regist_btn"
					onclick="location.href='my_pet_ins.do'">저장</button>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="../../footer.jsp" />
	</footer>
</body>
</html>