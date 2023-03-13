<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>BDI 테스트</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/self-test-list.css">
<link rel="stylesheet" href="./css/bditest.css">
<link rel="stylesheet" href="./css/nocheck.css">

<script type="text/javascript" src="./js/bditest.js" defer></script>
<script type="text/javascript" src="./js/nocheck.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<%@ include file="./header.jsp"%>

		<div class="background-bdi">
			<div class="inner">
				<section id="bdi-container" class="bdi-con"></section>
				<input type="submit" value="테스트 완료" class="submit-btn" id="submit-btn">
			</div>
		</div>

	<template id="showBDI-temp">
		<div class="grid-table">
			<div class="item">1</div>
			<div class="question1">
				<p>문제1</p>
				<input type="radio" name="score" id="radiobtn1" class="radiobtn1">
			</div>
			<div class="question2">
				<p>문제2</p>
				<input type="radio" name="score" id="radiobtn2" class="radiobtn2">
			</div>
			<div class="question3">
				<p>문제3</p>
				<input type="radio" name="score" id="radiobtn3" class="radiobtn3">
			</div>
			<div class="question4">
				<p>문제4</p>
				<input type="radio" name="score" id="radiobtn4" class="radiobtn4">
			</div>
		</div>
	</template>
	
	<%@ include file="./nocheck-modal.jsp" %>
	
	<%@ include file="./login-modal.jsp"%>

	<%@ include file="./join-modal.jsp"%>
</body>
</html>