function open() {
	 document.querySelector(".background-login").className = "background-login login-show";
}
function close() {
	 document.querySelector(".background-login").className = "background-login"
}

document.querySelector("#btn-login").addEventListener("click", open)

document.querySelector("#login-close").addEventListener("click", close)

var loginBtn = document.getElementById("loginBtn"); //로그인 창안에서 로그인 버튼
var userID = document.getElementById("userID");
var userPW = document.getElementById("userPW");

//로그인 창에서 로그인 버튼을 눌렀을 때
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
	.then(response => response.text())
	.then((result) => {
		console.log(result);
			if (result != "") {
				close();
			}
		})
	})