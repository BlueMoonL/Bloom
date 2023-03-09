function close() {
	 document.querySelector(".background-confirm").className = "background-confirm";
}

var pwChange = document.getElementById("pwChange");

if (pwChange != null) {
	pwChange.addEventListener("click", e => {
		document.querySelector(".background-confirm").classList.add("confirm-show");
	});	
}

var pwChangeBtn = document.getElementById("pw-change-button");
var pw1 = document.getElementById("pw1");

if (pwChangeBtn != null) {
	pwChangeBtn.addEventListener("click", e => {
		fetch("http://localhost:8080/bloom/pwChange", {
		  method: "POST",
		  headers: {
			    "Content-Type": "application/json",
			  },
		  body: JSON.stringify({
		           "pw1" : pw1.value,
				   "pw2" : newPw1.value,
				   "pw3" : newPw2.value
			})
		})
		.then(response => response.json())
		.then((json) => {
			if (json.changeResult == 1) {
				close();
				location.reload();
				window.alert("비밀번호 변경이 완료되었습니다.");
			} else if (json.changeResult == 0) {
				window.alert("새로 입력한 비밀번호들이 다릅니다.");
			} else {
				window.alert("기존 비밀번호가 다릅니다.");
			}
		})
	})
}
window.addEventListener("load", onload);

// Event 처리 하기 위한 함수
function onload(e) {
  console.log("페이지 로딩 후 호출됩니다.");

  fetch("http://localhost:8080/bloom/mypage/community?")
    .then((resp) => resp.json())
    .then((arr) => {
      console.log(arr);

	
      let container = document.getElementById("posiit");
	  
			
      let template = document.getElementById("community-temp");

      // 아래의 기능을 배열만큼 반복하기위해 forEach문을 사용 ()안의 요소가 하나씩 하나씩 만들어진다.
      arr.forEach((element) => {
        // importNode를 통해 원래형식을 그대로 대입하여 넣을 수 있다.
        let p = document.importNode(template.content, true);

        // Heading요소를 찾아 innerText를 이용하여 넣기
        let Headingtitle = p.querySelector(".container-postit-item");
        Headingtitle.innerText = element.title;

        // Heading 다음 요소의 값을 가져와 innerText를 이용하여 넣기
        let pdetail = Headingtitle.nextElementSibling;
        pdetail.innerText = element.detail;

        container.append(p);
      });
    })
    .catch((e) => console.log(e));
}
