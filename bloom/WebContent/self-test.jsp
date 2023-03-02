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
	<%@ include file="./header.jsp"%>

	<div class="background-self-test">
		<div class="inner">
			<div class=self-test-list>
				<div class=self-test-box>
					<div class="test-title1">BDI 우울척도검사</div>
					<div class="test-img-box">
						<img
							src="./img/test1.png"
							class="test-img">
					</div>
					<div class="blank"></div>
					<div>
						<div class="test-subtitle">내 기분 측정, 묻지마 상담 대신 쓰세요!</div>
						<div class="test-description">의료 전문가에게 가기 전에 BDI 우울척도검사를 이용해보세요!</div>
					</div>
				</div>
				<div class=self-test-box>
					<div class="test-title2">BAI 불안척도검사</div>
					<div class="test-img-box">
						<img
							src="./img/test2.png"
							class="test-img">
					</div>
					<div class="blank"></div>
					<div>
						<div class="test-subtitle">불안증세 측정의 새로운 기준</div>
						<div class="test-description">BAI 불안척도검사로 내 불안증세 정도를 확인해보세요!</div>
					</div>
				</div>
				<div class=self-test-box>
					<div class="test-title3">null</div>
					<div class="test-img-box">
						<img
							src="./img/test3.png"
							class="test-img">
					</div>
					<div class="blank"></div>
					<div>
						<div class="test-subtitle">null</div>
						<div class="test-description">null</div>
					</div>
				</div>
				<div class=self-test-box>
					<div class="test-title4">null</div>
					<div class="test-img-box">
						<img
							src="./img/test4.png"
							class="test-img">
					</div>
					<div class="blank"></div>
					<div>
						<div class="test-subtitle">null</div>
						<div class="test-description">null</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@ include file="./login-modal.jsp"%>

	<%@ include file="./join-modal.jsp"%>
</body>
</html>