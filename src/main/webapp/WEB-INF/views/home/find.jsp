<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
<style type="text/css">
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquareRound/nanumsquare.css);
</style>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<style type="text/css">
.h2{
 text-align: center;
 margin-top: 50px;
}
.div{
  margin-left:auto;
  margin-right:auto;
  margin-top:50px;
  /* margin-top:150px; */
  width : 900px;
  height: 950px;
  /* background-color: #f5d682; */
  border: 1px solid black;
  border-width: medium;
}
.div_1{
  margin-left:25px;
  width : 850px;
  height: 300px;
  border: 1px solid black;
  border-width: 1px;
}
pre{
font-size: 25px;
color: gray;
font-weight: bold;
}
.input_1 {
	margin-left:-5px;
	width:200px;
	height:20px;
}
.input_2 {
	margin-top:10px;
	margin-left:21px;
	width:315px;
	height:20px;
}
.input_3 {
	margin-bottom:8px;
	margin-left:52px;
	width:315px;
	height:20px;
}
button {
  background-color: #B2B2B2;
  color: white;
  /* border: none; */
  width: 100px;
  height: 25px;
  margin-left: 7px;
}
.button_01{
 position:absolute;
 background-color: red;
 color: white;
 width: 100px;
 height: 65px;
}
.out{ 
 margin-top:5px;
 margin-left:1615px;
 background-color: red;
 color: white;
 width: 100px;
 height: 30px;
}
</style>
</head>
<script type="text/javascript">
function out() {
	 var result = confirm("입력 정보가 사라집니다 나가시겠습니까?");
	    if(result){
	    location.href="login.do";
	    }else {
	    }
}
</script>
<body>
	<h2 class="h2">아이디/비밀번호 찾기</h2>
	<div class="div">
		<pre style="margin-top: 40px;">  아이디 찾기</pre>
		<div class="div_1">
		 <p style="margin-left: 10px; margin-top: 30px; margin-bottom: 30px; font-weight: normal;">가입시 등록한 이메일로 인증번호를 받아 입력해주세요. <em style="color: red;">회원님의 이메일로 아이디가 발송됩니다.</em></p>
		 <hr style="border-width:1px 0 0 0; border-color:#fff;">
		  <div style="margin-top: 60px; margin-left: 90px;">
		  <p style="font-weight: bold; display:inline; "> 이메일 주소 &nbsp; &nbsp; &nbsp; &nbsp;</p>
		  <input class="input_1" type="text" placeholder="예)sanswer@naver.com">
		  <button type="submit" onclick="alert('인증문자가 발송 되었습니다.')" >인증번호 받기</button>
		  <button class="button_01" onclick="alert('인증되었습니다.')">확인</button><br>
		  
		  <p style="font-weight: bold; display:inline; "> 인증번호  &nbsp; &nbsp; &nbsp; &nbsp;</p><input class="input_2" type="text" ><br>
		  <span style="font-size: 10px; color: gray; font-weight: bold; margin-left: 135px;">이메일로 전송된 인증번호를 입력하시고 '확인' 버튼을 눌러주세요</span>
		 </div>	
		</div>
		<br><br>
		
		<!--비밀번호 찾기  -->
		<pre style="margin-top: 40px;">  비밀번호 찾기</pre>
		<div class="div_1">
		 <p style="margin-left: 10px; margin-top: 30px; margin-bottom: 30px; font-weight: normal;">가입시 등록한 이메일로 인증번호를 받아 입력해주세요. <em style="color: red;">회원님의 이메일로 비밀번호가 발송됩니다.</em></p>
		 <hr style="border-width:1px 0 0 0; border-color:#fff;">
		  <div style="margin-top: 60px; margin-left: 90px;">
		  
		  <p style="font-weight: bold; display:inline; "> 이름  &nbsp; &nbsp; &nbsp; &nbsp;</p><input class="input_3" type="text" ><br>
		  
		  <p style="font-weight: bold; display:inline; "> 이메일 주소 &nbsp; &nbsp; &nbsp; &nbsp;</p>
		  <input class="input_1" type="text" placeholder="예)sanswer@naver.com">
		  <button type="submit" onclick="alert('인증문자가 발송 되었습니다.')" >인증번호 받기</button>
		  <button class="button_01" onclick="alert('인증되었습니다.')">확인</button><br>
		  
		  <p style="font-weight: bold; display:inline; "> 인증번호  &nbsp; &nbsp; &nbsp; &nbsp;</p><input class="input_2" type="text" ><br>
		  <span style="font-size: 10px; color: gray; font-weight: bold; margin-left: 135px;">이메일로 전송된 인증번호를 입력하시고 '확인' 버튼을 눌러주세요</span>
		 
		 </div>	
		</div>
	</div>
	<button type="button" class="out" onclick="out()">나가기</button>
	<br><br><br><br>
</body>
</html>



























