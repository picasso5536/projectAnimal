<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh; /* 화면 전체 높이를 최소 높이로 지정 */
	background-image: url("resources/img/home/login_back.png");
	background-size: cover; /* 화면에 꽉 차게 사진을 늘려줍니다 */
	background-position: center center; /* 사진을 중앙에 위치시킵니다 */
	background-repeat: no-repeat;
	background-position: center center; /* 사진 반복 안 하도록 설정합니다 */
}

.container {
	max-width: 400px;
	margin: 0 auto;
}

.login-form {
	background-color: rgba(241, 241, 241, 0.2);
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
	padding: 20px;
	width: 400px;
	margin: 0 auto;
	sadsad
}

.login-form h2 {
	text-align: center;
	margin-bottom: 20px;
}

.login-form form {
	display: flex;
	flex-direction: column;
}

.login-form .form-group {
	margin-bottom: 20px;
}

.login-form label {
	display: block;
	margin-bottom: 5px;
}

.login-form input[type="text"], .login-form input[type="password"] {
	padding: 10px;
	border-radius: 8px;
	border: none;
	font-size: 16px;
	width: 330px;
	margin-left: 20px;
}

.login-form input[type="text"]:not(:focus), .login-form input[type="password"]:not(:focus)
	{
	padding-left: 5px;
}

.login-form input[type="text"]:focus, .login-form input[type="password"]:focus
	{
	outline: none;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
	padding-left: 5px;
	border: none;
	border-bottom: 2px solid rgba(126, 192, 238, 0.8);
	transition: border-bottom-color 0.4s linear;
	border-bottom-width: 2px;
}

.login-form button[type="submit"] {
	background-color: #4285f4;
	color: white;
	border: none;
	border-radius: 10px;
	padding: 10px;
	font-size: 16px;
	cursor: pointer;
}

.login-form button[type="submit"]:hover {
	background-color: #3367d6;
}

.login-form .forgot-password {
	text-align: center;
	margin-top: 20px;
}

#joinUs {
	margin-left: 20px;
	text-decoration: none;
	color: inherit;
}

#findAccount {
	padding-left: 80px;
	text-decoration: none;
	color: inherit;
}

.social-login {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

.social-login a {
	margin: 10px 0;
}

.login-btn {
	width: 30%;
	margin-top: -30px;
	margin-left: 270px;
	margin-bottom: 35px;
	background-color: #4285f4;
	color: #fff;
	font-size: 16px;
	border: none;
	border-radius: 8px;
	background-color: #4285f4;
}

.form-group {
	margin-bottom: 10px;
	padding-top: -5px;
}

.form-group label {
	display: flex;
	align-items: center;
	margin-top: -5px;
}

#remember-me {
	margin-top: 4px;
	margin-left: 60px;
}

.with-icon {
	position: relative;
}

.with-icon .icon {
	position: absolute;
	left: -5px;
	top: 50%;
	transform: translateY(-50%);
	margin-left: 3px;
}

.form-group.with-icon {
	padding-left: 30px;
	position: relative;
}

.form-group.with-icon input {
	padding-left: 0;
}

.social-login img {
	width: 300px;
	height: 45px;
}
</style>
</head>
<body>
	<div class="login-form">
		<form>
			<h2>내옆펫 로그인</h2>
			<br>
			<div class="form-group with-icon">
				<img src="resources/img/home/id.png" class="icon"> <input
					type="text" id="id" name="id" required>
			</div>
			<div class="form-group with-icon">
				<img src="resources/img/home/password.png" class="icon"> <input
					type="password" id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="remember-me"> <input type="checkbox"
					id="remember-me"> 아이디 기억
				</label>
			</div>
			<button type="submit" class="login-btn">로그인</button>
			<div class="social-login">
				<a href="#"> <img
					src="resources/img/home/kakao_login_medium_wide.png"
					alt="KakaoTalk">
				</a> <a href="#"> <img src="resources/img/home/naver_login.png"
					alt="Naver">
				</a> <a href="#"> <img
					src="resources/img/home/btn_google_signin_light_normal_web@2x.png"
					alt="Google">
				</a>
			</div>
			<div class="forgot-password">
				<a href="#" id="joinUs">회원가입</a> <a href="#" id="findAccount">아이디
					/ 비밀번호 찾기</a>
			</div>
		</form>
	</div>
</body>
</html>