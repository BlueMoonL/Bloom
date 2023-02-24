//$(document).ready(function(){
//  $('.test-list').slick({
//	dots: true,
//    infinite: true,
//    slidesToShow: 3,
//    slidesToScroll: 1,
//    arrows: true,
//    prevArrow: '<button type="button" class="slick-prev"><i class="fas fa-chevron-left"></i></button>',
//    nextArrow: '<button type="button" class="slick-next"><i class="fas fa-chevron-right"></i></button>'
//  });
//});
$('.test-list').slick({
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  centerMode: true,
  variableWidth: true,
  prevArrow: $('.prev-btn'),
  nextArrow: $('.next-btn')
});