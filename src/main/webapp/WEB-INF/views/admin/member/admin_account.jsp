<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 계정 생성</title>
<link rel="stylesheet"
	href="resources/css/admin_mbr_css/ad_acc_create.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	function generatePassword() {
		var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		var password = "";
		for (var i = 0; i < 8; i++) {
			password += chars.charAt(Math.floor(Math.random() * chars.length));
		}
		document.getElementsByName("admin_pwd")[0].value = password;
	}
	function adm_insert_go(form) {
		var adm_id = form.adm_id.value.trim();
		var admin_pwd = form.admin_pwd.value.trim();
		var adm_name = form.adm_name.value.trim();
		var adm_email = form.adm_email.value.trim();
		var adm_mgr = form.adm_mgr.value.trim();
		var mail_page = form.mail_page.value;

		if (adm_id === "" || admin_pwd === "" || adm_name === ""
				|| adm_email === "") {
			alert("모든 항목을 입력해주세요.");
			return;
		} else if (adm_email === "" || mail_page === "none") {
			alert("이메일을 입력해주세요.");
			return;
		} else {
			if ($("#result").val() == "사용 가능") {
				form.action = "ad_acc_create_ok.do";
				form.submit();
			} else {
				alert("아이디 중복 검사를 해주세요.");
				return;
			}
		}
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#dupCheck").click(function() {
			var ad_id = $("#ad_id").val();
			$.ajax({
				url : "ad_acc_dupCheck.do",
				type : "POST",
				dataType : "text",
				data : {
					ad_id : ad_id
				},
				success : function(data) {
					if (data == "useable") {
						$("#result").val("사용 가능");
						$("#result").css({
							"display" : "inline-block",
							"color" : "blue",
							"border" : "none",
							"font-size" : "7px",
							"height" : "10px"
						});
						if (confirm("사용하시겠습니까 ?")) {
							$("#ad_id").prop('readonly', true);
						} else {
							$("#ad_id").prop('readonly', false);
						}

					} else {
						$("#result").val("이미 사용 중인 아이디입니다.");
						$("#result").css({
							"display" : "inline-block",
							"color" : "red",
							"border" : "none",
							"font-size" : "7px",
							"height" : "10px"
						});
					}
				},
				error : function() {
					alert("사용 불가");
				}
			});
		});
	});
</script>
<script type="text/javascript">
	// selectbox 값이 변경될 때마다 호출되는 함수
	function changeMailPage() {
		// selectbox의 선택된 옵션을 가져옵니다.
		var selectedOption = document.getElementsByName('mail_page')[0].value;

		// 선택된 옵션이 "none"인 경우, writeEmail input을 비활성화합니다.
		if (selectedOption == 'none') {
			document.getElementsByName('writeEmail')[0].disabled = false;
		} else {
			// 그 외의 경우, writeEmail input을 활성화합니다.
			document.getElementsByName('writeEmail')[0].value = "";
			document.getElementsByName('writeEmail')[0].disabled = true;
		}
	}

	// 페이지 로드시 한번 호출하여 현재 selectbox 값에 따라 writeEmail input을 활성화/비활성화합니다.
	changeMailPage();
</script>

</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="admin_mbr_admin.do">관리자
						정보관리</a></li>
				<li class="mli"><a class="ad-link" href="#">관리자 계정 만들기</a></li>
			</ul>
			<div class="member_list">
				<form>
					<table>
						<caption>관리자 계정 생성</caption>
						<tbody>
							<tr>
								<th class="title">아이디</th>
								<td colspan="3"><input type="text" id="ad_id" name="adm_id"
									size="27"> <input type="button" name="ad_id_chk"
									id="dupCheck" value="중복확인" onclick="dupCheck()"><input
									type="text" id="result" name="result" size="27"></td>
							</tr>
							<tr>
								<th class="title">비밀번호</th>
								<td colspan="3"><input type="text" name="admin_pwd"
									size="27" readonly> <input type="button"
									name="ad_pwd_create" value="비밀번호생성"
									onclick="generatePassword()"></td>
							</tr>
							<tr>
								<th class="title">이름</th>
								<td><input type="text" name="adm_name" size="27"></td>
							</tr>
							<tr>
								<th class="title">이메일</th>
								<td colspan="3"><input type="text" name="adm_email"
									size="20"> &nbsp;@&nbsp; <select name="mail_page"
									onchange="changeMailPage()">
										<option value="none">직접입력</option>
										<option value="google.com">gmail.com</option>
										<option value="naver.com">naver.com</option>
										<option value="daum.com">daum.net</option>
								</select> <input type="text" name="writeEmail" size="20"></td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center"><input
									type="hidden" name="adm_mgr" value="" /> <input type="button"
									value="계정생성" onclick="adm_insert_go(this.form)" /> <input
									type="reset" value="초기화" /></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>