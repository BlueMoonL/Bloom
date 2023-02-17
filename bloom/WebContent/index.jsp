<%@page import="userinfo.loginCheckServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Cache-Control" content="must-revalidate">
	<title>Bloom</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
		integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />


	<link rel="stylesheet" href="./css/common.css">
	<link rel="stylesheet" href="./css/basic.css">
	<link rel="stylesheet" href="./css/font.css">

	<link rel="stylesheet" href="./css/header.css">
	<link rel="stylesheet" href="./css/side_main.css">
	<link rel="stylesheet" href="./css/main.css">
	<link rel="stylesheet" href="./css/footer.css">
	<link rel="stylesheet" href="./css/login.css">
	<link rel="stylesheet" href="./css/join.css">

	<script type="text/javascript" src="./js/side_main.js" defer></script>
	<script type="text/javascript" src="./js/login.js" defer></script>
	<script type="text/javascript" src="./js/join.js" defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<body>

	<div class="Wrap">
		<header id="header" class="">
			<h1>
				<a href="/"> <img src="./img/logo_test.png" alt="">
				</a>
			</h1>
			<div class="inner">
				<nav class="gnb">
					<ul class="gnb_menu">
						<li><a href="javascript:void(0)">Home</a></li>
						<li><a href="javascript:void(0)">Introduce</a></li>
					</ul>
				</nav>
			</div>
		
			<%
			String userID = (String) session.getAttribute("login");
			if (userID == null) {
			%>	
			<div class="login">
				<li><a href="javascript:void(0)" id="btn-login">Login</a></li>
				<li><a href="javascript:void(0)" id="btn-signup">Sign Up</a></li>
			</div>
			<%	
			} else {
			%>
			<div class="login">
				<li><a href="javascript:void(0)" id="btn-login">Logout</a></li>
				<li><a href="javascript:void(0)" id="btn-signup">MyPage</a></li>
			</div>
			<%	
			}
			%>

		</header>

		<main>

			<section id="section01">
				<div class="inner">
					<strong>안녕하세요</strong> <strong>블룸에 오신것을 환영합니다.</strong>
				</div>
			</section>

			<section id="section02">
				<div class="inner">
					<figure class="section02_img">
						<img id="flower-image" src="">
						</a>
					</figure>
					<div class="section02_desc">
						<h2>오늘의 꽃</h2><br>
						<p>오늘은 <span id="flower-name"></span> 입니다.</p>
						<p>꽃말은 <span id="flower-mean"></span> 입니다.</p>
					</div>
				</div>
			</section>
			
		<script>
				fetch('http://localhost:8080/bloom/flower')
				.then(response => response.json())
				.then(data => {
					console.log(data);
					document.getElementById('flower-name').innerText = data.flowNm;
					document.getElementById('flower-mean').innerText = data.flowLang;
					document.getElementById('flower-image').setAttribute('src', data.imageUrl);
				})
		</script>

			<section id="section03">
				<div class="inner">
					<h2>안녕하세요</h2>
					<h2>블룸에 오신것을 환영합니다.</h2>
				</div>
			</section>

			<section id="section04">
				<div class="inner">
					<h2>마음 쑥쑥</h2>
					<fieldset>
						<div class="team-member">
							<div class="members">
								<figure>
									<img src="./img/wh.png" alt="">
									<legend>완희</legend>
								</figure>

							</div>
							<div class="members">
								<figure>
									<img src="./img/jy.jpg" alt="">
									<legend>주용</legend>
								</figure>
							</div>
							<div class="members">
								<figure>
									<img src="./img/cw.jpg" alt="">
									<legend>창우</legend>
								</figure>
							</div>
							<div class="members">
								<figure>
									<img src="./img/gy.png" alt="">
									<legend>가영</legend>
								</figure>
							</div>
							<div class="members">
								<figure>
									<img src="./img/hi.png" alt="">
									<legend>혜인</legend>
								</figure>
							</div>
						</div>
					</fieldset>
				</div>
			</section>
			<nav>
				<div id="menu" class="left" style="margin-top: -75px;">
					<ul data-aos="fade-up" class="leftmenu" id="clickmenu">
						<li><a href="#section01" class="active"> <span></span>
							</a>
							<div>
								<a href="#section01"> 홈 </a>
							</div>
						</li>
						<li><a href="#section02" class> <span></span>
							</a>
							<div>
								<a href="#section02"> 오늘의 꽃 </a>
							</div>
						</li>


						<li><a href="#section03" class> <span></span>
							</a>
							<div>
								<a href="#section03"> 커뮤니티 </a>
							</div>
						</li>


						<li><a href="#section04" class> <span></span>
							</a>
							<div>
								<a href="#section04"> Bloom </a>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</main>

		<footer id="footer" class="footer">
			<div class="footer_logo">
				<a href="#!"> <img src="./img/logo_test.png" alt="">
				</a>
			</div>
			<div class="address">
				<ul>
					<li>서울시 강남구 삼성동 1234 우 : 123-1234</li>
					<li>TEL : 031-123-4567 </li>
					<li>Email : email@domain.com</li>
				</ul>
				<div class="copy">
					&copy;COPYRIGHT 블룸 ALL RIGHTS RESERVED
				</div>
			</div>
		</footer>

		<div class="bahttp://localhost:8080/bloom/index.html">
			<div class="background-login">
				<div class="login-box">
					<div class="login-header">
						<div class="close">
							<i class="fa-solid fa-xmark" id="login-close"></i>
						</div>
					</div>
					<div class="login-title">
						<img src="./img/logo_test.png" />
						<h2>우리들의 마음속 꽃 한송이</h2>
					</div>
	
					<div class="inputs">
						<div class="login-subtitle">아이디</div>
						<div class="input-wrapper">
							<input name="login_id" type="text" id="userID">
						</div>
						<div class="login-subtitle">비밀번호</div>
						<div class="input-wrapper">
							<input name="login_pwd" type="password" id="userPW">
						</div>
					</div>
	
					<div class="footer">
						<div class="login-action">
							<button type="button" id="loginBtn">로그인</button>
						</div>
						<div class="register-action">
							<div class="flex">
								<div class="register"> 회원가입</div>
								<span class="bar">|</span>
								<div class="desc">비밀번호 찾기</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<form action="http://localhost:8080/bloom/joinUser" method="post">
			<div class="background-signup">
				<div class="join-box">
					<div class="join-header">
						<div class="close">
							<i class="fa-solid fa-xmark" id="singup-close"></i>
						</div>
					</div>
					<div class="join-title">회원가입</div>
					<div class="inputs">
						<div class="join-subtitle">아이디</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="text" name="id" id="id" maxlength="20" placeholder="아이디를 입력하세요" required>
								<i class="idCheck fa-sharp fa-solid fa-check"></i>
							</div>
							<span id="idCheck" class="idCheckResult">5~10자 영문 소문자, 숫자를 사용하세요.</span>
						</div>
						<div class="join-subtitle">비밀번호</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="password" name="pw1" id="pw1" maxlength="20" placeholder="비밀번호를 입력하세요"
									required>
								<i class="iconCheck1 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="pw1Expression">8~16자의 영문 대 소문자, 숫자를 사용하세요</span>
						</div>
						<div class="join-subtitle">비밀번호 재확인</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="password" name="pw2" id="pw2" maxlength="20" placeholder="비밀번호를 입력하세요"
									required>
								<i class="iconCheck2 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="pw2Check">비밀번호가 일치하지 않습니다.</span>
						</div>
						<div class="join-subtitle">이름</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="text" name="userName" id="userName" maxlength="10" placeholder="이름을 입력하세요"
									required>
								<i class="iconCheck3 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="nameCheck">2~6자의 한글을 사용하세요.</span>
						</div>
						<div class="email-horizontal">
							<div class="join-subtitle">이메일</div>
							<div class="emailchoice">(선택)</div>
						</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="email" name="userEmail" id="userEmail" maxlength="20">
								<i class="iconCheck4 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="emailCheck">올바른 이메일을 사용하세요.</span>
						</div>
					</div>
					<div class="footer">
						<div class="join-action">
							<button type="submit" id="join-button" disabled>가입하기</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>

</html>

