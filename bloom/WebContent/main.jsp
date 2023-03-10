<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main>
	<section id="section00">
		<div class="inner">
			<strong>안녕하세요.</strong> <strong>당신의 <point>마음</point>을 <point>진단</point>해드립니다.
			</strong>
			<main>
				Bloom은 우리 모두의 건강과 행복을 위해 노력합니다.<br> 우울증은 현대인이라면 누구나 겪을 수 있는
				건강문제 중 하나로, 정확한 진단과 치료가 중요합니다.<br> 비대면 검사를 통해 자신의 우울증 정도를 측정하고,
				예방과 치료를 위해 전문의와의 상담을 연결해드립니다.
			</main>
		</div>
	</section>
	<section id="section01">
		<div class="background-test">
			<div class="prev-btn">
				<i class="fas fa-light fa-angle-left"></i>
			</div>
			<div class="inner">
				<div class="test-title">
					<div class="title-left">오늘 당신의</div>
					<div class="title-center">
						<div class="center-test">&nbsp;마음 &nbsp;</div>
					</div>
					<div class="title-right">은 어떤가요?</div>
				</div>

				<div class="test-list">
					<div class="test-box">
						<div class="test-cardview" id="bdi-test">
							<img class="test-image" src="./img/test1.png">
							<div class="test-title-box">
								<div class="test-title">BDI 우울척도검사</div>
								<div class="test-subtitle-box">
									<div class="test-subtitle">내 기분 측정, 묻지마 상담 대신 쓰세요!</div>
								</div>
							</div>
						</div>
					</div>
					<div class="test-box">
						<div class="test-cardview" id="bai-test">
							<img class="test-image" src="./img/test2.png">
							<div class="test-title-box">
								<div class="test-title">BAI 불안척도검사</div>
								<div class="test-subtitle-box">
									<div class="test-subtitle">당신의 불안함을 체크해 보세요</div>
								</div>
							</div>
						</div>
					</div>
					<div class="test-box">
						<div class="test-cardview">
							<img class="test-image" src="./img/test3.png">
							<div class="test-title-box">
								<div class="test-title">null</div>
								<div class="test-subtitle-box">
									<div class="test-subtitle">null</div>
								</div>
							</div>
						</div>
					</div>
					<div class="test-box">
						<div class="test-cardview">
							<img class="test-image" src="./img/test4.png">
							<div class="test-title-box">
								<div class="test-title">null</div>
								<div class="test-subtitle-box">
									<div class="test-subtitle">null</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="next-btn">
				<i class="fas fa-light fa-angle-right"></i>
			</div>
		</div>
	</section>

	<section id="section02">
		<div class="inner">
			<figure class="section02_img">
				<img id="flower-image" src="">
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
		<div class="community-prev">
			<i class="fas fa-light fa-angle-left"></i>
		</div>
		<div class="inner drag">
			<section id="community-container" class="section-community"></section>
		</div>
		<div class="community-next">
			<i class="fas fa-light fa-angle-right"></i>
		</div>

		<template id="community-temp">
			<article class="articlebox">
				<div class="background">
					<div class="user-text">
						<p class="user-title">TEST</p>
						<p class="user-detail">TEST</p>
					</div>
				</div>
			</article>
		</template>
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

	<div class="main_side_nav" include-html="./side-nav.html"></div>
</main>