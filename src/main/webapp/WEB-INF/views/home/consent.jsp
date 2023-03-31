<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<style type="text/css">
*{margin: 0;padding: 0;box-sizing: border-box}
body{
background-color: #F6F1F1; 
background-size: cover;
opacity: 0.9;
user-select: none;
}
ul>li{list-style: none;
user-select: none;
}
a{text-decoration: none;
user-select: none;}
.clearfix::after{content: "";display: block;clear: both;
user-select: none;
}

#joinForm{width: 460px;margin: 0 auto; user-select: none;}
ul.join_box{border: 1px solid #ddd;background-color: #fff; user-select: none;}
.checkBox,.checkBox>ul{position: relative; user-select: none;}
.checkBox>ul>li{float: left; user-select: none;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888; user-select: none;}
.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px; user-select: none;}
.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none; user-select: none;}
.footBtwrap{margin-top: 15px; user-select: none;}
.footBtwrap>li{float: left;width: 50%;height: 60px; user-select: none;}
.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px; user-select: none;}
.fpmgBt1{background-color: #fff;color:#888;border-color: #fff; user-select: none;} 
.fpmgBt2{background-color: lightsalmon;color: #fff; border-color: #eee; user-select: none;} 
</style>
<script type="text/javascript">

function singup_01() {
   
	var chk1 = document.getElementById("chk1");
	var chk2 = document.getElementById("chk2");
	var chk3 = document.getElementById("chk3");
	var chk4 = document.getElementById("chk4");
	
	if (!chk1.checked) { //체크박스 미체크시
	    alert("이용약관 동의를 체크하세요.");
	    agree.focus();
	    return false;
	  }
	if (!chk2.checked) { //체크박스 미체크시
	    alert("개인 정보의 수집 항목에 체크하세요.");
	    agree.focus();
	    return false;
	  }
	if (!chk3.checked) { //체크박스 미체크시
	    alert("개인 정보의 수집 목적에 체크하세요..");
	    agree.focus();
	    return false;
	  }
	if (!chk4.checked) { //체크박스 미체크시
	    alert("개인 정보의 보유에 체크하세요.");
	    agree.focus();
	    return false;
	  }
	
	var result = confirm("입력창으로 넘어가시겠습니까?");
    if(result){
    location.href="singup.do";
    }else {
    }
}
function login() {
	location.href="login.do";
}
/* 체크박스 전체선택 */
$(document).ready(function() {
	$("#chkAll").click(function() {
		if($("#chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});
	
	$("input[name=chk]").click(function() {
		var total = $("input[name=chk]").length;
		var checked = $("input[name=chk]:checked").length;
		
		if(total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true); 
	});
});
</script>
	
</head>
<body>
	<br><br><br><br><br>
	<form action="" id="joinForm">
		<ul class="join_box">
			<br><br>
			<h3 style="text-align: center;">내옆Pet 정보 동의</h3>
			<br><br>
			  <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관(필수),
                        개인정보 수집(필수) 및 
                        개인 정보의 보유(필수) 에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chkAll" class="chkAll">
                        </li>
                    </ul>
                </li>
			<li class="checkBox check02">
				<ul class="clearfix">
					<li>이용약관 동의(필수)</li>
					<li class="checkBtn"><input type="checkbox" value="1" name="chk" id="chk1"></li>
				</ul> 
				<textarea name="" id=""  disabled style="resize: none;">
				<!-- 약관내용 -->
       			</textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>개인 정보의 수집 항목 및 수집 방법(필수)</li>
					<li class="checkBtn"><input type="checkbox" value="2" name="chk" id="chk2"></li>
				</ul> 
				<textarea name="" id="" disabled style="resize: none;">
				<!-- 약관내용 -->
       			</textarea>
			</li>
			<li class="checkBox check04">
				<ul class="clearfix">
					<li>개인 정보의 수집 목적 및 이용 목적(필수)</li>
					<li class="checkBtn"><input type="checkbox" value="3" name="chk" id="chk3"></li>
				</ul> 
				<textarea name="" id="" disabled style="resize: none;"> 
				<!-- 약관내용 -->
       			</textarea>
			</li>
			<li class="checkBox check05">
				<ul class="clearfix">
					<li>개인 정보의 보유 및 이용 기간(필수)</li>
					<li class="checkBtn"><input type="checkbox" value="4" name="chk" id="chk4">
					</li>
				</ul> 
				<textarea name="" id="" disabled style="resize: none;"> 
				<!-- 약관내용 -->
				</textarea>
			</li>
		<br>
		</ul>
		<ul class="footBtwrap clearfix"> 
			<li><button type="button" onclick="login()" class="fpmgBt1" >취소</button></li>
			<li><button type="button" onclick="singup_01()" class="fpmgBt2" >다음</button></li>
		</ul>
		<br><br>
	</form>
	
</body>
</html>