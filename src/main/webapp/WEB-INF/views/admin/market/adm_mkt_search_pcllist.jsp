<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 택배사번호 조회</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_product_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function choose_pcl() {
		/// 선택한 tr 찾기
		 var clickedRow = event.target.parentNode;
		 // 선택한 tr의 두 번째 td 텍스트값(corp_idx) 가져오기
		 var corpIdx = clickedRow.getElementsByTagName("td")[1].textContent;
		
		 // 부모 창의 input 요소에 값 설정 후 창닫기
		 window.opener.document.getElementById("pcl_idx_input").value = corpIdx;
		 window.close();
		}
</script>
</head>
<body>
	<main>
		<section id="list_sec1">
			<div class="search_corp">
				<form>
					<table id="list_corp_table">
						<caption>택배사 목록</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>코드</th>
								<th>택배사명</th>
								<th>기본배송비</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty pcllist}">
									<tr>
										<td colspan="5"><h2>택배사 정보가 존재하지 않습니다.</h2></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${pcllist}" var="k" varStatus="vs">
											<tr onclick="choose_pcl()">
												<td>${vs.count}</td>
												<td>${k.pcl_idx}</td>
												<td>${k.pcl_name}</td>
												<td>${k.pcl_default}&nbsp;P</td>
											</tr>
										</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6">
									<button type="button" class="btns" onclick="window.close()">닫기</button>
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