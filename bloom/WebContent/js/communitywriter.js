const clickitem = document.querySelector('.cbIfjw .on-off');

	clickitem.addEventListener('click', function () {
		clickitem.classList.toggle('off');
	});
	
const form = document.getElementById("myForm");
const submitBtn = document.getElementById("submit");
const cancelBtn = document.getElementById("cancel");

submitBtn.addEventListener("click", function () {
  form.action = "./communitywrite";
});

cancelBtn.addEventListener("click", () => {
  window.history.back();
});