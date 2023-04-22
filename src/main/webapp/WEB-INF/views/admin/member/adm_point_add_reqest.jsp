<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 관리</title>
<link rel="stylesheet"
	href="resources/css/admin_mbr_css/mbr_point_style.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function f_pay(nickname, amount, idx) {
		var result = confirm("지급하시겠습니까?");
		if (result) {
			window.location.href = "requestPoint.do?mbr_nickname=" + nickname + "&rpnt_amount=" + amount + "&rpnt_idx=" + idx + "&cPage=1";
		} else {
			alert("변경이 취소되었습니다.");
		}
	}
	
	function c_pay() {
		var result = confirm("거절하시겠습니까?");
		if (result) {
			
		} else {
			alert("거절이 취소되었습니다.");
		}
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="mem_sec">
			<ul id="crm_sub">
				<li class="mli"><a class="ad-link" href="admin_mbr_point.do">포인트
						내역 조회</a></li>
				<li class="mli"><a class="ad-link" href="#">포인트 충전 신청</a></li>
			</ul>
			<div class="member_list">
				<form action="">
					<table>
						<caption
							style="margin-bottom: 20px; font-size: 20px; text-align: left;">충전
							신청 목록</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>닉네임</th>
								<th>신청일자</th>
								<th>신청금액</th>
								<th>처리상태</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty rpntlist}">
									<tr>
										<td colspan="6"><h2>신청된 정보가 없습니다.</h2></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${rpntlist}" var="k" varStatus="c">
										<tr>
											<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + c.index) + 2}</td>
											<td>${k.mbr_nickname}</td>
											<td>${k.rpnt_date}</td>
											<td>${k.rpnt_amount}</td>
											<td>${k.rpnt_state}</td>
											<td>
												<button type="button" class="pay_btn"
													onclick="f_pay('${k.mbr_nickname}', ${k.rpnt_amount}, ${k.rpnt_idx})">지급하기</button>
												<button class="pay_btn" onclick="c_pay()">거절하기</button>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="8">
									<ol class="paging">
										<%-- 이전 --%>
										<c:choose>
											<c:when test="${paging.beginBlock > paging.pagePerBlock }">
												<a
													href="adm_p_add_req.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a>
											</c:when>
										</c:choose>

										<!-- 블록안에 들어간 페이지번호들 -->
										<c:forEach begin="${paging.beginBlock+1}"
											end="${paging.endBlock}" step="1" var="k">
											<%-- 현재 페이지는 링크X, 나머지는 해당 페이지로 링크 처리 --%>
											<c:if test="${k==paging.nowPage}">${k}</c:if>
											<c:if test="${k!=paging.nowPage}">
												<a href="adm_p_add_req.do?cPage=${k}">${k}</a>
											</c:if>
										</c:forEach>

										<!-- 다음 -->
										<c:choose>
											<c:when test="${paging.endBlock < paging.totalpage }">
												<li><a
													href="adm_p_add_req.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a></li>
											</c:when>
										</c:choose>
									</ol>
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>