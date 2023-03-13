<%@page import="userinfo.TestResult"%>
<%@page import="java.util.List"%>
<%@page import="userinfo.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>my page</title>
<link rel="stylesheet" href="./css/myPage.css" />
<link rel="stylesheet" href="./css/common.css" />
<link rel="stylesheet" href="./css/basic.css" />
<link rel="stylesheet" href="./css/font.css" />

<script type="text/javascript" src="./js/side_main.js" defer></script>
<script type="text/javascript" src="./js/login.js" defer></script>
<script type="text/javascript" src="./js/logout.js" defer></script>
<script type="text/javascript" src="./js/join.js" defer></script>
<script type="text/javascript" src="./js/today-flower.js" defer></script>
<script type="text/javascript" src="./js/myPage.js" defer></script>
<script type="text/javascript" src="./js/printMyPage.js" defer></script>
<script src="./js/include.js"></script>

</head>
<body>
	<div class="inner">
		<header class="myPageHeader"></header>
		<div id="myPage">
			<div class="container">
				<div class="container-item" id="item-lable">회원 정보</div>
				<div class="container-item"></div>
				<div class="container-item"></div>
				<div class="container-item">아이디</div>
				<%
					String userid = (String) session.getAttribute("login");
				if (userid != null) {
				%>
				<div class="container-item"><%=userid%></div>
				<%
					}
				%>
				<div class="container-item"></div>
				<div class="container-item">이름</div>
				<%
					UserRepository ur = new UserRepository();
				String userName = ur.findeUser(userid);
				if (userName != null) {
				%>
				<div class="container-item"><%=userName%></div>
				<%
					}
				%>
				<div class="container-item"></div>
				<div class="container-item">비밀번호</div>
				<div class="container-item">*******</div>
				<button class="container-btn" id="pwChange">수정하기</button>
				<div class="container-item"></div>
				<div class="container-item"></div>
				<div class="container-item"></div>
			</div>

			<div class="container-second">
				<div class="container-item" id="item-lable">검사 결과</div>
				<div class="container-item"></div>
				<div class="container-item"></div>
				<div class="container-item"></div>
				<div class="container-item"></div>
				<div class="container-item">우울 척도</div>
				<div class="container-item" id="BDIscore"></div>
				<button class="container-btn" id="deleteBDI">점수삭제</button>
				<button class="container-btn" id="againBDI">다시검사</button>
				<button class="container-btn" id="gotoDoctor">상담받기</button>
				<div class="container-item">불안 척도</div>
				<div class="container-item" id="BAIscore"></div>
				<button class="container-btn" id="deleteBAI">점수삭제</button>
				<button class="container-btn" id="againBAI">다시검사</button>
				<button class="container-btn" id="gotoDoctor">상담받기</button>
				<div class="container-item">어떤 검사</div>
				<div class="container-item">어떤 점수</div>
				<button class="container-btn">점수삭제</button>
				<button class="container-btn">다시검사</button>
				<button class="container-btn">상담받기</button>
				<div class="container-item">어떤 검사</div>
				<div class="container-item">어떤 점수</div>
				<button class="container-btn">점수삭제</button>
				<button class="container-btn">다시검사</button>
				<button class="container-btn">상담받기</button>
			</div>
		</div>
	</div>
	<div id="myPage">
		<div class="container-postit" id="posiit">
			<div class="container-item">나의 포스트잇</div>
			<div class="container-item">&nbsp;</div>
			<template id="community-temp">
					<div class="container-postit-item"></div>
					<div class="container-postit-item"></div>
			</template>


		</div>
	</div>
	<div id="myPage">
		<div class="container-third">
			<div class="container-item">나의 상담내역</div>
			<div class="container-item"></div>
			<div class="container-item"></div>
		</div>
	</div>


	<div class="background-confirm">
		<div class="confirm-box">
			<div class="confirm-title">
				<span>비밀번호 변경</span>
			</div>
			<div class="confirm-subtitle">
				<label id="pwlabel">안전한 비밀번호로 내정보를 보호하세요.</label><br> <br>
				<br> <input type="password" class="pwChange" id="pw1"
					maxlength="20" placeholder="현재 비밀번호" required><br> <input
					type="password" class="pwChange" id="newPw1" maxlength="20"
					placeholder="새 비밀번호" required><br> <input
					type="password" class="pwChange" id="newPw2" maxlength="20"
					placeholder="새 비밀번호 확인" required><br>
			</div>
			<div class="confirm-action">
				<button type="button" id="pw-change-button">확인</button>
				<button type="button" id="confirm-button">취소</button>
			</div>
		</div>
	</div>

</body>
</html>
