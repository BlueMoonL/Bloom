window.addEventListener("load", onload);

function onload(e) {
  console.log("페이지 로딩 후 호출됩니다.");
  fetch("http://localhost:8080/bloom/finddoctor")
    .then((response) => response.json())
    .then((arr) => {
      for (var i = 0; i < arr.length; i++) {

        var name = arr[i].name;
        var comment = arr[i].comment;
        var career = arr[i].career;
        var education = arr[i].education;
        var image = arr[i].image;
        var pk = arr[i].pk;

        // 템플릿가져오기
        const template = document.getElementById("doctor-template");

        // div를 계속생성하기
        const container = document.createElement("div");

        // inner에 적기
        container.innerHTML = template.innerHTML;
        console.log(" url전");
        const imageUrl = "http://localhost:8080/bloom/dtimage/"+ pk; 
        // 이미지 URL을 구성합니다.
  		console.log(imageUrl);
        fetch(imageUrl)
          .then((response) => response.blob())
          .then((blob) => {
            const imageUrl = URL.createObjectURL(blob);
            container.querySelector("img").src = imageUrl;
          })
          .catch((error) => console.error(error));

        container.querySelector(".name p").innerText = name;
		container.querySelector(".education").innerText = education;
		container.querySelector(".career").innerText = career;
        container.querySelector(".explanation").innerText = comment;
        let topmargin = document.getElementById("topmargin");
        topmargin.append(container);
      }
    });
}