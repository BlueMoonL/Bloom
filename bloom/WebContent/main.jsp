<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main>
	<section id="section01">
		<div class="inner">
			<div class="test-title">
				<div class="title-left">오늘은 이런</div>
				<div class="title-center">
					<div class="center-test">&nbsp; 심리검사 &nbsp;</div>
				</div>
				<div class="title-right">어떠신가요?</div>
			</div>
			<div class="test-list">
				<div class="test-box">
					<div class="test-cardview">
						<img class="test-image" src="https://i.pinimg.com/474x/b7/b7/15/b7b715190586b985db6b5c46997fc54c.jpg">
						<div class="test-title-box">
							<div class="test-title">우울척도 검사</div>
							<div class="test-subtitle-box">
							<div class="test-subtitle">당신의 우울함을 체크해 보세요</div>
						</div>
						</div>
						
					</div>
				</div>
			</div>
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
			<form action="./community.jsp">
				<input id="submit" type="submit" value="커뮤니티">
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

	<div class="main_side_nav" include-html="./side-nav.html"></div>
</main>