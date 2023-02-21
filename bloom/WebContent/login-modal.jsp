<%@ page language="java" pageEncoding="UTF-8"%>

<div class="background-login">
	<div class="login-box">
		<div class="login-header">
			<div class="close">
				<i class="fa-solid fa-xmark" id="login-close"></i>
			</div>
		</div>
		<div class="login-title">
			<img src="./img/logo_test.png" />
			<h2>우리들의 마음속 꽃 한송이</h2>
		</div>

		<div class="inputs">
			<div class="login-subtitle">아이디</div>
			<div class="input-wrapper">
				<input name="login_id" type="text" id="userID">
			</div>
			<div class="login-subtitle">비밀번호</div>
			<div class="input-wrapper">
				<input name="login_pwd" type="password" id="userPW">
			</div>
		</div>

		<div class="footer">
			<div class="login-action">
				<button type="button" id="loginBtn">로그인</button>
			</div>
			<div class="register-action">
				<div class="flex">
					<div class="register">회원가입</div>
					<span class="bar">|</span>
					<div class="desc">비밀번호 찾기</div>
				</div>
			</div>
		</div>
	</div>
</div>