var btnSignup = document.querySelector("#btn-signup");
var SignupClose = document.querySelector("#singup-close");

function signupClose(e) {
	document.querySelector(".background-signup").className = "background-signup";
}
if (btnSignup != null) {
	btnSignup.addEventListener("click", e => {
		document.querySelector(".background-signup").className = "background-signup join-show";
	});	
}
if (SignupClose != null) {
	SignupClose.addEventListener("click", signupClose);
}

var idPass = false;
var pw1Pass = false;
var pw2Pass = false;
var namePass = false;
var QnAPass = false;
var btn = document.getElementById("join-button");

function btn_onoff() {
	if (idPass && pw1Pass && pw2Pass && namePass && QnAPass) {
		btn.disabled = false;
		btn.style.backgroundColor = "#00b564"
	} else {
		btn.disabled = "disabled";
		btn.style.backgroundColor = "#a9a9a9"
	}
}

var id = document.getElementById("id");
let idElems = document.querySelectorAll(".idCheck");
let idCheckResult = document.querySelectorAll(".idCheckResult");
var spanString = document.getElementById("idCheck");
let idCheckExpression = document.querySelectorAll(".idCheckExpression");
var idReg = /^[a-z0-9]{5,10}$/;

//아이디 안내문구 지우기
function removeAll(e) {
	if (id.value != "") {
		idCheckResult.forEach((e) => e.classList.remove("unValid"));
		idElems.forEach((e) => e.classList.remove("valid"));
		idCheckExpression.forEach((e) => e.classList.remove("unValid"));
	}
}
if (id != null) {
	id.addEventListener("load", removeAll);	
	id.addEventListener("keyup", function (e) {
		fetch("http://localhost:8080/bloom/signUp?userid=" + id.value)
			.then((response) => response.text())
			.then((result) => {
	
				if (result == 0) {
						if (idReg.test(id.value)) {
							idElems.forEach((e) => e.classList.add("valid"));
							idCheckResult.forEach((e) => e.classList.remove("unValid"));
							id.style.borderColor = "#00b564"
							idPass = true;
						} else {
							spanString.innerText = "5~10자 영문 소문자, 숫자를 사용하세요.";
							idElems.forEach((e) => e.classList.remove("valid"));
							idCheckResult.forEach((e) => e.classList.remove("unValid"));
							idCheckResult.forEach((e) => e.classList.add("unValid"));
							id.style.borderColor = "#a9a9a9"
							idPass = false;
						}
						btn_onoff();
				} else {
					spanString.innerText = "중복된 아이디입니다.";
					idElems.forEach((e) => e.classList.remove("valid"));
					idCheckResult.forEach((e) => e.classList.remove("unValid"));
					idCheckResult.forEach((e) => e.classList.add("unValid"));
					id.style.borderColor = "#a9a9a9"
					idPass = false;
					btn_onoff();
				}
			})
	});
}

// 질문 JS 만드는거
var QnA = document.getElementById("QnA"); // 답변 텍스트 입력한거
var QnAIcon = document.querySelectorAll(".iconCheck5"); // 아이콘
var QnACheck = document.querySelectorAll(".QnACheck"); // 안내창 
var QnALength = /^[a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣]{0,45}$/; // 길이 문자열 다

function removeQnAExpression(e) {
	QnACheck.forEach((e) => e.classList.remove("unValid"));
}
if (QnA != null) {
	QnA.addEventListener("load", removeQnAExpression);
	QnA.addEventListener("keyup", function (e) {
		if (QnA.value == "") {
			QnA.style.borderColor = "#a9a9a9"
			QnAIcon.forEach((e) => e.classList.remove("valid"))
			QnACheck.forEach((e) => e.classList.remove("unValid"));
			QnAPass = false;
			btn_onoff();
		} else {
			if (QnALength.test(QnA.value)) {
				QnA.style.borderColor = "#00b564"
				QnAIcon.forEach((e) => e.classList.add("valid"))
				QnACheck.forEach((e) => e.classList.remove("unValid"));
				QnAPass = true;
			} else {
				QnA.style.borderColor = "#a9a9a9"
				QnAIcon.forEach((e) => e.classList.remove("valid"))
				QnACheck.forEach((e) => e.classList.add("unValid"));
				QnAPass = false;
			}
			btn_onoff();
		}
	});
} else {

}
 

var pw1 = document.getElementById("pw1");
var pw2 = document.getElementById("pw2");
let elems1 = document.querySelectorAll(".iconCheck1");
let elems2 = document.querySelectorAll(".iconCheck2");
let pwElems = document.querySelectorAll(".pw1Expression");
let pw2Check = document.querySelectorAll(".pw2Check");

//첫번째 비밀번호 안내문구 지움
function removePwExpression(e) {
	pwElems.forEach((e) => e.classList.remove("unValid"));
}
if (pw1 != null) {
	pw1.addEventListener("load", removePwExpression);	
}

var pwReg = /^[a-zA-Z0-9]{8,16}$/;

if (pw1 != null) {
	pw1.addEventListener("keyup", function (e) {
		if (pw1.value != "") {
			if (pwReg.test(pw1.value)) {
				pw1.style.borderColor = "#00b564"
				elems1.forEach((e) => e.classList.add("valid"));
				pwElems.forEach((e) => e.classList.remove("unValid"));
				pw1Pass = true;
			} else {
				pw1.style.borderColor = "#a9a9a9"
				elems1.forEach((e) => e.classList.remove("valid"));
				pwElems.forEach((e) => e.classList.add("unValid"));
				pw1Pass = false;
			}
			btn_onoff();
		} else {
			pw1.style.borderColor = "#a9a9a9"
			pwElems.forEach((e) => e.classList.remove("unValid"));
			elems1.forEach((e) => e.classList.remove("valid"));
			pw1Pass = false;
			btn_onoff();
		}
	});
}


//비밀번호 확인 안내문구 지움
function removePwCheckExpression(e) {
	pw2Check.forEach((e) => e.classList.remove("unValid"));
}
if (pw2 != null) {
	pw2.addEventListener("load", removePwCheckExpression);	
}

//비밀번호 확인
function secondPwResult(e) {
	if (pw2.value == "") {
		pw2.style.borderColor = "#a9a9a9"
		elems2.forEach((e) => e.classList.remove("valid"));
		pw2Check.forEach((e) => e.classList.remove("unValid"));
		pw2Pass = false;
		btn_onoff();
	} else {
		if (pw1.value == pw2.value) {
			if (pw1.value != "" && pw2.valu != "") {
				pw2.style.borderColor = "#00b564"
				elems2.forEach((e) => e.classList.add("valid"));
				pw2Check.forEach((e) => e.classList.remove("unValid"));
				pw2Pass = true;
			}
		} else {
			elems2.forEach((e) => e.classList.remove("valid"));
			if (pw2.value != "") {
				pw2Check.forEach((e) => e.classList.add("unValid"));
			}
			pw2.style.borderColor = "#a9a9a9"
			pw2Pass = false;
		}
		btn_onoff();
	}
}
if (pw1 != null) {
	pw1.addEventListener("keyup", secondPwResult);	
}
if (pw2 != null) {
	pw2.addEventListener("keyup", secondPwResult);	
}

// 이름
var nameReg = /^[가-힣]{2,6}$/;
var userName = document.getElementById("userName");
let nameIcon = document.querySelectorAll(".iconCheck3");
let nameCheck = document.querySelectorAll(".nameCheck");

function removeNameExpression(e) {
	nameCheck.forEach((e) => e.classList.remove("unValid"));
}
if (userName != null) {
	userName.addEventListener("load", removeNameExpression);
	userName.addEventListener("keyup", function (e) {
		if (userName.value == "") {
			userName.style.borderColor = "#a9a9a9"
			nameIcon.forEach((e) => e.classList.remove("valid"))
			nameCheck.forEach((e) => e.classList.remove("unValid"));
			namePass = false;
			btn_onoff();
		} else {
			if (nameReg.test(userName.value)) {
				userName.style.borderColor = "#00b564"
				nameIcon.forEach((e) => e.classList.add("valid"))
				nameCheck.forEach((e) => e.classList.remove("unValid"));
				namePass = true;
			} else {
				userName.style.borderColor = "#a9a9a9"
				nameIcon.forEach((e) => e.classList.remove("valid"))
				nameCheck.forEach((e) => e.classList.add("unValid"));
				namePass = false;
			}
			btn_onoff();
		}
	});
}


var userEmail = document.getElementById("userEmail");
let emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
let emailIcon = document.querySelectorAll(".iconCheck4");
let emailCheck = document.querySelectorAll(".emailCheck");

//이메일 안내문구 지움
function removeEmailExpression(e) {
	emailCheck.forEach((e) => e.classList.remove("unValid"));
}
if (userEmail != null) {
	userEmail.addEventListener("load", removeEmailExpression);
	userEmail.addEventListener("keyup", function (e) {
		if (emailReg.test(userEmail.value)) {
			userEmail.style.borderColor = "#00b564"
			emailIcon.forEach((e) => e.classList.add("valid"))
			emailCheck.forEach((e) => e.classList.remove("unValid"));
		} else {
			userEmail.style.borderColor = "#a9a9a9"
			emailIcon.forEach((e) => e.classList.remove("valid"))
			emailCheck.forEach((e) => e.classList.add("unValid"));
		}
		if (userEmail.value == "") {
			userEmail.style.borderColor = "#a9a9a9"
			emailIcon.forEach((e) => e.classList.remove("valid"))
			emailCheck.forEach((e) => e.classList.remove("unValid"));
		}
	})	
}

var joinBtn = document.getElementById("join-button");
var confirmClose = document.getElementById("confirm-button");
var joinName = document.getElementById("join-name");
var subtitle = document.getElementById("subtitle");
let title = document.querySelectorAll(".confirm-title");
let subtitleBox = document.querySelectorAll(".confirm-subtitle");

if (joinBtn != null) {
	joinBtn.addEventListener("click", e => {
		fetch("http://localhost:8080/bloom/joinUser", {
			method: "POST",
			headers: {
			    "Content-Type": "application/json",
			  },
		  	body: JSON.stringify({
		           "id" : id.value,
		           "pw1" : pw1.value,
		           "userName" : userName.value,
				   "qna" : QnA.value,
		           "userEmail" : userEmail.value
			})
		})
			.then((response) => response.text())
			.then((result) => {
				if (result == "1") {
					signupClose();
					joinName.innerText = id.value;
					title.forEach((e) => e.classList.remove("unvalid"))
					subtitleBox.forEach((e) => e.classList.remove("error-text"))
					subtitle.innerText = "회원가입이 완료되었습니다.";
					document.querySelector(".background-confirm").classList.add("confirm-show")
				} else {
					signupClose();
					subtitleBox.forEach((e) => e.classList.add("error-text"))
					title.forEach((e) => e.classList.add("unvalid"))
					subtitle.innerText = "회원가입에 실패 했습니다.";
					document.querySelector(".background-confirm").classList.add("confirm-show")
				}
			})
	})	
}

if (confirmClose != null) {
	confirmClose.addEventListener("click", () => {
		document.querySelector(".background-confirm").className = "background-confirm";
		location.reload();
	});
}
