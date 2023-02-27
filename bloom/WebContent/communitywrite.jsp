<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>커뮤니티</title>
	<link rel="stylesheet" href="./css/common.css">
	<link rel="stylesheet" href="./css/basic.css">
	<link rel="stylesheet" href="./css/font.css">

	<link rel="stylesheet" href="./css/main.css">
	<link rel="stylesheet" href="./css/footer.css">
	<link rel="stylesheet" href="./css/communitywriter.css">
	

	<script src="./js/include.js"></script>
	<script src="./js/communitywriter.js" defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<style>

	</style>
</head>

<body>
	<%@ include file="./header.jsp"%>

	<div class="Wrap">
		<main>
			<div class="write-form">
				<div class="box">
					<form action="./communitywrite" method="post">
						<div class="OnOff__OnOffWrapper-ydco07-0 cbIfjw on-off-transition-enter-done">
							<div class="on-off off">
								<div class="switch"></div>
							</div>
							<div class="label off">닉네임 비공개</div>
						</div>
						<br> <label for="title">제목:</label> <input type="text" id="title" name="title"><br> <label
							for="content">내용:</label>
						<textarea id="detail" name="detail"></textarea>
						<div class="buttons">
						<input id="submit" type="submit" value="글쓰기">
						<input id="cancel" type="button" name="submit-btn" value="취소">
						</div>
					</form>
				</div>

			</div>
		</main>
		
<footer id="footer" class="footer" include-html="./footer.html"></footer>

</body>
<script>
	includeHTML();
</script>

</html>