<%@page import="userinfo.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ include file="./header.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>my page</title>
    <link rel="stylesheet" href="./css/myPage.css" />
    <link rel="stylesheet" href="./css/common.css" />
    <link rel="stylesheet" href="./css/basic.css" />
    <link rel="stylesheet" href="./css/font.css" />
    <link rel="stylesheet" href="./css/confirm.css" />
    
    <script type="text/javascript" src="./js/side_main.js" defer></script>
	<script type="text/javascript" src="./js/login.js" defer></script>
	<script type="text/javascript" src="./js/logout.js" defer></script>
	<script type="text/javascript" src="./js/join.js" defer></script>
	<script type="text/javascript" src="./js/today-flower.js" defer></script>
	<script type="text/javascript" src="./js/myPage.js" defer></script>
	<script src="./js/include.js"></script>
	
  </head>
  <body>
    <div class="inner">
      <div id="myPage">
        <div id="myPage_header">
          <label>나의 정보</label>
        </div>

        <div id="container">
        	
        	<div id="profileLeft">
        		<span></span>
        	</div>
        
          <table id="profile">
            <tr>
            	<th>아이디</th>
            	    <%
						String userid = (String) session.getAttribute("login");
						if (userid != null) {
					%>
            	<td><%= userid %></td>
            		<%
						}
            		%>
            	<td id="btn"></td>
            <tr>
            <tr>
            	<th>이름</th>
            		<%
						UserRepository ur = new UserRepository();
						String userName = ur.findeUser(userid);
						if (userName != null) {
					%>   
            	<td><%= userName %></td>
            		<%
						}
            		%>
				<td id="btn"></td>
            <tr>
            <tr>
            	<th>비밀번호</th>
            	<td>**********</td>
				<td id="btn"><button id="pwChange">수정하기</button></td>
            <tr>
             <tr>
            	<th></th>
            	<td></td>
				<td></td>
            <tr>
          </table>
          
        </div>
        
        </div>
        
        <div id="myPage_header">
          <label>나의 검사 결과</label>
        </div>
        
        <div id="container-second">
          <div id="box-bottom">
            <label>나의</label><br />
            <label>우울 척도는</label><br />
            <label>100점</label><br />
            <div id="button-again">
              <button id="change">수정하기</button><br/>
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
    
    <div class="background-confirm">
	<div class="confirm-box">
		<div class="confirm-title">
			<strong id="join-name">OOO</strong> <span>님, 환영해요!</span>
		</div>
		<div class="confirm-subtitle">
			<span id="subtitle">회원가입이 완료되었습니다.</span>
		</div>
		<div class="confirm-action">
			<button type="button" id="confirm-button">닫기</button>
		</div>
	</div>
</div>
    
  </body>
</html>
