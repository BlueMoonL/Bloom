<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 찾기</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="./css/myPage.css" />
<link rel="stylesheet" href="./css/login.css" />
<link rel="stylesheet" href="./css/common.css" />
<link rel="stylesheet" href="./css/basic.css" />
<link rel="stylesheet" href="./css/font.css" />
<link rel="stylesheet" href="./css/doctor.css" />

<script src="./js/include.js"></script>
<script type="text/javascript" src="./js/login.js" defer></script>
<script type="text/javascript" src="./js/join.js" defer></script>
<script type="text/javascript" src="./js/side_main.js" defer></script>
<script type="text/javascript" src="./js/logout.js" defer></script>
<script type="text/javascript" src="./js/today-flower.js" defer></script>
<script type="text/javascript" src="./js/myPage.js" defer></script>
<script type="text/javascript" src="./js/printMyPage.js" defer></script>
<script type="text/javascript" src="./js/showDoctor.js" defer></script>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<%@ include file="./login-modal.jsp"%>
	<%@ include file="./join-modal.jsp"%>
	<div class="inner">
		<div id="topmargin"></div>
		<template id="doctor-template">
			<section class="container">
				<div class="image">
					<img src="">
					<button class="chatbtn">상담신청</button>
				</div>
				<div class="element">
					<header class="name">
						<p id="doctorName"></p>
						<span class="dt-name"></span>
						<p id="designation">선생님</p>
					</header>
					<main class="who">
						<div class="education"></div>
						<div class="career"></div>
						<br>
						<div class="explanation"></div>
					</main>
				</div>
			</section>
		</template>
	</div>
</body>
</html>