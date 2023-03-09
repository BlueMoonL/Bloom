package userinfo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/joinUser")
public class InsertIDServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		BufferedReader reader = req.getReader();
		StringBuilder sb = new StringBuilder();
		ObjectMapper mapper = new ObjectMapper();
		
		String line;
		while( (line = reader.readLine()) != null) {
			sb.append(line);
		}
		
		JsonNode nood = mapper.readTree(sb.toString());
		String id = nood.get("id").asText();
	 	String pw = nood.get("pw1").asText();
	 	String name = nood.get("userName").asText();
	 	String qna = nood.get("qna").asText();
	 	String email = nood.get("userEmail").asText();
		
	 	System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		System.out.println("이름 : " + name);
		System.out.println("이메일 : " + email);
	 	
		UserRepository repo = new UserRepository();
	 	IUserService service = new UserService(repo);
		
	 	int result = service.addUser(id, pw, name, qna, email);
	 	
		PrintWriter printWriter = resp.getWriter();
		printWriter.print(result);
	}
}
