<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자가진단</title>

<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/self-test.css">

</head>
<body>
	<div style="overflow: scroll;"Wrap">
		<%@ include file="./header.jsp"%>

		<div class="inner">
			<div class=self-test-list>
				<div class=self-test-box>
					<div color="#F9F1B6" class="test-title">우울척도검사</div>
					<div class="test-subtitle"></div>
					<div class="test-description"></div>
					<div class="test-img"></div>
				</div>
			</div>
		</div>

		<%@ include file="./login-modal.jsp"%>

		<%@ include file="./join-modal.jsp"%>
	</div>
</body>
</html>