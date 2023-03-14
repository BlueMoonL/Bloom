<%@page import="userinfo.loginCheckServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

if (request.getProtocol().equals("HTTP/1.1"))
	response.setHeader("Cache-Control", "no-cache");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Page Title</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">

<link rel="stylesheet" href="./css/footer.css">
<link rel='stylesheet' type='text/css' media='screen' href='main.css'>
<script src="./js/include.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/showcommunity.js"></script>
<style>
.help {
	-webkit-box-flex: 1;
	flex-grow: 1;
	width: 100%;
}

@media ( max-width : 680px) {
	.page {
		padding: 10px 16px 30px;
	}
}

.page {
	max-width: calc(1164px + 32px);
	margin: 50px auto 0;
	margin-top: 80px;
	padding: 40px 16px;
	height: 890px;
}

.backIcon {
	max-width: 1164px;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 1.3rem;
	font-weight: 300;
}

.backIcon .back {
	position: relative;
	cursor: pointer;
	background-color: #00b564;
	color: white;
	width: 35px;
	height: 35px;
	border-radius: 50%;
	font-size: 1.5rem;
	box-shadow: rgb(0 0 0/ 30%) 0px 2px 3px 0px;
	margin-right: 10px;
}

.backIcon :hover {
	background-color: #f6efcf;
}

.backTitle {
	max-width: 1164px;
	margin-bottom: 20px;
	display: flex;
	-webkit-box-pack: justify;
	padding: 5px 10px 10px;
	border-bottom: 1px solid rgb(221, 221, 221);
	color: rgb(68, 68, 68);
	-webkit-box-align: center;
	align-items: center;
}

.backIcon .back img {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: scale(0.5) translate(-100%, -100%);
}

.page .top_title {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	padding-right: 850px;
}

.page .top_titleName {
	font-size: 20px;
	width: 100px;
}

.story {
	border-top: 10px solid #00b564;
	margin-bottom: 20px;
}

.card {
	box-shadow: 0px 3px 6px 0 rgb(0 0 0/ 20%);
	border-radius: 5px;
	padding: 20px;
	background-color: #fff;
}

.help .story .header {
	display: flex;
	-webkit-box-pack: justify;
	padding: 5px 10px 10px;
	border-bottom: 1px solid rgb(221, 221, 221);
	color: rgb(68, 68, 68);
	-webkit-box-align: center;
	align-items: flex-start;
}
.help .story .header .nickname{
	padding-left: 800px;
}


.help .story .main {
	border-bottom: 1px solid rgb(221, 221, 221);
	padding: 20px 10px;
}

.help .story .main_content {
	min-height: 250px;
	white-space: pre-line;
	word-break: break-all;
	line-height: 1.87;
}

.help .submit {
	display: flex;
}

.help .submit .replace {
	background-color: #00b564;
	color: white;
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-right: 20px;
}

.help .submit .remove {
	background-color: #00b564;
	color: white;
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>

<body>
	<%@ include file="./header.jsp"%>
	<div class="Wrap">
		<main>
			<div class="community_Main help page">
				<div class="backTitle">
					<div class="backIcon">
						<div id="back" class="back">
							<img src="./img/back.png">
						</div>
					</div>
					<div>
						<div class="top_title">
							<div class="top_titleName">커뮤니티 글</div>
						</div>
					</div>
					<div class="submit">
						<div id="replace" class="replace">수정</div>
						<div id="remove" class="remove">삭제</div>
					</div>
				</div>
				<section id="showcommunity-container"></section>
			</div>
		</main>



		<footer id="footer" class="footer" include-html="./footer.html"></footer>

		<template id="showcommunity-temp">
			<article class="p-4">
				<div class="story card">
					<div class="header">
						<div class="title">TEST</div>
						<div class="nickname">TEST</div>
					</div>
					
					<div class="main">
						<div class="main_content">TEST</div>
					</div>
				</div>
			</article>
		</template>
	</div>
</body>
<script>
	includeHTML();
	// 수정 이벤트
	const replace = document.getElementById("replace");
	const remove = document.getElementById("remove");

	replace.addEventListener("click", function() {
		console.log("수정 클릭");
	});

	// 삭제 이벤트
	remove.addEventListener("click", function() {
		console.log("삭제 클릭");
	});

	// 뒤로가기 이벤트
	const back = document.getElementById("back");

	back.addEventListener("click", function() {
		window.location.href = 'http://localhost:8080/bloom/community.jsp';
	})
</script>

</html>