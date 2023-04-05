<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script type="text/javascript">
	function consent() {
		var result = confirm("입력정보가 사라집니다 정말 나가시겠습니까?");
		if(result){
			location.href="consent.do";
		}else {
		}
	}
	/* 필수입력  */
	function login_01() {
		
	var id = document.getElementById("id");
	var pw1 = document.getElementById("pswd1");
	var pw2 = document.getElementById("pswd2");
    var Nickname = document.getElementById("Nickname");
	var userName = document.getElementById("name");
	var yy = document.getElementById("yy");
	var mm = document.getElementById("mm");
	var dd = document.getElementById("dd");
	var gender = document.getElementById("gender");
	var sample6_address = document.getElementById("sample6_address"); // 주소
	var sample6_detailAddress = document.getElementById("sample6_detailAddress"); // 상세주소
	var email = document.getElementById("email");
	var mobile = document.getElementById("mobile");
	
	if (id.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
	  alert("아이디를 입력하세요.");
	  id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
	  return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
	};
	if (pw1.value == "") { 
	  alert("비밀번호를 입력하세요.");
	  pw1.focus(); 
	  return false; 
	};
	if (pw2.value == "") { 
	  alert("비밀번호 재확인란을 입력하세요.");
	  pw1.focus(); 
	  return false; 
	};
	if (Nickname.value == "") {
	  alert("닉네임을 입력하세요.");
	  Nickname.focus();
	  return false; 
	};
	if (userName.value == "") {
	  alert("이름을 입력하세요.");
	  userName.focus(); 
	  return false; 
	};
	if (yy.value == "") { 
	  alert("년도를 선택해 주세요.");
	  id.focus();
	  return false; 
	};
	if (dd.value == "") { 
	  alert("태어난 일을 선택해 주세요.");
	  id.focus();
	  return false; 
	};
	if (sample6_address.value == "") { 
	  alert("주소를 입력해 주세요.");
	  id.focus();
	  return false; 
	};
	if (sample6_detailAddress.value == "") { 
	  alert("상세주소를 입력해 주세요..");
	  id.focus();
	  return false; 
	};
	if (email.value == "") { 
	  alert("이메일을 입력하세요.");
	  email.focus(); 
	  return false; 
	};
	if (email_1.value == "") { 
	  alert("인증번호를 입력하세요.");
	  email_1.focus(); 
	  return false; 
	};
	if (mobile.value == "") { 
	  alert("전화번호를 입력하세요.");
	  mobile.focus(); 
	  return false; 
	};
	var result = confirm("회원가입 하시겠습니까?");
	if(result){
		location.href="login.do";
	}else {
	}
}
</script>
<style type="text/css">
/* 레이아웃 틀 */
html {
    height: 100%;
    user-select: none;
}

body {
    margin: 0;
    height: 100%;
    background: #F6F1F1;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
    user-select: none;
}
#logo {
    width: 240px;
    height: 44px;
    cursor: pointer;
    user-select: none;
}

#header {
    padding-top: 20px;
    padding-bottom: 20px;
    text-align: center;
    user-select: none;
}
#wrapper {
    position: relative;
    height: 100%;
    user-select: none;
}

#content {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 460px;
    user-select: none;
}
/* 입력폼 */
input:focus {
    outline: none;
    user-select: none;
}

h3 {
    margin: 5px 0 1px;
    font-size: 14px;
    font-weight: 700;
    user-select: none;
}


.box {
    display: block;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    background: #fff;
    position: relative;
    user-select: none;
}

.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
    user-select: none;
}

.mail-check-input {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
    user-select: none;
}

input {
    font-family: Dotum,'돋움',Helvetica,sans-serif;
    user-select: none;  
}

.box.int_id {
    padding-right: 110px;
    user-select: none;
}

.box.int_pass {
    padding-right: 40px;
    user-select: none;
}

.box.int_pass_check {
    padding-right: 40px;
    user-select: none;
}

.step_url {
    /*@naver.com*/
    position: absolute;
    top: 16px;
    right: 13px;
    font-size: 15px;
    color: skyblue;
    border-color: #fff;
   border-color: #fff;
   user-select: none;
   
}
/* .successEmailChk:hover{
	color: red;
	user-select: none;
} */

.successEmailChk {
    /*@naver.com*/
    top: 16px;
    right: 13px;
    font-size: 15px;
    color: skyblue;
    border-color: #fff;
   border-color: #fff;
   user-select: none;
   
   
}
.step_url:hover{
	color: red;
	user-select: none;
}
.pswdImg {
    width: 18px;
    height: 20px;
    display: inline-block;
    position: absolute;
    top: 50%;
    right: 16px;
    margin-top: -10px;
    cursor: pointer;
    user-select: none;
}

#bir_wrap {
    display: table;
    width: 100%;
    user-select: none;
}

#bir_yy {
    display: table-cell;
    width: 147px;
    user-select: none;
}

#bir_mm {
    display: table-cell;
    width: 147px;
    vertical-align: middle;
    user-select: none;
}

#bir_dd {
    display: table-cell;
    width: 147px;
    user-select: none;
}

#bir_mm, #bir_dd {
    padding-left: 10px;
    user-select: none;
}

select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
    -webkit-appearance: none;
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
   user-select: none;
}

/* 에러메세지 */

.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;    
    display: none;
    user-select: none;
}

#alertTxt {
    position: absolute;
    top: 19px;
    right: 38px;
    font-size: 12px;
    color: red;
    display: none;
    user-select: none;
}
/* 버튼 */
.btn_area {
    margin: 30px 0 91px;
    user-select: none;
}
#btnJoin {
	float:right;
	margin:5px;
    width: 30%;
    padding: 21px 0 17px;
    border: 0;
    cursor: pointer;
    color: #fff;
    background-color: #E4DCCF;
    font-size: 20px;
    font-weight: 400;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
    user-select: none;
}
</style>
</head>
<body>	
	<form action="" onsubmit="return false">
        <div id="header">
            <a href="" target="_blank" title="내옆Pet 회원가입 페이지 "><img src="resources/img/petpet.png" id="logo"></a>
        </div>
        <div id="wrapper">
            <div id="content">
                <!-- 아이디 -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" >
                         <button  style="border:none; background-color:transparent;" type="submit" class="step_url"  >중복확인</button> 
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- 비밀번호 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="resources/img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- 비밀번호 재확인 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20" placeholder="동일하게 입력해 주세요">
                        <img src="resources/img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>
				
				<!-- 닉네임 -->
				  <div>
                    <h3 class="join_title">
                        <label for="id">닉네임</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="Nickname" class="int" maxlength="20">
                         <button style="border:none; background-color:transparent;" type="submit" class="step_url"  >중복확인</button> 
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- 이름 -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- 생년월일 -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- 성별 -->
                 <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div> 
                <div>
                	  <h3 class="join_title"><label for="gender">주소</label></h3>
                	   <span class="box gender_code">
                	   <input type="text" id="sample6_postcode"  class="int" maxlength="100" style=" white-space: nowrap;" placeholder="우편번호">
						<input type="button" class="step_url" style="border:none; background-color:transparent;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						</span>
						<span class="box gender_code">
						<input type="text" id="sample6_address"  class="int" maxlength="100" style=" white-space: nowrap;" placeholder="주소"><br>
						</span>
						<span class="box gender_code">
						<input type="text" id="sample6_detailAddress"  class="int" maxlength="100" style=" white-space: nowrap;" placeholder="상세주소">
				 		<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
                	   </span>
                </div>
					
                <!-- 이메일 -->
                <div>
                    <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                   
                    <span class="box int_email" >
                        <input type="text" id="email" name="email" class="int" maxlength="100" style=" white-space: nowrap;" placeholder="예)sanswer@naver.com">
                        <button id="emailChk" name="emailChk" style="border:none; background-color:transparent;" type="submit" class="step_url"  >인증번호 보내기</button> 
                    </span>
                    <span class="box int_email" style="margin-top: 5px;" >
                        <input type="text" id="email_1" name="email_1" class="mail-check-input" maxlength="100" placeholder="인증번호 6자리를 입력해주세요">
                        <button id="emailChk2" name="emailChk2" style="border:none; background-color:transparent;"  type="submit" class="step_url"  >인증</button>
                        <input type="hidden" id="emailDoubleChk"/>
                    </span>
		                <span class="successEmailChk">이메일 입력후 인증번호 보내기를 해주십시오.</span> 
                   <!--  <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span> -->
                </div>
                <!-- 핸드폰번호 -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="예)010-1111-2222">
                    </span>
                    <span class="error_next_box">휴대폰 번호를 입력해 주세요</span>    
                </div>

                <div>
                    <h3 class="join_title"><label for="phoneNo">전화번호</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile_1" class="int" maxlength="16" placeholder="예)031-1111-2222">
                    </span>
                    <span class="error_next_box">집 번호를 입력해 주세요</span>    
                </div>

                <div class="btn_area">
                    <button type="button" id="btnJoin" onclick="login_01()"  style="background-color: #E4DCCF ">
                      <span>가입하기</span>
                    </button>
                    <button type="button" id="btnJoin" onclick="consent()" > 
                        <span>취소</span>
                    </button>
                </div>

            </div> 
        </div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
<script>
/* 아이디 중복검사 */




 

 
/* 닉네임 중복검사 */







/* 주소입력 */
 function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }

/* 인증번호 발송 jsp  */
var code = "";
$("#emailChk").click(function(){
	var email = $("#email").val();
	/* console.log('니녀석에 이메일이 맞는가?: ' + email); // 이메일 오는지 확인해보자
	alert('너가 입력한 이메일 맞지?: ' + email);		//  alert창으로도 이메일 오는지 확인 */
	$.ajax({
        type:"GET",
        url:"mailCheck.do?email=" + email,
        cache : false,
        success:function(data){
        	if(data == "error"){
        		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
				$("#email").attr("autofocus",true);
				$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
				$(".successEmailChk").css("color","red");
        	}else{	        		
				alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
        		$("#email_1").attr("disabled",false);
        		$("#emailChk2").css("display","inline-block");
        		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
        		$(".successEmailChk").css("color","green");

        		code = data;
        	}
        }
    });
});

$("#emailChk2").click(function(){
	if($("#email_1").val() == code){
		$(".successEmailChk").text("인증번호가 일치합니다.");
		$(".successEmailChk").css("color","green");
		$("#emailDoubleChk").val("true");
		$("#email_1").attr("disabled",true);
		$("#email_1").css("pointer-events","none");  // 성공하면 마우스 클릭 금지
// 		$("#email_1").css("background-color","");
		//$("#sm_email").attr("disabled",true);
	}else{
		$(".successEmailChk").text("인증번호가 일치하지 않습니다.");
		$(".successEmailChk").css("color","red");
		$("#emailDoubleChk").val("false");
		$("#email_1").attr("autofocus",true);
	}
});

/*변수 선언*/


var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');
var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');
var Nickname = document.querySelector('#Nickname');
var userName = document.querySelector('#name');

var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');

var gender = document.querySelector('#gender');

/* var email = document.querySelector('#email'); */

var mobile = document.querySelector('#mobile');
var mobile_1 = document.querySelector('#mobile_1');

var error = document.querySelectorAll('.error_next_box');
var error_1 = document.querySelectorAll('.successEmailChk');

/*이벤트 핸들러 연결*/

$(function() {
	id.addEventListener("focusout", checkId);
		
	
	pw1.addEventListener("focusout", checkPw);
	pw2.addEventListener("focusout", comparePw);
	Nickname.addEventListener("focusout", checkNickname);
	userName.addEventListener("focusout", checkName);
	yy.addEventListener("focusout", isBirthCompleted);
	mm.addEventListener("focusout", isBirthCompleted);
	dd.addEventListener("focusout", isBirthCompleted);
	gender.addEventListener("focusout", function() {
	    if(gender.value === "성별") {
	        error[5].style.display = "block";
	    } else {
	        error[5].style.display = "none";
	    }
	})
	/* email.addEventListener("focusout", isEmailCorrect); */
	mobile.addEventListener("focusout", checkPhoneNum);
	mobile_1.addEventListener("focusout", checkPhoneNum_1);


});

/*콜백 함수*/

function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,10}/;
    if(id.value === "") {
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
    } else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~10자의 영문 소문자,숫자만 사용 가능합니다.";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "사용가능한 ID입니다";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}

function checkPw() {   
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        error[1].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자,특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        
        pwMsg.style.display = "block";
        pwImg1.src = "resources/img/m_icon_not_use.png";
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "안전";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "resources/img/m_icon_safe.png";
    }
}
function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "resources/img/m_icon_check_enable.png";
        error[2].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "resources/img/m_icon_check_disable.png";
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "필수 정보입니다.";
        error[2].style.display = "block";
    }
}

function checkNickname() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(Nickname.value === "") {
        error[3].innerHTML = "필수 정보입니다.";
        error[3].style.display = "block";
    } 
}
function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[4].innerHTML = "필수 정보입니다.";
        error[4].style.display = "block";
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[4].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[4].style.display = "block";
    } else {
        error[4].style.display = "none";
    }
}
function isBirthCompleted() {
    var yearPattern = /[0-9]{4}/;

    if(!yearPattern.test(yy.value)) {
        error[5].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
        error[5].style.display = "block";
    } else {
        isMonthSelected();
    }
    function isMonthSelected() {
        if(!mm.value === "월") {
            error[5].innerHTML = "태어난 월을 선택하세요.";
        } else {
            isDateCompleted();
        }
    }

    function isDateCompleted() {
        if(dd.value === "") {
            error[5].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
        } else {
            isBirthRight();
        }
    }
}
function isBirthRight() {
    var datePattern = /\d{1,2}/;
    if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
        error[5].innerHTML = "생년월일을 다시 확인해주세요.";
    } else {
        checkAge();
    }
}
function checkAge() {
    if(Number(yy.value) < 1923) {
        error[5].innerHTML = "다시 입력해주세요.";
        error[5].style.display = "block";
    } else if(Number(yy.value) > 2023) {
        error[5].innerHTML = "다시 입력해주세요.";
        error[5].style.display = "block";
    } else if(Number(yy.value) > 2008) {
        error[5].innerHTML = "만 14세 미만의 어린이는 가입할수 없습니다.";
        error[5].style.display = "block";
    } else {
        error[5].style.display = "none";
    }
}
/* 이메일 이벤트핸들러 */
/* function isEmailCorrect() {
	var emailPattern = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
    if(email.value === ""){ 
    	error[7].style.display = "none"; 
    } else if(!emailPattern.test(email.value)) {
    	error[7].style.display = "block";
    } else {
    	error[7].style.display = "none"; 
    }
	
    if(email.value === "") {
    	error[7].innerHTML = "필수 정보입니다.";
    	error[7].style.display = "block";
    }
} */


function checkPhoneNum() {
    var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[7].innerHTML = "필수 정보입니다.";
        error[7].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[7].style.display = "block";
    } else {
        error[7].style.display = "none";
    }
}

/* function checkPhoneNum_1() {
    var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile_1.value === "") {
        error[9].innerHTML = "필수 정보입니다.";
        error[9].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[9].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[9].style.display = "block";
    } else {
        error[9].style.display = "none";
    }
} */
</script>
    </form>
   </body>
</html>



