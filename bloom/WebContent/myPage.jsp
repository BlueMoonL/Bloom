<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>my page</title>
    <link rel="stylesheet" href="./css/myPage.css" />
    <link rel="stylesheet" href="./css/common.css" />
    <link rel="stylesheet" href="./css/basic.css" />
    <link rel="stylesheet" href="./css/font.css" />
  </head>
  <body>
    <div class="inner">
      <div id="myPage">
        <div id="myPage_header">
          <label>나의 공간</label>
        </div>

        <div id="container">
          <div id="profile">
            <div id="user">
              <label>프로필</label>
            </div>

            <div id="user">
              <div id="user-left">
                <label>아이디</label><br />
                <label>이름</label> <br />
                <label>비밀번호</label> <br />
              </div>

              <div id="user-right">
                <label>pgy</label><br />
                <label>박가영</label><br />
                <label>ㅇㅇ</label><br />
              </div>
            </div>

            <div id="button-change">
              <button id="change">수정하기</button>
            </div>
          </div>
        </div>
        <div id="container-second">
          <div id="box-bottom">
            <label>나의</label><br />
            <label>우울 척도는</label><br />
            <label>100점</label><br />
            <div id="button-again">
              <button id="change">수정하기</button>
            </div>
          </div>

          <div id="box-bottom">
            <label>나의</label><br />
            <label>불안 척도는</label><br />
            <label>100점</label><br />
            <div id="button-again">
              <button id="change">수정하기</button>
            </div>
          </div>

          <div id="box-bottom">
            <label>나의</label><br />
            <label>???는</label><br />
            <label>100점</label><br />
            <div id="button-again">
              <button id="change">수정하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>