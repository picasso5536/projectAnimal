<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 관리 </title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_product_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	// 상품 등록버튼 이벤트
	function p_insert_go() {
		location.href="adm_add_pdt.do";
	}
	function p_update_go(f) {
		f.action="adm_update_pdt.do";
		f.submit();
	}
	// 상품 관리 로드 시 상품 상위 카테고리 정보 가져오기
	$(document).ready(function() {
		$.ajax({
			url : "adm_pdt_top_selectboxlist.do",
			method : "post",
			dataType: 'json',
			async : true,
			success : function(data) {
				$(data).each(function(k,v) {
									
					var kate_idx = v["kate_idx"];
					var kate_name = v["kate_name"];
					var kate_kind = v["kate_kind"];
					var kate_ref = v["kate_ref"];
					$("#top_select").append("<option value='"+kate_idx+"' class='top_s'>"+kate_name+"</option>");
				});
			},
			error : function() {
				alert("top에러")
			}
		});
		
	
	});
	// 상위 카테고리 선택시 중, 소분류 카테고리 셀렉트 박스 만들기
	function topBoxChange() {
		var top_idx =$("#top_select").val();
		console.log(top_idx);
		if (top_idx != "none") {
			$.ajax({
				url : "adm_pdt_mid_selectboxlist.do",
				type : "post",
				dataType: 'json', //데이터 타입 안적으면 에러^^
				data : {
					top_idx:$("#top_select").val()
					},
				async : true,
				success : function(data) {
					console.log(data);
					$("#mid_select").empty();
					$("#bott_select").empty();
					$("#mid_select").append("<option value=''>::중분류::</option>");
					$("#bott_select").append("<option value=''>::소분류::</option>");
					$(data).each(function(k,v) {
						var m_kate_idx = v["m_kate_idx"];
						var m_kate_name = v["m_kate_name"];
						var m_kate_kind = v["m_kate_kind"];
						var m_kate_ref = v["m_kate_ref"];
						$("#mid_select").append("<option value='"+m_kate_idx+"' class='mid_s'>"+m_kate_name+"</option>");
					});
				},
				error : function() {
					alert("상위 카테고리를 선택해주세요")
				}
			});
		}
	}	
	
	function midBoxChange() {
		var mid_idx = $("#mid_select").val();
		console.log(mid_idx);
		if (mid_idx != "none") {
			
		$.ajax({
			url : "adm_pdt_bott_selectboxlist.do",
			type : "post",
			dataType : "json",
			data : {
				mid_idx:$("#mid_select").val()
				},
			async : true,
			success : function(data) {
				console.log(data);
				$("#bott_select").empty();
				$("#bott_select").append("<option value=''>::소분류::</option>");
				$(data).each(function(k,v) {
					var b_kate_idx = v["b_kate_idx"];
					var b_kate_name = v["b_kate_name"];
					var b_kate_kind = v["b_kate_kind"];
					var b_kate_ref = v["b_kate_ref"];
					$("#bott_select").append("<option value='"+b_kate_idx+"' name='kate_idx' class='bott_s'>"+b_kate_name+"</option>");
				});
			},
			error : function() {
				alert("상위 카테고리를 선택해주세요.")
			}

			});
		}
	}
	
	function adm_search_pdt(f) {
		f.action="adm_mkt_pdt_search.do";
		f.submit();
	}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">상품 관리</span>
			<div class="search_pdt">
				<form id="search_form" method="post">
					<table>
						<tbody>
							<tr>
								<th class="title">카테고리</th>
								<td colspan="4">
									<select id="top_select" name="top_idx" onchange="topBoxChange()">
									    <option value="">::대분류::</option>
									  </select>
									  <select id="mid_select" name="mid_idx" onchange="midBoxChange()">
									    <option value="">::중분류::</option>
									  </select>
									  <select id="bott_select" name="bott_idx">
									    <option value="">::소분류::</option>
									  </select>
								</td>
							<tr>
								<th class="title">검색조건</th>
								<td colspan="4">
									<select name="search_type" >
									    <option value="">::조건선택::</option>
									    <option value="pdt_name">상품명</option>
									    <option value="corp_name">공급사</option>
									  </select>
									  <input type="text" name="keyword" size="25">
								</td>
							</tr>
							<tr>
								<th class="title">재고여부</th>
								<td colspan="2">
									<select name="pdt_inven" >
									    <option value="">::재고상태::</option>
									    <option value="1000">여유</option>
									    <option value="999">부족</option>
									    <option value="0">품절</option>
									  </select>
								</td>
								<th class="title">진열여부</th>
								<td>
									<select name="pdt_state" >
									    <option value="">::선택::</option>
									    <option value="0">진열중</option>
									    <option value="1">진열안함</option>
									  </select>
								</td>
							</tr>
							<tr>
								<td colspan="5" style="text-align: center;">
								  <input type="button" value="조회" id="search_btn" onclick="adm_search_pdt(this.form)">
								</td>
							</tr>

						</tbody>
					</table>
				</form>
			</div>
			<div class="search_list">
				<div id="rqcs">
					<button type="button" id="add_pdt_btn" onclick="p_insert_go()">+ 상품등록</button>
				</div>
					<table id="pdtlist_table">
						<thead>
							<tr>
								<th class="chk_box">번호</th>
								<th>상품코드</th>
								<th>상품이미지</th>
								<th>상품이름</th>
								<th>상품원가</th>
								<th>상품판매가</th>
								<th>진열상태</th>
								<th>재고</th>
								<th colspan="2">기능</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty searchpdtlist}">
									<td colspan="9"><h3>정보가 존재하지 않습니다.</h3></td>
								</c:when>
								<c:otherwise>
									<c:forEach items="${searchpdtlist}" var="pdt" varStatus="vs">
										<tr>
											<td class="chk_box">${vs.count}</td>
											<td>${pdt.pdt_idx}</td>
											<td><img src="resources/img/upload/${pdt.pdt_img}" style="width: 70px"></td>
											<td>${pdt.pdt_name}</td>
											<td>${pdt.pdt_price}&nbsp;P</td>
											<td>${pdt.pdt_saleprice}&nbsp;P</td>
											<td>
												<c:if test="${pdt.pdt_state == '0'}">
													진열중
												</c:if>
												<c:if test="${pdt.pdt_state == '1'}">
													숨김
												</c:if>
											</td>
											<td>${pdt.pdt_inven}&nbsp;개</td>
											<td colspan="2">
												<form method="post">
													<input type="hidden" name="pdt_idx" value="${pdt.pdt_idx}">
													<input type="hidden" name="kate_idx" value="${pdt.kate_idx}">
													<button type="button" class="update_btn" onclick="p_update_go(this.form)">수정</button>
													<button type="button" class	="del_btn" onclick="p_delete_go()">삭제</button>											
												</form>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
		</section>
	</main>
</body>
</html>