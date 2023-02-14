
<%@page import="java.awt.Window"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="userinfo.UserRepository"%>
<%@ page import="userinfo.UserService"%>
<%@ page import="userinfo.IUserService"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
 	UserRepository repo = new UserRepository();
 	IUserService service = new UserService(repo);
	
 	String userid = request.getParameter("userid");
	int result = repo.idDuplicateCheck(userid);


%>