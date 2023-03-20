<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 펫 정보</title>
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
	padding-bottom: 200px;
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
}

.pet-info {
	flex-direction: column;
	margin-top: 20px;
	margin-left: -155px;
	margin-bottom: 20px;
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
	margin-top: 100px;
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
					<div class="pet-info">
						<p>펫 이름 : 멍멍이</p>
						<p>펫 종류 : 개</p>
						<p>펫 몸무게 : 5.8kg</p>
						<p>펫 생일 : 2022.03.14</p>
						<p>펫 증명서 : -</p>
					</div>
					<div class="up_del_btn">
						<button type="button" class="update">수정</button>
						<button type="button" class="delete">삭제</button>
					</div>
				</div>
				<div class="pet">
					<div class="pet-picture">
						<img src="your-image-url.jpg" alt="pet picture">
					</div>
					<div class="pet-info">
						<p>펫 이름 : 냥뚱</p>
						<p>펫 종류 : 고양이</p>
						<p>펫 몸무게 : 4.0kg</p>
						<p>펫 생일 : 2022.02.18</p>
						<p>펫 증명서 : -</p>
					</div>
					<div class="up_del_btn">
						<button type="button" class="update">수정</button>
						<button type="button" class="delete">삭제</button>
					</div>
				</div>
				<div class="pet">
					<div class="pet-picture">
						<img src="your-image-url.jpg" alt="pet picture">
					</div>
					<div class="pet-info">
						<p>펫 이름 : 냥뚱</p>
						<p>펫 종류 : 고양이</p>
						<p>펫 몸무게 : 4.0kg</p>
						<p>펫 생일 : 2022.02.18</p>
						<p>펫 증명서 : -</p>
					</div>
					<div class="up_del_btn">
						<button type="button" class="update">수정</button>
						<button type="button" class="delete">삭제</button>
					</div>
				</div>
				<button type="button" id="regist_btn">등록</button>
			</div>
		</section>
	</main>
</body>
</html>