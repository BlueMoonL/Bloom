<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bloom</title>

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">

<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/join.css">
<link rel="stylesheet" href="./css/confirm.css">

<script type="text/javascript" src="./js/login.js" defer></script>
<script type="text/javascript" src="./js/join.js" defer></script>
<script type="text/javascript" src="./js/logout.js" defer></script>

</head>
<body>
	<header id="header" class="">
		<h1>
			<a href="http://localhost:8080/bloom/index.jsp"> <img
				src="./img/logo_test.png" alt="">
			</a>
		</h1>
		<div class="inner_head">
			<nav class="gnb">
				<ul class="gnb_menu1">
					<%
						String userID = (String) session.getAttribute("login");
					if (userID == null) {
					%>

					<li><a href="javascript:void(0)" id="btn-login">로그인</a></li>
					<li><a href="javascript:void(0)" id="btn-signup">회원가입</a></li>

					<%
						} else {
					%>

					<li><a href="javascript:void(0)" 
						id="btn-logout">로그아웃</a></li>
					<li><a href="myPage.jsp" id="btn-myPage">마이페이지</a></li>

					<%
						}
					%>
				</ul>
				<ul class="gnb_menu">
					<li><a href="http://localhost:8080/bloom/index.jsp">홈</a></li>
					<li><a href="doctor.jsp">전문가 찾기</a></li>
					<li><a href="self-test-list.jsp">자가진단</a></li>
					<li><a href="community.jsp">커뮤니티</a></li>

				</ul>
			</nav>
		</div>
	</header>
</body>
</html>