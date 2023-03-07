window.addEventListener("load", testLoad)

function testLoad(e) {
	
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
				
				let question1 = node.querySelector(".grid-table .question1 p");
				question1.innerText = list.shift();
				let radioBtn1 = node.querySelector("#radiobtn1");
				radioBtn1.setAttribute("name", "score" + num);

				let question2 = node.querySelector(".grid-table .question2 p");
				question2.innerText = list.shift();
				let radioBtn2 = node.querySelector("#radiobtn2");
				radioBtn2.setAttribute("name", "score" + num);

				let question3 = node.querySelector(".grid-table .question3 p");
				question3.innerText = list.shift();
				let radioBtn3 = node.querySelector("#radiobtn3");
				radioBtn3.setAttribute("name", "score" + num);

				let question4 = node.querySelector(".grid-table .question4 p");
				question4.innerText = list.shift();
				let radioBtn4 = node.querySelector("#radiobtn4");
				radioBtn4.setAttribute("name", "score" + num);
				
				container.append(node);
			}
		})
}