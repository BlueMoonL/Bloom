<%@page import="Doctor.Dtdetail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보</title>
<body>
	<script src="./js/include.js"></script>

	<div class="inner">
		<header id="Simplification">
			<div class="profile">
				<div class="name">이름</div>
				<div class="photo">사진</div>
			</div>
			<div class="comment">코멘트</div>
			<div class="education">학력정보</div>
		</header>
		<body>---------------
		</body>
		<footer id="materialization">
			<div>현~~직장 뭐뭐 수료 디테일한 소개</div>
			<footer class="schedule">
				<input type="datetime-local" id="meeting-time" name="meeting-time"
					value="2023-03-12T19:30" min="2023-03-07T00:00"
					max="2025-03-14T00:00"> <input type="submit" value="예약하기" />
			</footer>
		</footer>
	</div>
</body>
</html>