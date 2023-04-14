<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="resources/css/admin_mkt_css/mkt_product_style.css" type="text/css" />
<style type="text/css">
	 .preview-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }
  .preview-container .preview {
    border: 1px solid #ddd;
    margin: 10px;
    width: 400px;
  }
  .preview-container .preview img {
    width: 100%;
  }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
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
					$("#mid_select").append("<option value='none'>::중분류::</option>");
					$("#bott_select").append("<option value='none'>::소분류::</option>");
					$(data).each(function(k,v) {
						var m_kate_idx = v["m_kate_idx"];
						var m_kate_name = v["m_kate_name"];
						var m_kate_kind = v["m_kate_kind"];
						var m_kate_ref = v["m_kate_ref"];
						$("#mid_select").append("<option value='"+m_kate_idx+"' class='mid_s'>"+m_kate_name+"</option>");
					});
				},
				error : function() {
					alert("mid에러")
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
				$("#bott_select").append("<option value='none'>::소분류::</option>");
				$(data).each(function(k,v) {
					var b_kate_idx = v["b_kate_idx"];
					var b_kate_name = v["b_kate_name"];
					var b_kate_kind = v["b_kate_kind"];
					var b_kate_ref = v["b_kate_ref"];
					$("#bott_select").append("<option value='"+b_kate_idx+"' name='kate_idx' class='bott_s'>"+b_kate_name+"</option>");
				});
			},
			error : function() {
				alert("bott에러")
			}

			});
		}
	}
	
	// 이미지 등록
	
	function sendImage(file, editor) {
		var frm = new FormData(); 
		frm.append("upload", file);

		// 비동기 통신
		$.ajax({
			url : "", 
			data : frm, // 전달하고자 하는 파라미터 값
			type : "post", // 전송 방식
			contentType : false,
			processData : false,
			dataType : "json",
		}).done(function(data) {
			$("#content").summernote("editor.insertImage", data.img_url);
		});
	}

 
 prj_thumbnail_image_name = function(f) {
     if (f.files && f.files[0]) {
         var reader = new FileReader();
         reader.onload = function(e) {
        	 // prj_thumbnail실제 이미지 이름
             document.getElementById('prj_thumbnail').src = e.target.result;
         };
         reader.readAsDataURL(f.files[0]);
     } else {
         document.getElementById('prj_thumbnail').src = "";
     }
 }
	
 
		  $(function() {
			  // 파일 선택창에서 이미지 파일 선택 시
			  $('#pdt_info_param').on('change', function(e) {
			    // 이미지 미리보기 컨테이너 초기화
			    $('.preview-container').empty();

			    // 선택한 파일 정보 가져오기
			    var files = e.target.files;

			    // 파일 개수 체크
			    if (files.length > 5) {
			      alert("파일은 최대 5개까지 선택할 수 있습니다.");
			      $(this).val("");
			      return false;
			    }

			    // FileReader 객체를 사용해 선택한 이미지 파일들을 미리보기
			    for (var i = 0; i < files.length; i++) {
			      var reader = new FileReader();
			      reader.onload = function(e) {
			        $('.preview-container').append('<div class="preview"><img src="' + e.target.result + '"></div>');
			      }
			      reader.readAsDataURL(files[i]);
			    }
			  });
			});
	  
	 
	  
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
	  
	  
 // 상품등록 버튼을 누른경우
	  function pdt_update_go(f) {
		  var top_idx = $("#top_select").val();
		  var mid_idx = $("#mid_select").val();
		  var kate_idx = $("#bott_select").val();
		  //var state_t_f = $('input:radio[name=pdt_state]').is(":checked");
		  // 상품상태(pdt_state)의 value -> 0 = 진열/ 1 = 진열안함
		  // var pdt_state =  $('input[name=pdt_state]:checked').val();
		  // 확인용
		  console.log(top_idx);
		  console.log(mid_idx);
		  console.log(kate_idx);
		  
		  if (top_idx=="none" || mid_idx=="none" || kate_idx == "bottom") {
			 alert("필수 등록정보를 선택해주세요.");
		  }else{
			  var result = confirm("상품을 등록하시겠습니까?");
			  if (result) {
				  f.action="adm_mkt_pdt_insert_go.do";
				  f.submit();
				
				}else {
					alert("상품등록이 취소되었습니다.");
				}
		}
			  
			  
		  }
	 
	  
</script>
</head>
<body>
	<main>
		<jsp:include page="../adm_navbar.jsp"></jsp:include>
		<section id="add_pdt_sec">
		<span id="page_info">관리자</span> <span id="sep1">|</span> <span
				id="page_mKate">상품 관리</span> <span id="sep2">></span> <span
				id="page_sKate">상품 등록</span>
			<div class="add_pdt">
				<form id="search_form" method="post" encType="multipart/form-data">
					<table>
						<caption>기본정보</caption>
						<tbody>
							<tr>
								<th class="title">상품분류</th>
								<td colspan="4">
									<select id="top_select" name="top_select" onchange="topBoxChange()">
									    <option value="none">::대분류::</option>
									    
									  </select>
									  <select id="mid_select" name="mid_select" onchange="midBoxChange()">
									    <option value="none">::중분류::</option>
									  </select>
									  <select id="bott_select" name="kate_idx">
									    <option value="bottom">::소분류::</option>
									  </select>
									  <input type="button" value="+ 카테고리" style="float: right; margin-right: 30px;">
								</td>
							<tr>
								<th class="title">상품명</th>
								<td colspan="4">
									  <input type="text" name="pdt_name" size="50" required>
								</td>
							</tr>
							<tr>
								<th class="title">등록업체 고유번호</th>
								<td colspan="4">
									<input type="number" name="corp_idx" id="corp_idx_input" size="50" value="" readonly required> 
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
									  <input type="number" name="pdt_saleprice" size="30" min="1" required> P
								</td>
								<th class="title">정가</th>
								<td colspan="2">
									  <input type="number" name="pdt_price" size="30" min="1" required> P
								</td>
							</tr>
							<tr>
								<th class="title">재고수량</th>
								<td colspan="4">
									  <input type="number" name="pdt_inven" size="30" min="1" required> 개
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
									<input type="number" name="pcl_idx" id="pcl_idx_input" size="50" value="" readonly required> 
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
									<img id="prj_thumbnail" onclick="image_restart()" style="width: 300px; height: 275px; border: 0px;">
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
								<td colspan="5" style="text-align: center; padding: 20px;">
									<input type="button" value="상품등록" onclick="pdt_update_go(this.form)">
									<input type="reset" value="초기화" >
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