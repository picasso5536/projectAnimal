<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정</title>
<link rel="stylesheet"
	href="resources/css/admin_mbr_css/mbr_update_style.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
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
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
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
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<div class="member_list">
				<form>
					<table>
						<caption>고객 정보 수정</caption>
						<tbody>
							<tr>
								<th class="title">가입일</th>
								<td class="td_text">${mvo.mbr_join}</td>
								<th class="title">마지막 로그인</th>
								<td class="td_text">${mvo.mbr_access}</td>
							</tr>
							<tr>
								<th class="title">아이디</th>
								<td><input type="text" name="m_id" size="27"
									value="${mvo.mbr_id}" readonly></td>
								<th class="title">닉네임</th>
								<td><input type="text" name="m_d" size="27"
									value="${mvo.mbr_nickname}" readonly></td>
							</tr>
							<tr>
								<th class="title">이름</th>
								<td><input type="text" name="m_name" size="27"
									value="${mvo.mbr_name}"></td>
								<th class="title">포인트</th>
								<td>${mvo.pnt_now}&nbsp;P</td>
							</tr>
							<tr>
								<th class="title">Phone</th>
								<td colspan="3"><input type="text" name="writer" size="30"
									value="0${mvo.mbr_cellphone}"></td>
							</tr>
							<tr>
								<th class="title">집전화</th>
								<td colspan="3"><input type="text" name="writer" size="30"
									value="${mvo.mbr_telephone}"></td>
							</tr>
							<tr>
								<th class="title">이메일</th>
								<td colspan="3"><input type="text" name="writer" size="35"
									value="${mvo.mbr_email}" readonly>
							</tr>
							<tr>
								<th class="title">이메일 수신여부</th>
								<td><input type="radio" name="mail_yn" value="" checked>수신동의&nbsp;
									<input type="radio" name="mail_yn" value="">미동의</td>
								<th class="title">SNS 수신여부</th>
								<td><input type="radio" name="sns_yn" value="" checked>수신동의&nbsp;
									<input type="radio" name="sns_yn" value="">미동의</td>
							</tr>
							<tr>
								<th class="title">정지횟수</th>
								<td class="td_text">${mvo.mbr_ban_cnt}</td>
								<th class="title">가입경로</th>
								<td class="td_text">${mvo.mbr_path}</td>
							</tr>
							<tr>
								<th class="title">관심분야</th>
								<td class="td_text" colspan="3">${mvo.mbr_attention}</td>
							</tr>
							<tr>
								<th class="title">주소</th>
								<td class="addr_text" colspan="3">
									<!-- <input type="text" name="writer" size="17" placeholder="우편번호검색"><br>
									<input type="text" name="writer" size="43" placeholder="주소"><br>
									<input type="text" name="writer" size="43" placeholder="상세주소"> -->
									<input type="text" id="sample6_postcode" size="17"
									placeholder="우편번호"> <input type="button"
									onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" id="sample6_address" size="43"
									placeholder="주소"><br> <input type="text"
									id="sample6_detailAddress" size="43" placeholder="상세주소">
									<input type="text" id="sample6_extraAddress" placeholder="참고항목">
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center"><input
									type="button" value="정보수정" onclick="sendupdate_go(this.form)" />
									<input type="reset" value="초기화" /></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>