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
						<img class="test-image"
							src="https://i.pinimg.com/474x/b7/b7/15/b7b715190586b985db6b5c46997fc54c.jpg">
						<div class="test-title-box">
							<div class="test-title">우울척도 검사</div>
							<div class="test-subtitle-box">
								<div class="test-subtitle">당신의 우울함을 체크해 보세요</div>
							</div>
						</div>
					</div>
				</div>
				<div class="test-box">
					<div class="test-cardview">
						<img class="test-image"
							src="data:image/jpeg;base64,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">
						<div class="test-title-box">
							<div class="test-title">우울척도 검사</div>
							<div class="test-subtitle-box">
								<div class="test-subtitle">당신의 우울함을 체크해 보세요</div>
							</div>
						</div>
					</div>
				</div>
				<div class="test-box">
					<div class="test-cardview">
						<img class="test-image"
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo2YylWwQUSoUyDkPfEVvqu28YdZE00Zsugw&usqp=CAU">
						<div class="test-title-box">
							<div class="test-title">우울척도 검사</div>
							<div class="test-subtitle-box">
								<div class="test-subtitle">당신의 우울함을 체크해 보세요</div>
							</div>
						</div>
					</div>
				</div>
				<div class="test-box">
					<div class="test-cardview">
						<img class="test-image"
							src="https://i.pinimg.com/474x/b7/b7/15/b7b715190586b985db6b5c46997fc54c.jpg">
						<div class="test-title-box">
							<div class="test-title">우울척도 검사</div>
							<div class="test-subtitle-box">
								<div class="test-subtitle">당신의 우울함을 체크해 보세요</div>
							</div>
						</div>
					</div>
				</div>
				<div class="test-box">
					<div class="test-cardview">
						<img class="test-image"
							src="data:image/jpeg;base64,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">
						<div class="test-title-box">
							<div class="test-title">우울척도 검사</div>
							<div class="test-subtitle-box">
								<div class="test-subtitle">당신의 우울함을 체크해 보세요</div>
							</div>
						</div>
					</div>
				</div>
				<div class="test-box">
					<div class="test-cardview">
						<img class="test-image"
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo2YylWwQUSoUyDkPfEVvqu28YdZE00Zsugw&usqp=CAU">
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