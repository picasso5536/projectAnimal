<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/mbr_point_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 2000px;
	min-width: 1300px;
}
.banned {
	display: flex;
	flex-direction: column;
	position: relative;
	align-items: center;
	justify-content: space-between;
 	padding: 10px; 
	border: 1px solid #ccc;
	border-radius: 20px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	margin-bottom: 10px;
	margin-left: 230px;
	margin-top: 25px;
	height: auto;
	min-height: 100%;
	padding-bottom: 20px;
	padding-top: 20px;
}
	#seach_btn {
		font-family: 'NanumSquareRound';
		font-size: 18px;
		min-width: 100px;
		height: 40px;
		border: 1px solid #666;
		border-radius: 6px;
		background-color: #fff;
		color: #666;
		cursor: pointer;
		margin: 0px 10px;
		box-shadow: 2px 4px 7px -2px gray;
		
	}
	 #reset_btn {
		font-family: 'NanumSquareRound';
		font-size: 18px;
		min-width: 100px;
		height: 40px;
		border: 1px solid #666;
		border-radius: 6px;
		background-color: #fff;
		color: #666;
		cursor: pointer;
		margin: 0px 10px;
		box-shadow: 2px 4px 7px -2px gray;
	}
	#seach_btn:hover {
		background-color: #ebebeb;
		color: #555;
		font-weight: 800;
	}
	 #reset_btn:hover {
		background-color: #ebebeb;
		color: #555;
		font-weight: 800;
	 }
table.type11 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	margin: 20px 10px;
}
table.type11 th {
	width: 155px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #9fc4db ;
}
table.type11 td {
	width: 155px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: white;
}
.date{
width: 150px;
height: 25px;
}
.seach_btns{
text-align: center;
}
.text{
margin-left:15px;
width: 150px;
height: 20px;
}
button.button_2 {
  border: 0;
  outline: none;
  background: #A0C3D2;
  color: white;
  cursor: pointer;
  border-radius: 10px;
}

button.button_2:hover {
  color: white;
  background: orange;
}
</style>
</head> 
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="sec1">
		<h2 style="margin-left: 240px;">게시글 관리</h2>
		<div class="banned">
				<form id="seach_form">
					<div style="margin-left: -670px;">
					<span style="white-space: nowrap; text-align: left;"> 이름  &nbsp;&nbsp;</span><input class="text" type="text"><br><br>
					<span style="white-space: nowrap;"> 등록일 &nbsp;&nbsp;</span><input class="date" type="date">&nbsp;~&nbsp;<input class="date" type="date">
					</div>
					<div style="margin-top: 10px;">
					<br>
					<span class="seach_btns">
						<input type="button" value="조회" id="seach_btn">
						<input type="reset" value="초기화" id="reset_btn">
					</span>
					</div>
				</form>
		</div>
		<br>
		<div class="banned">
		<table class="type11">
	<thead>
	<tr>
	<th scope="cols">&nbsp;</th>
	<th scope="cols">번호</th>
	<th scope="cols">제목</th>
    <th scope="cols">작성자</th>
    <th scope="cols">조회수</th>
    <th scope="cols">좋아요</th>
    <th scope="cols">싫어요</th>
    <th scope="cols">작성일</th>
    <th scope="cols">상세보기/삭제</th>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td><input type="checkbox"></td>
	<td>1</td>
	<td>게시글테스트1</td>
    <td>모상인</td>
    <td>16</td>
    <td>215</td>
    <td>3</td>
    <td>2023.02.18</td>
    <td><button class="button_2">상세</button>&nbsp;&nbsp;<button class="button_2">삭제</button></td>
	</tr>
	<tr>
	<td><input type="checkbox"></td>
	<td>1</td>
	<td>게시글테스트1</td>
    <td>모상인</td>
    <td>16</td>
    <td>215</td>
    <td>3</td>
    <td>2023.02.18</td>
    <td><button class="button_2">상세</button>&nbsp;&nbsp;<button class="button_2">삭제</button></td>
	</tr>
	<tr>
	<td><input type="checkbox"></td>
	<td>1</td>
	<td>게시글테스트1</td>
    <td>모상인</td>
    <td>16</td>
    <td>215</td>
    <td>3</td>
    <td>2023.02.18</td>
    <td><button class="button_2">상세</button>&nbsp;&nbsp;<button class="button_2">삭제</button></td>
	</tr>
	<tr>
	<td><input type="checkbox"></td>
	<td>1</td>
	<td>게시글테스트1</td>
    <td>모상인</td>
    <td>16</td>
    <td>215</td>
    <td>3</td>
    <td>2023.02.18</td>
  	<td><button class="button_2">상세</button>&nbsp;&nbsp;<button class="button_2">삭제</button></td>
	</tr>
	<tr>
	<td><input type="checkbox"></td>
	<td>1</td>
	<td>게시글테스트1</td>
    <td>모상인</td>
    <td>16</td>
    <td>215</td>
    <td>3</td>
    <td>2023.02.18</td>
    <td><button class="button_2">상세</button>&nbsp;&nbsp;<button class="button_2">삭제</button></td>
	</tr>
	<tr>
	<td><input type="checkbox"></td>
	<td>1</td>
	<td>게시글테스트1</td>
    <td>모상인</td>
    <td>16</td>
    <td>215</td>
    <td>3</td>
    <td>2023.02.18</td>
    <td><button class="button_2">상세</button>&nbsp;&nbsp;<button class="button_2">삭제</button></td>
	</tr>
	</tbody>
</table>
	<h3>여기는 페이징기법</h3>
		</div>
		</section>
	</main>
</body>
</html>