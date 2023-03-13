window.addEventListener("load", onload);

// Event 처리 하기 위한 함수
function onload(e) {
  console.log("페이지 로딩 후 호출됩니다.");

  const slider = document.querySelector(".drag");
  let isMouseDown = false;
  let startX, scrollLeft;

  slider.addEventListener("mousedown", (e) => {
    isMouseDown = true;
    slider.classList.add("active");

    startX = e.pageX - slider.offsetLeft;
    scrollLeft = slider.scrollLeft;
  });

 slider.addEventListener("mouseleave", () => {
    isMouseDown = false;
    slider.classList.remove("active");
  });

  slider.addEventListener("mouseup", (e) => {
    isMouseDown = false;
    slider.classList.remove("active");
    console.log("x축" + slider.scrollLeft);
    console.log(startX);
  });

  slider.addEventListener("mousemove", (e) => {
    if (!isMouseDown) return;
    e.preventDefault();
    const x = e.pageX - slider.offsetLeft;
    const walk = (x - startX) * 1;
    slider.scrollLeft = scrollLeft - walk;

    setTimeout(() => {
      slider.style.transition = "transform 0.2s ease-out 10s";
    }, 100);

    console.log("길이" + slider.scrollLeft);
  });

  $(".community-next").on("click", function () {
    isMouseDown = false;
    $(slider).animate({ scrollLeft: "+=1180" }, 500);
  });

  $(".community-prev").on("click", function () {
    isMouseDown = false;
    $(slider).animate({ scrollLeft: "-=1180" }, 500);
  });

  fetch("http://localhost:8080/bloom/community?")
    .then((resp) => resp.json())
    .then((arr) => {
      console.log(arr);

      let container = document.getElementById("community-container");
      // container의 안에 있는 내용을 지우면되겟다고 생각하여 빈문자를 사용
      container.innerText = "";

      let template = document.getElementById("community-temp");

      // 아래의 기능을 배열만큼 반복하기위해 forEach문을 사용 ()안의 요소가 하나씩 하나씩 만들어진다.
      arr.forEach((element) => {
        // importNode를 통해 원래형식을 그대로 대입하여 넣을 수 있다.
        let p = document.importNode(template.content, true);

        // Heading요소를 찾아 innerText를 이용하여 넣기
        let Headingtitle = p.querySelector(".user-title");
        Headingtitle.innerText = element.title;

        // Heading 다음 요소의 값을 가져와 innerText를 이용하여 넣기
        let pdetail = Headingtitle.nextElementSibling;
        pdetail.innerText = element.detail;

        container.append(p);
      });
    })
    .catch((e) => console.log(e));
}
