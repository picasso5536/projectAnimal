<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
<style type="text/css">
*{margin: 0;padding: 0;box-sizing: border-box}
body{
background-color: #fff; 
background-image: url("resources/img/lion.jpg"); 
background-size: cover;
opacity: 0.9;

}

ul>li{list-style: none}
a{text-decoration: none;}
.clearfix::after{content: "";display: block;clear: both;}
#joinForm{width: 460px;margin: 0 auto;}
ul.join_box{border: 1px solid #ddd;background-color: #fff;}
.checkBox,.checkBox>ul{position: relative;}
.checkBox>ul>li{float: left;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
.footBtwrap{margin-top: 15px;}
.footBtwrap>li{float: left;width: 50%;height: 60px;}
.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px;}
.fpmgBt1{background-color: #fff;color:#888;border-color: #fff;}
.fpmgBt2{background-color: lightsalmon;color: #fff; border-color: #eee;}


/* 왜 안먹는거야??  */
  /* .box01{
        width: 500px;
        height: 300px; 
        position: relative;}
    .box01::before{
        content: "";
        background: url(https://cdn.pixabay.com/photo/2020/06/28/00/04/chicago-5347435_960_720.jpg);
        background-size: cover;
        opacity: 0.5;
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        bottom: 0px; */
    }
</style>
<script type="text/javascript">

	
	window.onload = function () {
	const chks = document.querySelectorAll('.chk');  
	const checkAll = document.getElementById('.chkAll');
	const chkBoxLength = chks.length;

	checkAll.addEventListener('click', function(event) {
	    if(event.target.checked)  {
	        chks.forEach(function(value){
	        value.checked = true;
	    })
	    }else {
	       chks.forEach(function(value){
	       value.checked = false;
	    })
	 }
	  });
	for (chk of chks){
	    chk.addEventListener('click', function() {
	        let count = 0;
	        chks.forEach(function(value){
	            if(value.checked == true){
	                count++;
	            }
	        })
	        if(count !== chkBoxLength){
	            checkAll.checked = false;
	        }else{
	            checkAll.checked = true;
	        }
	      })
	}
	 }

</script>
<script type="text/javascript">
function singup_01() {
    var result = confirm("입력창으로 넘어가시겠습니까?");
    if(result){
    location.href="singup.do";
    }else {
    }
}
</script>
</head>
<body>

	<br><br><br><br><br><br>
	<form action="" id="joinForm">
	
		<ul class="join_box">
			<br><br>
			<h3 style="text-align: center;">이용에 필요한 정보 동의</h3>
			<br><br>
			<li class="checkBox check01">
				<ul class="clearfix">
					<li>이용약관 동의(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="chk"></li>
				</ul> 
				<textarea name="" id="">
				<!-- 약관내용 -->
       			</textarea>
			</li>
			
			<li class="checkBox check02">
				<ul class="clearfix">
					<li>개인 정보의 수집 항목 및 수집 방법(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="chk"></li>
				</ul> 
				<textarea name="" id="">
				<!-- 약관내용 -->
       			</textarea>
			</li>
			
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>개인 정보의 수집 목적 및 이용 목적(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="chk"></li>
				</ul> 
				<textarea name="" id="">
				<!-- 약관내용 -->
       			</textarea>
			</li>
			
			<li class="checkBox check04">
				<ul class="clearfix">
					<li>개인 정보의 보유 및 이용 기간(필수)</li>
					<li class="checkBtn"><input type="checkbox" name="chk">
					</li>
				</ul> 
				<textarea name="" id=""> 
				<!-- 약관내용 -->
				</textarea>
			</li>
			
		<br>
		</ul>
		<ul class="footBtwrap clearfix">
			<li><button class="fpmgBt1">비동의</button></li>
			<li><button type="button" onclick="singup_01()" class="fpmgBt2" >동의</button></li>
		</ul>
	</form>
</body>
</html>