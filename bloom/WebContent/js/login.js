function open() {
	 document.querySelector(".background-login").className = "background-login login-show";
}
function close() {
	 document.querySelector(".background-login").className = "background-login"
}

var btnLogin = document.querySelector("#btn-login");
if(btnLogin != null) {
	btnLogin.addEventListener("click", open);	
}
var loginClose = document.querySelector("#login-close");
if (loginClose != null) {
	loginClose.addEventListener("click", close)	
}

var loginBtn = document.getElementById("loginBtn"); //로그인 창안에서 로그인 버튼
var userID = document.getElementById("userID");
var userPW = document.getElementById("userPW");
//로그인 창에서 로그인 버튼을 눌렀을 때

if (loginBtn != null) {
	loginBtn.addEventListener("click", function(e) {
		fetch("http://localhost:8080/bloom/login", {
		  method: "POST",
		  headers: {
			    "Content-Type": "application/json",
			  },
		  body: JSON.stringify({
		           "userID" : userID.value,
		           "userPW" : userPW.value
			})
		})
		.then(response => response.json())
		.then((json) => {
				if (json.result == 1) {
					close();
					location.reload();
				} else {
					window.alert("아이디, 비밀번호를 확인하세요");
				}
			})
		})
	
}