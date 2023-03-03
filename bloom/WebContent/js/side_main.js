$(function () {	
	// 휠 슬라이드
	var mHtml = $("html");
	var page = 1;
	  
	mHtml.animate({scrollTop : 0}, 30);
	
	$(window).on("wheel", function(e) {
	    if(mHtml.is(":animated")) return;
		console.log($(window).height());
		if($(document).scrollTop() > "3827") return;
	    if(e.originalEvent.deltaY > 0) {
	        if(page == 5) return;
	        page++;
	    } else if(e.originalEvent.deltaY < 0) {
	        if(page == 1) return;
	        page--;
	    }
	    var posTop =(page - 1) * $(window).height();
		console.log("페이지 : ", page);
	    mHtml.animate({scrollTop : posTop});
	});

	function pageChange(section) {
		if (section =="#section00") {
			page = 1;
			console.log("페이지 변경: " + page);
		} else if (section == "#section01") {
			page = 2;
			console.log("페이지 변경: " + page);
		} else if(section == "#section02") {
			page = 3;
			console.log("페이지 변경: " + page);
		} else if(section == "#section03") {
			page = 4;
			console.log("페이지 변경: " + page);
		} else if(section == "#section04") {
			page = 5;
			console.log("페이지 변경: " + page);
		}
	}
	
	//클릭했을때 이동
    $('.main_side_nav .page_nav li a').click(function () {
        $('html, body').css({"transition-delay":"0.03s"});
        // 딜레이 0.03 먹이고
        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 500);

		let section = $.attr(this, 'href');
		pageChange(section);
		
        return false;
    });

	$('.main_side_nav .page_nav li span').click(function () {
        $('html, body').css({"transition-delay":"0.03s"});
        // 딜레이 0.03 먹이고
        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 500);

		let section = $.attr(this, 'href');
		pageChange(section);
		
        return false;
    });

	//슬라이드 했을때 작대기 애니메이션
    $(window).scroll(function () {

        var height = $(document).scrollTop();

        var hz0 = $("#section00").offset().top;
        var hz1 = $("#section01").offset().top;
        var hz2 = $("#section02").offset().top;
        var hz3 = $("#section03").offset().top;
        var hz4 = $("#section04").offset().top;
		let section = $.attr(this, 'href');
		
        $('.page_nav li').removeClass('active');
	
		if (page == 1) {
			$('.page_nav li:nth-child(1)').addClass('active');
		} else if (page == 2) {
            $('.page_nav li:nth-child(2)').addClass('active');
        } else if (page == 3) {
            $('.page_nav li:nth-child(3)').addClass('active');
        } else if (page == 4) {
            $('.page_nav li:nth-child(4)').addClass('active');
        } else if (page == 5) {
            $('.page_nav li:nth-child(5)').addClass('active');
        }
    });
});