window.addEventListener("load", testLoad)

function testLoad(e) {
	
	fetch("http://localhost:8080/bloom/BDI")
		.then((resp) => resp.json())
		.then((json) => {
			
			for(let i = 0; i < json.length; i++) {
				
				
			}
		}
}