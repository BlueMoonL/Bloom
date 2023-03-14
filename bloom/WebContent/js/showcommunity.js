window.addEventListener("load", onload);

// Event 처리 하기 위한 함수
function onload(e) {
  console.log("페이지 로딩 후 호출됩니다.");

  fetch("http://localhost:8080/bloom/community?")
    .then((resp) => resp.json())
    .then((arr) => {
      console.log(arr);

      let container = document.getElementById("showcommunity-container");

      container.innerText = "";

      let template = document.getElementById("showcommunity-temp");
      var link = document.location.href;
      for (let i = 0; i < arr.length; i++) {
        if (link == "http://localhost:8080/bloom/showcommunity.jsp?id=" + (i)) {
          let element = arr[i];
          let p = document.importNode(template.content, true);

          let Headingtitle = p.querySelector(".story .header div");
          Headingtitle.innerText = element.title;
          console.log(element.title);

		  let nickname = p.querySelector(".story .header .nickname")
		  nickname.innerText = "작성자 :  " +  element.name;
		  console.log(element.name);

          let pdetail = p.querySelector(".story .main div");
          pdetail.innerText = element.detail;
          console.log(element.detail);
          container.append(p);
        }
      }
    })
    .catch((e) => console.log(e));
}
