
var logout = document.getElementById("btn-logout").addEventListener("click", function () {
  fetch('http://localhost:8080/bloom/logout', {
    method: 'POST',
    credentials: 'same-origin' // 세션 쿠키를 전송하기 위해 설정
  })
  .then(response => {
    if (response.redirected) {
      location.href = "http://localhost:8080/bloom/index.jsp"; // 리다이렉트된 경우, 로그인 페이지로 이동
    } else {
      alert('로그아웃되었습니다.');
    }
  })
  .catch(error => {
    console.error(error);
    alert('오류가 발생했습니다.');
  });
});
