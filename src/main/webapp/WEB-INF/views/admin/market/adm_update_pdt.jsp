<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록상품 수정</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_product_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
// 상품 관리 로드 시 상품 상위 카테고리 정보 가져오기
$(document).ready(function() {
	$.ajax({
		url : "adm_pdt_top_selectboxlist.do",
		method : "post",
		dataType: 'json',
		async : false,
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
			alert("top에러");
		}
	});
	
	$('#top_select').val('${topkatevo.kate_idx}').prop("selected",true);
	$("#mid_select").append("<option value='${midkatevo.kate_idx}' class='mid_s' selected>${midkatevo.kate_name}</option>");
	$("#bott_select").append("<option value='${bottkatevo.kate_idx}' class='mid_s' selected>${bottkatevo.kate_name}</option>");
	console.log(${topkatevo.kate_idx});
	

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

function search_idx() {
  	var url = "adm_mkt_search_corp_idx.do";
    var name = "search popup";
    var option = "width=1050,height=630,location=no,toolbar=no,menubar=no,status=no,scrollbars=no"
    window.open(url, name, option);	
}

function search_pcl_idxlist() {
  	var url = "adm_mkt_search_pcl_idx.do";
    var name = "search pcl";
    var option = "width=1050,height=630,location=no,toolbar=no,menubar=no,status=no,scrollbars=no"
    window.open(url, name, option);	
}

function bottBoxChange() {
	var kate_idx = $("#bott_select").val();
	console.log("bott_val : ",kate_idx)
}

function pdt_update_ok(f) {
	f.action="adm_pdt_update_ok.do";
	f.submit();
}
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="add_pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">상품 관리</span> <span id="sep2">></span> <span
				id="page_sKate">상품 수정</span>
			<div class="add_pdt">
				<form id="update_form" >
					<table>
						<caption>기본정보</caption>
						<tbody>
							<tr>
								<th class="title">상품분류</th>
								<td colspan="4">
									<select id="top_select" name="top_idx" onchange="topBoxChange()">
									    <option value="">::대분류::</option>
									  </select>
									  <select id="mid_select" name="mid_idx" onchange="midBoxChange()">
									    <option value="">::중분류::</option>
									  </select>
									  <select id="bott_select" name="bott_idx" onchange="bottBoxChange()">
									    <option value="">::소분류::</option>
									  </select>
									  <input type="button" value="+ 카테고리" style="float: right; margin-right: 30px;">
								</td>
							<tr>
								<th class="title">상품명</th>
								<td colspan="4">
									  <input type="text" name="pdt_name" size="50" value="${pdtvo.pdt_name}" required>
								</td>
							</tr>
							<tr>
								<th class="title">상품 고유번호</th>
								<td colspan="2">
									<input type="number" name="pdt_idx"  size="50"  value="${pdtvo.pdt_idx}" readonly required> 
								</td>
								<th class="title">등록업체 고유번호</th>
								<td colspan="2">
									<input type="number" name="corp_idx" id="corp_idx_input" size="50"  value="${pdtvo.corp_idx}" readonly required> 
									<button type="button" id="search_corp_idx" onclick="search_idx()">번호조회</button>
								</td>
							</tr>
							<tr>
								<th class="title">상품진열</th>
								<td colspan="4">
									<input type="radio" name="pdt_state" value="0"required checked>진열&nbsp;&nbsp;&nbsp;
									<input type="radio" name="pdt_state" value="1">진열안함
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>가격 및 재고</caption>
						<tbody>
							<tr>
								<th class="title">판매가</th>
								<td colspan="2">
									  <input type="number" name="pdt_saleprice" size="30" min="1"  value="${pdtvo.pdt_saleprice}" required> P
								</td>
								<th class="title">정가</th>
								<td colspan="2">
									  <input type="number" name="pdt_price" size="30" min="1"  value="${pdtvo.pdt_price}" required> P
								</td>
							</tr>
							<tr>
								<th class="title">재고수량</th>
								<td colspan="4">
									  <input type="number" name="pdt_inven" size="30" min="1"  value="${pdtvo.pdt_inven}" required> 개
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>택배사 지정</caption>
						<tbody>
							<tr>
								<th class="title">택배사 고유번호</th>
								<td colspan="3">
									<input type="number" name="pcl_idx" id="pcl_idx_input" size="50"  value="${pdtvo.pcl_idx}" readonly required> 
									<button type="button" id="search_pcl_idx" onclick="search_pcl_idxlist()">번호조회</button>
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>상품사진</caption>
						<tbody>
							<tr>
								<th class="title">원본 이미지</th>
								<td colspan="4">
									 <input id="prj_thumbnail_image_start" name="pdt_profile_param" type="file" accept="image/*" onchange="prj_thumbnail_image_name(this);" required>
								</td>
							</tr>
							<tr>
								<th class="title">이미지 확인</th>
								<td colspan="5">
									<img id="prj_thumbnail" src="resources/img/upload/${pdtvo.pdt_img}" onclick="image_restart()" style="width: 300px; height: 275px; border: 0px;">
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<caption>제품 상세정보</caption>
						<tbody>
							<tr>
								<th class="title">상품 설명 이미지</th>
								<td colspan="4">
									<input type="file" name="pdt_info_param" id="pdt_info_param" multiple="multiple" required>
								</td>
							</tr>
							<tr>
								<th class="title">이미지 확인</th>
								<td colspan="5">
									 <div class="preview-container"></div>
								</td>
							</tr>
							<tr>
							<tr>
								<td colspan="5" style="text-align: center; padding: 20px;">
									<input type="button" value="상품수정" onclick="pdt_update_ok(this.form)" >
									<input type="button" value="상품삭제" onclick="pdt_delete_ok()" >
									<input type="hidden" name="pdt_idx" value="${pdtvo.pdt_idx}" >
									<input type="button" value="목록" >
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</section>
	</main>
</body>
</html>