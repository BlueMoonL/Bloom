    window.addEventListener("load", onload);

    // Event 처리 하기 위한 함수
    function onload(e) {
        console.log("페이지 로딩 후 호출됩니다.");

        fetch("http://localhost:8080/bloom/community?")
            .then((resp) => resp.json())
            .then((arr) => {
                console.log(arr);

                let container = document.getElementById("community-container");
                // container의 안에 있는 내용을 지우면되겟다고 생각하여 빈문자를 사용
                container.innerText = "";

                let template = document.getElementById("community-temp");

                // 아래의 기능을 배열만큼 반복하기위해 forEach문을 사용 ()안의 요소가 하나씩 하나씩 만들어진다.
                arr.forEach(element => {

                    // importNode를 통해 원래형식을 그대로 대입하여 넣을 수 있다.
                    let p = document.importNode(template.content, true);

                    // Heading요소를 찾아 innerText를 이용하여 넣기
                    let Headingtitle = p.querySelector("div");
                    Headingtitle.innerText = element.title;

                    // Heading 다음 요소의 값을 가져와 innerText를 이용하여 넣기
                    let pdetail = Headingtitle.nextElementSibling;
                    pdetail.innerText = element.detail;

                    container.append(p);
                });

                const empathyImage = document.getElementsByClassName("empathy");

                if (empathyImage) {
                    for (let i = 0; i < empathyImage.length; i++) {

                        empathyImage[i].addEventListener("mouseenter", function () {
                            this.classList.contains('on');
                            if (empathyImage[i].classList.add('on')) {
                                this.src = './img/heart-hover.png';
                                console.log("들어옴");
                            } else {
                                empathyImage[i].addEventListener('mouseout', function () {
                                    if (empathyImage[i].classList.remove('on')) {
                                        this.src = './img/heart.png';
                                    }
                                })
                            }

                        });

                        empathyImage[i].addEventListener("click", function () {
                            if (this.classList.contains('on')) {
                                this.src = './img/heart-hover.png';
                                console.log("클릭");
                            } else {
                                this.src = './img/heart.png';
                                console.log("클릭 해제");
                            }

                            this.classList.toggle('on');
                        });
                    }
                }

                // 클래스가 변경될 때 이벤트 리스너를 사용하여 src 속성을 변경
                const classObserver = new MutationObserver((mutationsList, observer) => {
                    mutationsList.forEach(mutation => {
                        if (mutation.type === 'attributes' && mutation.attributeName === 'class') {
                            if (empathyImage.classList.contains('on')) {
                                empathyImage.src = './img/heart-hover.png';
                            } else {
                                empathyImage.src = './img/heart.png';
                            }
                        }
                    });
                });

                // 클래스가 변경되는 것을 관찰
                classObserver.observe(empathyImage, { attributes: true });

            })
            .catch((e) => console.log(e))
    }