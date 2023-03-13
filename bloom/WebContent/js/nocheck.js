function nocheckClose() {
	 document.querySelector(".background-nocheck").className = "background-nocheck"
	return;
}

var closeBtn = document.getElementById("nocheck-close");
closeBtn.addEventListener("click", nocheckClose)	