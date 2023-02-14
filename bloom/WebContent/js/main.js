$(function () {
    $('#header .bar a').on('click', function () {
        $('#header .bar').toggleClass('on');
    });
    $('#section01 .main_slide').slick({
        dot: false,
        autoplay: true,
        autoplaySpeed: 4000,
        arrows: false,
        pauseOnFocus: false,
        pauseOnHover: false,
    })
});