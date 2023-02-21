var pwChange = document.getElementById("pwChange");

if (pwChange != null) {
	pwChange.addEventListener("click", e => {
		document.querySelector(".background-confirm").classList.add("confirm-show");
	});	
}