<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매완료</title>
<script type="text/javascript">
function market() {
    var result = confirm("마켓홈으로 이동 하시겠습니까?");
    if(result){
    location.href="market.do";
    }else {
    }
}	
function my_cartlist() {
    var result = confirm("장바구니로 이동 하시겠습니까?");
    if(result){
    location.href="my_cartlist.do";
    }else {
    }
}	
</script>
<style type="text/css">
.img{
 display : block;
 margin : auto;
}
.img1{
 display : block;
 margin : auto;
 height: 130px;
 margin-top: 50px;
}
.border {
 	position: relative;
	/* display: flex; flex-direction : column; */
	align-items: center;
	justify-content: space-between;
	/* padding: 30px; */
	border: 1px solid #ccc;
	border-radius: 20px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	margin-left: 700px;
	margin-right: 700px;
	margin-bottom:10px;
	margin-top: 20px;
	height: auto;
	min-height: 100%;
	padding-bottom: 50px;
	flex-direction: column;
	
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
#add_btn {
width:230px;
height:70px;
 margin-left: 1400px;
}
#add_btn:hover {
	background-color: #2980b9;
}
#add_btn1 {
width:230px;
height:70px;
 margin-left: 1100px;
}
#add_btn1:hover {
	background-color: #2980b9;
}
.text{
	margin-top:10px;
	margin-left:21px;
	width:315px;
	height:20px;
	border: none; 
 	background: transparent;
	user-select: none; 
	font-weight: bold; 
	font-size: 20px; 
} 
table{
margin-left: 270px;
}


table td {
	font-weight: bold;	
	font-size: 25px; 
	width: 155px;
	padding: 10px;
/* 	vertical-align: top;
	border-bottom: 1px solid #ccc; */
	background: white;
}
.footBtwrap{margin-top: 15px; user-select: none;}
.footBtwrap>li{float: left;width: 40%;height: 60px; user-select: none;}
.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center; user-select: none;}
.fpmgBt1{background-color: #9fc4db; color:#fff;border-color: #fff; user-select: none;} 
.fpmgBt2{background-color: #9fc4db; color: #fff; border-color: #eee; user-select: none;}  
</style>
</head>
<body>
<img  class="img" src="resources/img/petpet.png" >
	<!--  <h1 style="position:absolute; left:510px;">주문완료</h1> -->
	<div class="border">
		<div class="div">
		<img class="img1" src="resources/img/Completion.png"  >
		<br>
		<h2 style="text-align: center; ">결제가 정상적으로 완료 되었습니다&nbsp;<em style="color: red; font: inherit;">&nbsp;완료</em>되었습니다.</h2>
		<br><hr>
		<p><img class="img" src="resources/img/market/img_icon.png" style="width: 200px; user-select: none;" ></p>
	    <hr style="margin-bottom: 30px;">
		<table>
			<tr>
				<td>상품이름</td>
				<td><input placeholder="강아지 옷" class="text" type="text" style="height:23px;"><br></td>
			</tr>
			<tr>
				<td>주문번호</td>
				<td><input placeholder="1251515151" class="text" type="text" style="height:23px; "><br></td>
			</tr>
		</table>
		<br><hr>
		<br>		
		<table>
			<tr>
				<td>배송지 내용</td>
				<td><input placeholder="모상인" class="text" type="text" style="height:23px; "><br></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td><input placeholder="010-5523-8429" class="text" type="text" style="height:23px; "><br></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td><input placeholder="수원시 팔달구 매교동 94-64" class="text" type="text" style="height:23px; "><br></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
				<td><input placeholder="타워펠리스3차 302호" class="text" type="text" style="height:23px; "><br></td>
			</tr>
		</table>
		<br><hr>
		<table>
			<tr>
				<td>배송 메모</td>
				<td><input placeholder="배송 전에 미리 연락 부탁드립니다." class="text" type="text" style="height:23px;"><br></td>
			</tr>
		</table>
		<br><hr>
		<ul class="footBtwrap clearfix" style=" list-style:none; margin-left: 190px;"> 
			<li><button type="button" onclick="market()" class="fpmgBt1" style="margin-left: -50px;" >홈</button></li>
			<li><button type="button" onclick="my_cartlist()" class="fpmgBt2" >장바구니</button></li>
		</ul>
			<br><br>
		</div>
	</div>
</body>
</html>













