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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control" content="must-revalidate">
<title>Bloom</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">

<link rel="stylesheet" href="./css/side_main.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/communityex.css">


<script type="text/javascript" src="./js/main.js" defer></script>
<script type="text/javascript" src="./js/side_main.js" defer></script>
<script type="text/javascript" src="./js/today-flower.js" defer></script>
<script type="text/javascript" src="./js/communityex.js"></script>
<script src="./js/include.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
</head>

<body>
	<div class="Wrap">
		<%@ include file="./header.jsp"%>

		<%@ include file="./main.jsp"%>

		<footer id="footer" class="footer" include-html="./footer.html"></footer>

		<%@ include file="./login-modal.jsp"%>

		<%@ include file="./join-modal.jsp"%>
	</div>
</body>
<script>
	includeHTML();
</script>
</html>