
<%@page import="java.io.PrintWriter"%>
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
 	System.out.println(userid);
	int result = repo.idDuplicateCheck(userid);
	PrintWriter pw = response.getWriter();
	pw.print(result);
%>