<%@page import="userinfo.loginCheckServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">

<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/community.css">
	
<script src="./js/include.js"></script>
<script type="text/javascript" src="./js/community.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<%@ include file="./header.jsp"%>

	<div class="Wrap">
		<main class="p-4 flex-auto flex flex-wrap w-full ">
			<div class="w-4/4 p-4 h-full">
				<h1 class="text-2xl font-medium text-center text-gray-900">커뮤니티
				</h1>
					<form action="communitywrite.jsp">
						<input id="submit" type="submit" value="글쓰기">
					</form>
				<br>
				<section id="community-container" class="w-full h-full flex flex-wrap">
				</section>
			</div>

		</main>
		
		<footer id="footer" class="footer" include-html="./footer.html"></footer>

		<template id="community-temp">
			<article class="w-1/3 p-4">
				<a class="hDZGkQ">
					<div class="text-lg font-bold font-medium text-gray-900">TEST</div>
					<div class="text-gray-700">TEST</div>
				</a>
				<div class="footerlog">
					<div class="reactions">
						<img id="empathy" class="empathy" src="./img/heart.png" alt="공감">
						<span> "명이 공감"</span> <span></span>
					</div>
					<div class="reactions">
						<div class="nickname">비공개</div>
					</div>
				</div>
			</article>
		</template>
		</div>
</body>
<script>
	includeHTML();
</script>
</html>