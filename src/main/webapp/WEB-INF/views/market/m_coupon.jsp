<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰함</title>
<link rel="stylesheet" href="resources/css/market_css/market_pdt_one.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.img{
 display : block;
 margin : auto;
}
body{
 display : block;
 margin : auto;
}
table {
/*   margin-left:5px;
  margin-right:5px; */
  border-collapse: collapse;
  width: 100%;
  font-family: Arial, sans-serif;
  font-size: 14px;
}
th, td {
  text-align: left;
  padding: 8px;
  border-bottom: 1px solid #ddd;
}
th  {
  background-color: #f2f2f2;
  font-weight: bold;
  color: #333;
}
</style>
</head>
<body>
<form action="">
<img class="img" src="resources/img/petpet.png">
<br><br>
 <table align="center" >
  <tr>
    <th>번호</th>
    <th>상태</th>
    <th>쿠폰</th>
    <th>기간</th>
    <th>사용하기</th>
  </tr>
  <tr>
    <td>1</td>
    <td>사용가능</td>
    <td>가입축하10%할인쿠폰</td>
    <td>2023.01.01~2023.12.12</td>
    <td><button onclick="alert('쿠폰을 사용하시겠습니까?')">사용하기</button></td>
  </tr>
  <tr>
    <td>2</td>
    <td>사용가능</td>
    <td>모상인잘생겼다</td>
    <td>2023.01.01~2023.12.12</td>
    <td><button onclick="alert('쿠폰을 사용하시겠습니까?')">사용하기</button></td>
  </tr>
</table>
</form>
</body>
</html>