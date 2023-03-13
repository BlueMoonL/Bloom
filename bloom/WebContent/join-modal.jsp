<%@ page language="java" pageEncoding="UTF-8"%>

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
			
			<div class="join-subtitle">질문: 내가 좋아하는 캐릭터는?</div>
			<div class="input-wrapper">
				<div class="horizontal">
					<input type="text" name="QnA" id="QnA" maxlength="45"
						placeholder="답변을 입력하세요" required> <i
						class="iconCheck5 fa-sharp fa-solid fa-check"></i>
				</div>
				<span class="QnACheck">특수문자x</span>
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
				<button type="button" id="join-button" disabled>가입하기</button>
			</div>
		</div>
	</div>
</div>

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