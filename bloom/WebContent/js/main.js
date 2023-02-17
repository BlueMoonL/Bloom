$(function () {
    $('.main_side_nav .page_nav li a').click(function () {
        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 500);
        return false;
    });
});

$(window).scroll(function () {

    var height = $(document).scrollTop();
    var hz1 = $("#section01").offset().top;
    var hz2 = $("#section02").offset().top;
    var hz3 = $("#section03").offset().top;
    var hz4 = $("#section04").offset().top;

    if (height == hz1) {
        $('.page_nav li:nth-child(1) a').addClass('active');
        $('.page_nav li:nth-child(1)').addClass('active');
    } else if (height == hz2) {
        $('.page_nav li:nth-child(2) a').addClass('active');
        $('.page_nav li:nth-child(2)').addClass('active');
    } else if (height == hz3) {
        $('.page_nav li:nth-child(3) a').addClass('active');
        $('.page_nav li:nth-child(3)').addClass('active');
    } else if (height == hz4) {
        $('.page_nav li:nth-child(4) a').addClass('active');
        $('.page_nav li:nth-child(4)').addClass('active');
        $('.main_side_nav').removeClass('on');
    } else {
        $('.page_nav li a').addClass('active');
        $('.page_nav li').addClass('active');

    }
});