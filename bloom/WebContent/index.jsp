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
<meta http-equiv="Cache-Control" content="must-revalidate">
<title>Bloom</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/basic.css">
<link rel="stylesheet" href="./css/font.css">

<link rel="stylesheet" href="./css/side_main.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/join.css">
<link rel="stylesheet" href="./css/confirm.css">

<script type="text/javascript" src="./js/side_main.js" defer></script>
<script type="text/javascript" src="./js/login.js" defer></script>
<script type="text/javascript" src="./js/logout.js" defer></script>
<script type="text/javascript" src="./js/join.js" defer></script>
<script type="text/javascript" src="./js/today-flower.js" defer></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<%@ include file="./header.jsp"%>

	<div class="Wrap">
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
						<h2>오늘의 꽃</h2>
						<br>
						<p>
							오늘은 <span id="flower-name"></span> 입니다.
						</p>
						<p>
							꽃말은 <span id="flower-mean"></span> 입니다.
						</p>
					</div>
				</div>
			</section>

			<section id="section03">
				<div class="inner">
					<form action="./community.html">
						<button>커뮤니티</button>	
					</form>
				</div>
			</section>

			<section id="section04">
				<section id="section04-1">
					<div class="inner">
						<strong>안녕하세요</strong> <strong>블룸에 오신것을 환영합니다.</strong>
					</div>
				</section>
				<section id="section04-2">
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
										<legend>창우</legend>
									</figure>
								</div>
								<div class="members">
									<figure>
										<img src="./img/cw.jpg" alt="">
										<legend>주용</legend>
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
			</section>
			
			<section id="section05">
				<div class="inner">
					<div id="myPage_header">
				        <label>나의 공간</label>
				    </div>
				      <div id="container">
				          <div id="profile">
				            <div id="user">
				              <head>
				                <span style="font-size: 20px; font-weight: bold;" >프로필</span>
				              </head>
				            </div>
				
				            <div id="user">
				              <div id="user-left">
				                <label>아이디</label><br>
				                <label>이름</label> <br>
				                <label>비밀번호</label> <br>
				              </div>
				
				              <div id="user-right">
				                <label>pgy</label><br>
				                <label>박가영</label><br>
				                <label>ㅇㅇ</label><br>
				              </div>
				            </div>
				
				              <div id="button-change">
				                <button id="change">수정하기</button>
				              </div>
				      </div>
				
				    </div>
				   	 <div id="container-second">
				      <div id="box-bottom">
				        <label>나의</label><br>
				        <label>우울 척도는</label><br>
				        <label>100점</label><br>
				        <div id="button-again">
				          <button id="change">수정하기</button>
				        </div>
				      </div>
				
				      <div id="box-bottom">
				        <label>나의</label><br>
				        <label>불안 척도는</label><br>
				        <label>100점</label><br>
				        <div id="button-again">
				          <button id="change">수정하기</button>
				        </div>
				      </div>
				
				      <div id="box-bottom">
				        <label>나의</label><br>
				        <label>???는</label><br>
				        <label>100점</label><br>
				        <div id="button-again">
				          <button id="change">수정하기</button>
				        </div>
				      </div>
				    </div>
				</div>
			</section>
			
			
			<div class="main_side_nav">
				<ul class="page_nav">
					<li class="active"><span href="#section01"></span> <a
						href="#section01">홈</a></li>
					<li><span href='#section02'></span> <a href="#section02">오늘의
							꽃</a></li>
					<li><span href='#section03'></span> <a href="#section03">커뮤니티</a>
					</li>
					<li><span href='#section04'></span> <a href="#section04">Bloom</a>
					</li>
				</ul>
			</div>
		</main>

		<footer id="footer" class="footer" include-html="./footer.html"></footer>

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
							<div class="register">회원가입</div>
							<span class="bar">|</span>
							<div class="desc">비밀번호 찾기</div>
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
								<input type="text" name="id" id="id" maxlength="20"
									placeholder="아이디를 입력하세요" required> <i
									class="idCheck fa-sharp fa-solid fa-check"></i>
							</div>
							<span id="idCheck" class="idCheckResult">5~10자 영문 소문자, 숫자를
								사용하세요.</span>
						</div>
						<div class="join-subtitle">비밀번호</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="password" name="pw1" id="pw1" maxlength="20"
									placeholder="비밀번호를 입력하세요" required> <i
									class="iconCheck1 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="pw1Expression">8~16자의 영문 대 소문자, 숫자를 사용하세요</span>
						</div>
						<div class="join-subtitle">비밀번호 재확인</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="password" name="pw2" id="pw2" maxlength="20"
									placeholder="비밀번호를 입력하세요" required> <i
									class="iconCheck2 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="pw2Check">비밀번호가 일치하지 않습니다.</span>
						</div>
						<div class="join-subtitle">이름</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="text" name="userName" id="userName" maxlength="10"
									placeholder="이름을 입력하세요" required> <i
									class="iconCheck3 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="nameCheck">2~6자의 한글을 사용하세요.</span>
						</div>
						<div class="email-horizontal">
							<div class="join-subtitle">이메일</div>
							<div class="emailchoice">(선택)</div>
						</div>
						<div class="input-wrapper">
							<div class="horizontal">
								<input type="email" name="userEmail" id="userEmail"
									maxlength="20"> <i
									class="iconCheck4 fa-sharp fa-solid fa-check"></i>
							</div>
							<span class="emailCheck">올바른 이메일을 사용하세요.</span>
						</div>
					</div>
					<div class="footer">
						<div class="join-action">
							<button type="button" id="join-button" disabled>가입하기</button>
						</div>
					</div>
				</div>
			</div>
		</form>

		<div class="background-confirm">
			<div class="confirm-box">
				<div class="confirm-title">
					<strong id="join-name">OOO</strong> <span>님, 환영해요!</span>
				</div>
				<div class="confirm-subtitle">
					<span id="subtitle">회원가입이 완료되었습니다.</span>
				</div>
				<div class="confirm-action">
					<button type="button" id="confirm-button">닫기</button>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

