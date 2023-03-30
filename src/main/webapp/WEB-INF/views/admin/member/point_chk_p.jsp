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
			<div class="point_r">
				<form>
					<table>
						<caption>포인트 지급 사유</caption>
						<tbody>
							<tr>
								<td class="td_text" colspan="4">
									<select name="reason_ref" >
									    <option value="none">::선택하세요::</option>
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
									<textarea name="content" id="content" cols="76" rows="24"></textarea>
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
			</div>
		</section>
	</main>
</body>
</html>