<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 찾기</title>
<link rel="stylesheet" href="./css/myPage.css" />
<link rel="stylesheet" href="./css/common.css" />
<link rel="stylesheet" href="./css/basic.css" />
<link rel="stylesheet" href="./css/font.css" />
<link rel="stylesheet" href="./css/doctor.css" />

<script type="text/javascript" src="./js/side_main.js" defer></script>
<script type="text/javascript" src="./js/login.js" defer></script>
<script type="text/javascript" src="./js/logout.js" defer></script>
<script type="text/javascript" src="./js/join.js" defer></script>
<script type="text/javascript" src="./js/today-flower.js" defer></script>
<script type="text/javascript" src="./js/myPage.js" defer></script>
<script type="text/javascript" src="./js/showDoctor.js" defer></script>
<script src="./js/include.js"></script>
</head>
<body>
	<div class="inner">
		<div id="topmargin"></div>
		<template id="doctor-template">
			<section class="container">
				<div class="image">
					<img src="">
				</div>
				<div class="element">
					<header class="name">
						<p></p>
						<span class="dt-name"></span>
					</header>
					<main class="whoDoctor">
						<div class="chat">☎ 채팅/전화</div>
						<div class="explanation"></div>
						<span class="stars"> 5.0 <i class="fa-solid fa-star"></i>
						</span>
					</main>
				</div>
			</section>
		</template>
	</div>
</body>
</html>