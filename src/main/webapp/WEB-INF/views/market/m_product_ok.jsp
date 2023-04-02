<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문창</title>
<link rel="stylesheet" href="resources/css/market_css/market_pdt_one.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.div{
  margin-left:auto;
  margin-right:auto;
  margin-top:50px;
  width : 1100px;
  height: 1700px;
  border: 1px solid black;
  border-width: medium;
  border-radius: 30px; /* 모서리 둥글게 */
}
.div_1{
  margin-left:auto;
  margin-right:auto;
  margin-top:30px;
  width : 1000px;
  height: 209px;
  border: 1px solid black;
  border-width: thin;
  border-right: hidden;
  border-left: hidden;
}

.div_2{
  margin-left:auto;
  margin-right:auto;
  /* margin-top:30px; */
  width : 1000px;
  height: 395px;
  border: 1px solid black;
  border-width: thin;
  border-right: hidden;
  border-left: hidden;
}
.div_3{
  margin-left:auto;
  margin-right:auto;
  margin-top:30px;
  width : 1000px;
  height: 70px;
  border: 1px solid black;
  border-width: thin;
  border-right: hidden;
  border-left: hidden;
}
.div_4{
  margin-left:auto;
  margin-right:auto;
  margin-top:30px;
  width : 1000px;
  height: 280px;
  border: 1px solid black;
  border-width: thin;
  border-right: hidden;
  border-left: hidden;
}
.div_5{
  margin-left:auto;
  margin-right:auto;
  margin-top:30px;
  width : 1000px;
  height: 140px;
  border: 1px solid black;
  border-width: thin;
  border-right: hidden;
  border-left: hidden;
}
.box{ 
 text-align:center;
 line-height:40px;
 width : 150px;
 height: 58px; 
 border: 1px solid black;
 border-bottom-color:#F0EBE3;
 border-right-color:#F0EBE3;
 border-left: hidden;
 border-top: hidden;
 /* background-color: #EDEDED; */
}
.box_1{ 
 text-align:center;
 line-height:90px;
 width : 150px;
 height: 105px; 
 border: 1px solid black;
 border-bottom-color:#F0EBE3;
 border-right-color:#F0EBE3;
 border-left: hidden;
 border-top: hidden;
 /* background-color: #EDEDED; */
}
h2{
font-size:30px;
margin-left:715px;
margin-top:130px;
margin-bottom: 10px;
}
input {
 width : 280px;
 height: 25px; 
}
select{
 width : 280px;
 height: 30px; 
}
.input{
width : 390px;
 height: 25px; 
}
/* .input_1{
  border-right: hidden;
  border-top: hidden;
} */

.but:hover{
	color: red;
}
</style>
<script type="text/javascript">
function completion(f) {
    var result = confirm("결제하시겠습니까?");
    if(result){
    f.action="completion.do"
    f.submit();
    }else {
    }
}
</script>
</head>
<body>
	<header>
	<jsp:include page="m_home_nav.jsp" />
	</header>
	<main>
	<h2>주문/결제</h2>
	<div class="div">
		<form>
		<p style="font-size: 20px; margin-left: -910px; margin-top: 20px;">구매자 정보</p>
		<div class="div_1" >
			<div>
		 	<p class="box" style="float:left; ">보내시는 분</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left; ">Emall</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left; border-bottom:hidden;" >휴대폰 번호</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text" placeholder="010-XXXX-XXXX">
			</div>
		</div>
		<br>
		
			<p style="font-size: 20px; margin-left: -890px; margin-top: 20px; white-space:nowrap;">받는사람 정보</p>
			<button class="but" style=" margin-left:963px; background-color: #F5F5F5;"
			onclick="window.open('shipping.do','window_name','width=650,height=600,location=no,toolbar=no,menubar=no,status=no,scrollbars=no');">저장 배송지</button>
		<div class="div_2" >
			<div>
		 	<p class="box" style="float:left; ">이름</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left; ">Emall</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left;  ">휴대폰 번호</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text" placeholder="010-XXXX-XXXX">
			</div><br>
			<div>
		 	<p class="box_1" style="float:left; ">주소</p>
 		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text"><button  style="margin-left: 10px; width: 100px; height: 30px;">찾기</button><br> 
		 	 <input class="input" style="margin-left: 10px; margin-top: 15px;" type="text" placeholder="상세주소">
			</div><br>
			<div>
		 	<p class="box" style="float:left;  ">요청사항</p>
		 	 <select style="margin-left: 10px;margin-top: 15px;">
                 <option>요청사항</option>
                    <option>부재 시 문 앞에 놓아주세요.</option>
                    <option>부재 시 택배함에 놓아주세요.</option>
                    <option>부재 시 경비실에 맡겨 주세요</option>
                    <option>파손 위험이 있어요. 조심해주세요</option>
                    <option>배송 전에 연락주세요.</option>
             </select> 
			</div>
		</div><br>
		
			<p style="font-size: 20px; margin-left: -960px; margin-top: 20px;">쿠폰</p>
			<div class="div_3" >
			<div>
		 	<p class="box" style="float:left; ">쿠폰</p>
		 	 <input style="margin-left: 10px; margin-top: 15px;" type="text">
		 	 <button class="but" style="width: 150px; height: 30px; margin-top: 18px; margin-left: 10px; background-color: #F5F5F5;"
		 	 onclick="window.open('coupon.do','window_name','width=650,height=600,location=no,toolbar=no,menubar=no,status=no,scrollbars=no');">쿠폰조회</button>
		 	 <!-- 로그인한 사람에 따라서 주소값이 달라져야 하는데 이건 쌤한테 물어보자 -->
			</div>
		</div>

			<p style="font-size: 20px; margin-left: -920px; margin-top: 20px;">주문 상품</p>
			<div class="div_3" >
			<div>
		 	<p class="box" style="float:left; ">상품</p>
		 	 <input class="input_1" style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
		</div><br>
		
			<p style="font-size: 20px; margin-left: -920px; margin-top: 20px;">결제 금액</p>
		<div class="div_4" >
			<div>
		 	<p class="box" style="float:left; ">총 상품 가격</p>
		 	 <input class="input_1" style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left; ">할인 금액</p>
		 	 <input class="input_1" style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left; ">배송비</p>
		 	 <input class="input_1" style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
			<div>
		 	<p class="box" style="float:left; color: red;">총 결제 금액</p>
		 	 <input class="input_1" style="margin-left: 10px; margin-top: 15px;" type="text">
			</div><br>
		</div>
			<br>
			<button style="border-radius: 30px; width: 400px; height: 70px; margin-left: 320px; background-color:#EB455F; font-size:20px; color:white; font-weight: bold;" 
			onclick="completion(this.form)">결제하기</button>
		</form>
	</div>
	</main>
</body>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<jsp:include page="m_footer.jsp" />
</html>



























