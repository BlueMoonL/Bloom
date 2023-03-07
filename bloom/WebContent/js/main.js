$('.test-list').slick({
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  centerMode: true,
  variableWidth: true,
  prevArrow: $('.prev-btn'),
  nextArrow: $('.next-btn')
});

document.getElementById('bdi-test').addEventListener('click', e => {
	window.location = './bditest-page.jsp';
});