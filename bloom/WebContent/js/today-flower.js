
var nameFlower = document.getElementById("flower-name");
var mean = document.getElementById("flower-mean");
var image = document.getElementById("flower-image");

fetch('http://localhost:8080/bloom/flower')
	.then((response) => response.json())
	.then((data) => {
		console.log(data);
		nameFlower.innerText = data.flowNm;
		mean.innerText = data.flowLang;
		image.setAttribute('src', data.imageUrl);
	}
)