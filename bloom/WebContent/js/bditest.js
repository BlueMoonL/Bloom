window.addEventListener("load", testLoad)

function testLoad(e) {
	
	fetch("http://localhost:8080/bloom/BDI")
		.then((resp) => resp.json())
		.then((list) => {
			
			console.log(list)

			let container = document.getElementById("bdi-container");
			
			let template = document.getElementById("showBDI-temp");

			for(let i = 0; i < list.length; i++) {

				let node = document.importNode(template.content, true);

				let testNum = node.querySelector(".grid-table .item div");
				testNum.innerTest = i + 1;
				console.log(i + 1);

				let question1 = node.querySelector(".grid-table .question1 div")
				question1.innerText = list.shift();

				let question2 = node.querySelector(".grid-table .question2 div")
				question1.innerText = list.shift();

				let question3 = node.querySelector(".grid-table .question3 div")
				question1.innerText = list.shift();

				let question4 = node.querySelector(".grid-table .question4 div")
				question1.innerText = list.shift();

				container.append(node);
			}
		})
}