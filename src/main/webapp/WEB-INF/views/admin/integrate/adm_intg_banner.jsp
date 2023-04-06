<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 > 배너 관리</title>
<style type="text/css">
body {
	font-family: 'NanumSquareRound';
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

main {
	flex: 1;
}

.border {
	position: relative;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 30px;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	margin-bottom: 20px;
	margin-left: 230px;
	margin-top: 15px;
	height: auto;
	min-height: 100%;
	padding-bottom: 150px;
}

#sec1 {
	margin-right: 60px;
	margin-left: 30px;
	font-color: #fff;
	max-width: 1500px;
	min-width: 1300px;
}

.banner {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	width: 100%;
	margin-top: 60px;
}

button {
	background-color: #3498db;
	border: none;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 4px;
	width: 70px;
	height: 30px;
}

#regist_btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
}

#regist_btn:hover {
	background-color: #2980b9;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin: 0 auto;
	max-width: 1000px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
}

table td, table th {
	padding: 10px;
	text-align: center;
	border: 0;
	border-bottom: 1px solid #DEE2E6;
	font-family: 'NanumSquareRound';
}

thead th {
	background-color: #8db6d4; /* 헤더 배경색 */
	color: #fff; /* 헤더 글자색 */
	font-weight: bold;
}

table td:first-child {
	font-size: 14px;
	color: #666;
	width: 10%;
}

td:nth-child(2) {
	width: 100px; /* 이미지 크기에 맞게 조절 */
}

/* tbody tr 마우스 오버시 배경색 변경 */
tbody tr:hover {
	background-color: #f5f5f5;
}

::-webkit-input-placeholder {
	color: #aaa;
	opacity: 1;
}

:-moz-placeholder {
	color: #aaa;
	opacity: 1;
}

::-moz-placeholder {
	color: #aaa;
	opacity: 1;
}

:-ms-input-placeholder {
	color: #aaa;
	opacity: 1;
}

div.replyModal {
	position: relative;
	z-index: 1;
	display: none;
}

div.modalBackground {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.8);
	z-index: -1;
}

div.modalContent {
	position: fixed;
	top: 10%;
	left: calc(50% - 400px);
	width: 800px;
	height: 500px;
	padding: 20px 10px;
	background: #fff;
	border: 2px solid #666;
	border-radius: 20px;
}

div.modalContent textarea {
	font-size: 16px;
	font-family: '맑은 고딕', verdana;
	padding: 10px;
	width: 780px;
	height: 440px;
	border-radius: 10px;
}

div.modalContent button {
	font-size: 14px;
	color: #fff;
	padding: 5px;
	margin: 10px 0;
	background: #3498db;
	border: 1px solid #ccc;
	padding: 5px 10px;
}

div.modalContent button:hover {
	background: #2980b9;
}

div.modalContent button.modal_cancel {
	margin-left: 20px;
}

a {
	text-decoration: none;
	color: #000;
}

#bannerimg {
	max-width: 100%;
	height: auto;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
		function del_go(f) {
			var result = confirm("정말 삭제하시겠습니까?");
			if(result){
				location.href="admin_intg_banner_del.do?bnr_idx="+f;
			}			
		}
	
		function up_go(k) {
			location.href="admin_intg_banner_up.do?bnr_idx="+k;
		}
	</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="sec1">
			<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">통합 관리</span> <span id="sep2">></span> <span
				id="page_sKate">배너 관리</span>
			<div class="border">
				<div class="banner">
					<table>
						<thead>
							<tr>
								<th></th>
								<th>배너 사진</th>
								<th>노출 영역</th>
								<th>노출 순서</th>
								<th>노출 여부</th>
								<th>등록일</th>
								<th>수정일</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty bannerlist}">
									<tr>
										<td colspan="8"><h2>등록된 배너 정보가 없습니다.</h2></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${bannerlist}" var="k" varStatus="c">
										<tr>
											<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + c.index)}</td>
											<td><img src="resources/upload/${k.bnr_img}"
												id="bannerimg"></td>
											<td>${k.bnr_div}</td>
											<td>${k.bnr_order}</td>
											<td><c:choose>
													<c:when test="${k.bnr_visible eq '1'}">공개</c:when>
													<c:otherwise>비공개</c:otherwise>
												</c:choose></td>
											<td>${k.bnr_date}</td>
											<td><c:choose>
													<c:when test="${empty k.bnr_update}">-</c:when>
													<c:otherwise>${k.bnr_update.substring(0,10)}</c:otherwise>
												</c:choose></td>
											<td><button id="up_banner" onclick="up_go(${k.bnr_idx})">수정</button>
												<button id="del_banner" onclick="del_go(${k.bnr_idx})">삭제</button></td>
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
													href="admin_intg_banner.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a>
											</c:when>
										</c:choose>

										<!-- 블록안에 들어간 페이지번호들 -->
										<c:forEach begin="${paging.beginBlock}"
											end="${paging.endBlock}" step="1" var="k">
											<%-- 현재 페이지는 링크X, 나머지는 해당 페이지로 링크 처리 --%>
											<c:if test="${k==paging.nowPage}">${k}</c:if>
											<c:if test="${k!=paging.nowPage}">
												<a href="admin_intg_banner.do?cPage=${k}">${k}</a>
											</c:if>
										</c:forEach>

										<!-- 다음 -->
										<c:choose>
											<c:when test="${paging.endBlock < paging.totalpage }">
												<li><a
													href="admin_intg_banner.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a></li>
											</c:when>
										</c:choose>
									</ol>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
				<button type="button" id="regist_btn"
					onclick="location.href='admin_intg_banner_reg.do'">등록</button>
			</div>
		</section>
	</main>
</body>
</html>