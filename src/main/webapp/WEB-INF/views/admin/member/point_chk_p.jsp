<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 관리</title>
<link rel="stylesheet" href="resources/css/admin_mbr_css/point_chk_style.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<main>
		<section id="mem_sec">
				<form>
					<table>
						<caption>포인트 지급/차감</caption>
						<tbody>
							<tr>
								<td class="title" style="font-family: 'NanumSquareRound'; text-align: center; font-weight: 800;" colspan="4">
									<input type="radio" name="add_sub" value="" checked> 포인트 지급하기&emsp;&emsp;&emsp;
									<input type="radio" name="add_sub" value=""> 포인트 차감하기
								</td>
							</tr>
							<tr>
								<th class="title" style="font-family: 'NanumSquareRound';">변경 포인트</th>
								<td class="td_text" colspan="4">
									<input type="number" name="point" value="">&emsp;p
								</td>
							</tr>
							<tr>
								<th class="title" style="font-family: 'NanumSquareRound';">사유선택</th>
								<td class="td_text" colspan="4">
									<select name="reason_ref" >
									    <option value="none">::지급 사유::</option>
									    <option value="apply">신청포인트</option>
									    <option value="review">리뷰 작성</option>
									    <option value="post">게시글 작성</option>
									    <option value="comment">댓글작성</option>
									    <option value="event">이벤트지급</option>
									  </select>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea name="content" id="content" cols="80" rows="10"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: center">
									<input type="button" value="입력" onclick="send_go(this.form)"/>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
		</section>
	</main>
</body>
</html>