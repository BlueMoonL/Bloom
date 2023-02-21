<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="./css/header.css">
</head>
<body>
		<header id="header" class="">
			<h1>
				<a href="/"> <img src="./img/logo_test.png" alt="">
				</a>
			</h1>
			<div class="inner">
				<nav class="gnb">
					<ul class="gnb_menu">
						<li><a href="javascript:void(0)">홈</a></li>
						<li><a href="javascript:void(0)">전문가 찾기</a></li>
						<li><a href="javascript:void(0)">자가진단</a></li>
					</ul>
				</nav>
			</div>

			<%
				String userID = (String) session.getAttribute("login");
				if (userID == null) {
			%>
			<div class="login">
				<li><a href="javascript:void(0)" id="btn-login">로그인</a></li>
				<li><a href="javascript:void(0)" id="btn-signup">회원가입</a></li>
			</div>
			<%
				} else {
			%>
			<div class="logout">
				<li><a href="javascript:void(0)" id="btn-logout">로그아웃</a></li>
				<li><a href="javascript:void(0)" id="btn-myPage">마이페이지</a></li>
			</div>
			<%
				}
			%>

		</header>
</body>
</html>