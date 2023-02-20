const scrollmenu = document.querySelectorAll(".left ul li > a");


// 스크롤 내릴때 이벤트

function handleScrollEvent() {
  console.log(scrollmenu);
  console.log(window.scrollX, window.scrollY);
  if (window.scrollY < 869 || window.scrollY == 0) {
    scrollmenu[0].classList.add('active');
    scrollmenu[1].classList.remove('active');
    scrollmenu[2].classList.remove('active');
    scrollmenu[3].classList.remove('active');
  } else if (window.scrollY >= 869 && window.scrollY < 1800) {
    scrollmenu[0].classList.remove('active');
    scrollmenu[1].classList.add('active')
    scrollmenu[2].classList.remove('active')
    scrollmenu[3].classList.remove('active')
  } else if (window.scrollY >= 1800 && window.scrollY < 2700) {
    scrollmenu[0].classList.remove('active');
    scrollmenu[1].classList.remove('active')
    scrollmenu[2].classList.add('active')
    scrollmenu[3].classList.remove('active')
  } else if (window.scrollY >= 2700 && window.scrollY < 3600) {
    scrollmenu[0].classList.remove('active');
    scrollmenu[1].classList.remove('active')
    scrollmenu[2].classList.remove('active')
    scrollmenu[3].classList.add('active')
  }
}

window.addEventListener('scroll', handleScrollEvent);

// 클릭 했을 때 이벤트

function handleClickEvent(index) {
  console.log(scrollmenu[index]);
  scrollmenu.forEach((item, i) => {
    if (i === index) {
      item.classList.add('active');
    } else {
      item.classList.remove('active');
    }
  });
}

$(document).ready(function($) {

        $(".left ul li > a").click(function(event){         

                event.preventDefault();
				let yPos = $(this.hash).offset().top;
				console.log("y좌표값:", yPos);
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
        });
})

$(document).ready(function($) {

        $(".left ul li > a").scroll(function(event){         

                event.preventDefault();
				let yPos = $(this.hash).offset().top;
				console.log("y좌표값:", yPos);
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
        });
})

/*scrollmenu.forEach((item, index) => {
  item.addEventListener("click", function (e) {
    handleClickEvent(index);
  });
});*/

/*scrollmenu.forEach(function (menu, index) {
  menu.onclick = function () {
    clickToSection(index);
  };
});*/



// 글자 클릭 이벤트
const clickmenu = document.querySelectorAll(".left ul li div a");

function ClickEvent(index) {
  console.log(clickmenu[index]);
  clickmenu.forEach((item, i) => {
    if (i === index) {
      item.classList.add('active');
    } else {
      item.classList.remove('active');
    }
  });
}

clickmenu.forEach((item, index) => {
  item.addEventListener("click", function (e) {
    ClickEvent(index);
  });
});

/*
clickmenu.forEach(function (menu, index) {
  menu.onclick = function () {
    clickToSection(index);
  };
});
*/

$(document).ready(function($) {

        $(".left ul li div a").click(function(event){         

                event.preventDefault();
				let yPos = $(this.hash).offset().top;
				console.log("y좌표값:", yPos);
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
        });
})

window.addEventListener("wheel", function(e){
	e.preventDefault();
	},{passive : false});

var mHtml = $("html");
var page = 1;


mHtml.animate({scrollTop : 0}, 30);

$(window).on("wheel", function(e) {
	console.log("페이지 : ", page);
    if(mHtml.is(":animated")) return;
    if(e.originalEvent.deltaY > 0) {
        if(page == 4) return;
        page++;
    } else if(e.originalEvent.deltaY < 0) {
        if(page == 1) return;
        page--;
    }
    var posTop =(page-1) * $(window).height();
    mHtml.animate({scrollTop : posTop});
})
