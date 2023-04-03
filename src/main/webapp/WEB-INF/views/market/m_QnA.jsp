<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/market_css/market_QnA.css"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
			var i = 0;
			$("#more_qbtn").click(function() {
				if(i%2 == 0){
					$("#more_qbtn").text("접기 △")
				}else{
					$("#more_qbtn").text("문의 더보기 ▽")
				}
				++i;
			});
	
	});
</script>
</head>
<body>
	<div class="qna_div">
		<section class="qna_section">
			<div class="qna_container">
				<div class="qna_title">
					<h1>Q&A</h1>
					<div class="write_qbtn_con">
						<button id="write_qbtn">문의 하러 가기 &gt; </button>
					</div>
				</div>
				<div class="qna_list">
					<div class="qna_card">
						<div class="qna_title">
							<div class="wrapper">
							    <div class="circle">Q</div>
							</div>
							<div class="title_text">
								<h2 class="t_text">입고는 언제 되나요?</h2>
								<span class="s_profile">
									닉네임  /  2022.01.09 / 답변상태
								</span>
							</div>
						</div>	
						<details class="qna_contents">
				    		<summary class="show_qbtn"></summary>
				    		<div class="qna_detail">
					    		<span class="member_detail"> 입고 날짜가 궁금합니다.</span>
					    		<div class="qna_title">
									<div class="wrapper">
									    <div class="circle">A</div>
									</div>
									<div class="title_text">
										<h2 class="t_text">입고 날짜 안내</h2>
										<span class="s_profile">
											관리자  /  2022.01.09
										</span>
									</div>
								</div>	
					    		<span class="answer_c"> 상품의 입고날짜가 어쩌구 저쩌구....</span>
				    		</div>
						</details>
					</div>
					<div class="qna_card">
						<div class="qna_title">
							<div class="wrapper">
							    <div class="circle">Q</div>
							</div>
							<div class="title_text">
								<h2 class="t_text">입고는 언제 되나요?</h2>
								<span class="s_profile">
									닉네임  /  2022.01.09 / 답변상태
								</span>
							</div>
						</div>	
						<details class="qna_contents">
				    		<summary class="show_qbtn"></summary>
				    		<div class="qna_detail">
					    		<span class="member_detail"> 입고 날짜가 궁금합니다.</span>
					    		<div class="qna_title">
									<div class="wrapper">
									    <div class="circle">A</div>
									</div>
									<div class="title_text">
										<h2 class="t_text">입고 날짜 안내</h2>
										<span class="s_profile">
											관리자  /  2022.01.09
										</span>
									</div>
								</div>	
					    		<span class="answer_c"> 상품의 입고날짜가 어쩌구 저쩌구....</span>
				    		</div>
						</details>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div class="more_qbtn_con">
	페이징
	<%-- 이전 --%>
	    <c:choose>
	    	<c:when test="${paging.beginBlock > paging.pagePerBlock }">
	    		<a href="경로.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a>
	    	</c:when>
	    </c:choose>
	    
	    <!-- 블록안에 들어간 페이지번호들 -->
		<c:forEach begin="${paging.beginBlock}" end="${paging.endBlock}" step="1" var="k">
			<%-- 현재 페이지는 링크X, 나머지는 해당 페이지로 링크 처리 --%>
			<c:if test="${k==paging.nowPage}">
				${k}
			</c:if>
			<c:if test="${k!=paging.nowPage}">
				<a href="board_list.do?cPage=${k}">${k}</a>
			</c:if>
		</c:forEach>
		
		<!-- 다음 -->
		<c:choose>
	    	<c:when test="${paging.endBlock < paging.totalPage }">
	    		<a href="bbs_list.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a>
	    	</c:when>
	    </c:choose>
		<!-- <button id="more_qbtn">문의 더보기 ▽ </button> -->
	</div>
	<hr class="long">
</body>
</html>