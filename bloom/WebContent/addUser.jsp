
<%@page import="java.awt.Window"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="userinfo.UserRepository"%>
<%@ page import="userinfo.UserService"%>
<%@ page import="userinfo.IUserService"%>
<%
	String method = request.getMethod();
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
 	UserRepository repo = new UserRepository();
 	IUserService service = new UserService(repo);
	

	
	if (method.equalsIgnoreCase("get")) {
		//response.sendRedirect("error405.jsp");
		System.out.println("get 방식의 요청");
	} else {
		
		String id = request.getParameter("id");
		String pw1 = request.getParameter("pw1");
		String pw2 = request.getParameter("pw2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		if (!pw1.equals(pw2)) {
			System.out.println("비번 다름");
			System.out.println("비밀번호" + pw1);
			System.out.println("비밀번호" + pw2);
		} else if (id == null || pw1 == null || name == null) {
			//response.sendRedirect("error400.jsp");
			System.out.println("가져오기 실패");
			System.out.println("아이디" + id);
			System.out.println("비밀번호" + pw1);
			System.out.println("이름" + name);
		} else {
			
			System.out.println("가져오기 성공");
			System.out.println("아이디" + id);
			System.out.println("비밀번호" + pw1);
			System.out.println("비밀번호" + pw2);
			System.out.println("이름" + name);
 			int result = service.addUser(id, pw1, name, email);
 			System.out.println(result);
			request.setAttribute("message", result == 1 ? "성공적으로 추가 완료" : "추가 실패");
			
			//request.getRequestDispatcher("/WEB-INF/result.jsp").forward(request, response);
		}
	}
%>