var checkedGroups = [];

window.addEventListener("load", function testLoad(e) {
	
	fetch("http://localhost:8080/bloom/BDI")
		.then((resp) => resp.json())
		.then((list) => {
			
			console.log(list)

			let container = document.getElementById("bdi-container");
			
			let template = document.getElementById("showBDI-temp");
			
			for(let i = 0; i < 21; i++) {

				let node = document.importNode(template.content, true);

				let testNum = node.querySelector(".grid-table .item");
				
				num = i + 1;
				testNum.innerText = num;
				let scoreName = "score" + num;
				
				let question1 = node.querySelector(".grid-table .question1 p");
				question1.innerText = list.shift();
				let radioBtn1 = node.querySelector("#radiobtn1");
				radioBtn1.setAttribute("name", scoreName);

				let question2 = node.querySelector(".grid-table .question2 p");
				question2.innerText = list.shift();
				let radioBtn2 = node.querySelector("#radiobtn2");
				radioBtn2.setAttribute("name", scoreName);

				let question3 = node.querySelector(".grid-table .question3 p");
				question3.innerText = list.shift();
				let radioBtn3 = node.querySelector("#radiobtn3");
				radioBtn3.setAttribute("name", scoreName);

				let question4 = node.querySelector(".grid-table .question4 p");
				question4.innerText = list.shift();
				let radioBtn4 = node.querySelector("#radiobtn4");
				radioBtn4.setAttribute("name", scoreName);
				
				checkedGroups.push(scoreName);
				container.append(node);
			}
		})
});

function nocheckOpen() {
	 document.querySelector(".background-nocheck").className = "background-nocheck nocheck-show";
}

var submit = document.getElementById("submit-btn")
submit.addEventListener("click", e => {
	
//	let checkedIndexes = {};
	let checkedIndexes = [];
	let testNo = 1;
	
	for (let group of checkedGroups) {
		
		let radios = document.querySelectorAll(`input[type=radio][name=${group}]`);
		let indexes;
		
		for (let i = 0; i < radios.length; i++) {
			
			if (radios[i].checked) {
				indexes = i;
			}
		}
		
//		checkedIndexes[group] = indexes;
		checkedIndexes.push(indexes);
	}
	
	console.log(checkedIndexes);
	console.log(checkedIndexes.length);
	
	let isNull = false;
	
	if(checkedIndexes.length != 21) {
		isNull = true
	}
	
	if (isNull) {
		nocheckOpen();
	} else {
		fetch("http://localhost:8080/bloom/BDIComplete", {
		  method: "POST",
		  headers: {
			    "Content-Type": "application/json",
			  },
		  body: JSON.stringify({
				"testNo" : testNo,
		   		"BDIScore" : checkedIndexes
		  })
		})
		.then((resp) => resp)
		.then((respNum) => {
			isNull = false;
			location.href = "./myPage.jsp";
		})
	}
});