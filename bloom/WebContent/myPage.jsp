<%@page import="userinfo.TestResult"%>
<%@page import="java.util.List"%>
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
    
    <script type="text/javascript" src="./js/side_main.js" defer></script>
	<script type="text/javascript" src="./js/login.js" defer></script>
	<script type="text/javascript" src="./js/logout.js" defer></script>
	<script type="text/javascript" src="./js/join.js" defer></script>
	<script type="text/javascript" src="./js/today-flower.js" defer></script>
	<script type="text/javascript" src="./js/myPage.js" defer></script>
	<script type="text/javascript" src="./js/printMyPage.js" defer></script>
	<script src="./js/include.js"></script>
	
  </head>
  <body>
    <div class="inner">
      <div id="myPage">
        <div id="myPage_header">
          <label>나의 정보</label>
        </div>

        <div id="container">
        	
<!--         	<div id="profileLeft"> -->
<!--         		<span></span> -->
<!--         	</div> -->
        
          <table id="profile">
            <tr>
            	<th rowspan="10" class="profileBoxLeft">asdf</th>
            	<th rowspan="10" class="profileBoxLeft"></th>
            	<th class="profileBoxRight">아이디</th>
            	    <%
						String userid = (String) session.getAttribute("login");
						if (userid != null) {
					%>
            	<td class="profileBoxRight"><%= userid %></td>
            		<%
						}
            		%>
            	<td class="btn"></td>
            <tr>
            <tr>
            	<th class="profileBoxRight" >이름</th>
            		<%
						UserRepository ur = new UserRepository();
						String userName = ur.findeUser(userid);
						if (userName != null) {
					%>   
            	<td class="profileBoxRight"><%= userName %></td>
            		<%
						}
            		%>
				<td id="btn"></td>
            <tr>
            <tr>
            	<th class="profileBoxRight">비밀번호</th>
            	<td class="profileBoxRight">**********</td>
				<td id="btn"><button id="pwChange" >수정하기</button></td>
				
            <tr>
             <tr>
            	<th class="profileBoxRight"></th>
            	<td class="profileBoxRight"></td>
				<td ></td>
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
			
			<label id="status1"></label><br />	
           
            <div id="button-again">
              <button id="change">수정하기</button><br/>
            </div>
          </div>

          <div id="box-bottom">
            <label>나의</label><br />
            <label>불안 척도는</label><br />
            <label id="status2"></label><br />	
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
			<span>비밀번호 변경</span>
		</div>
		<div class="confirm-subtitle">
		<label id="pwlabel">안전한 비밀번호로 내정보를 보호하세요.</label><br>
		<br><br>		
		<input type="password" class="pwChange" id="pw1" maxlength="20" placeholder="현재 비밀번호" required><br>
		<input type="password" class="pwChange" id="newPw1" maxlength="20" placeholder="새 비밀번호" required><br>
		<input type="password" class="pwChange" id="newPw2" maxlength="20" placeholder="새 비밀번호 확인" required><br>
		</div>
		<div class="confirm-action">
			<button type="button" id="pw-change-button">확인</button>
			<button type="button" id="confirm-button">취소</button>
		</div>
	</div>
</div>
    
  </body>
</html>
