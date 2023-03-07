window.addEventListener("load", print)
function print(e) {
  fetch("http://localhost:8080/bloom/mypage")
    .then((response) => response.json())
    .then((arr) => {
      let status1 = "검사 필요";
      let status2 = "검사 필요";
      arr.forEach((obj) => {
        if (obj.testNo === 1) {
          status1 = obj.score + "점";
        } else if (obj.testNo === 2) {
          status2 = obj.score + "점";
        }
      });
      document.getElementById("status1").innerText = status1;
      document.getElementById("status2").innerText = status2;
    });
}
