package userinfo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/joinUser")
public class InsertIDServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		resp.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:5500");
//		resp.setHeader("Access-Control-Allow-Methods", "POST");
//		resp.setHeader("Access-Control-Allow-Headers", "*");
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
	 	UserRepository repo = new UserRepository();
	 	IUserService service = new UserService(repo);
	 	
	 	String id = req.getParameter("id");
	 	String pw = req.getParameter("pw1");
	 	String name = req.getParameter("userName");
	 	String email = req.getParameter("userEmail");
	 	
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		System.out.println("이름 : " + name);
		System.out.println("이메일 : " + email);
		
	 	int result = service.addUser(id, pw, name, email);
	 	
	 	System.out.println("결과를 말해봐 "+result);
		PrintWriter printWriter = resp.getWriter();
		printWriter.print(result);
	
	
	
	
	
	
	}

}
