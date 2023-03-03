package userinfo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@WebServlet("/login")
public class loginServlet extends HttpServlet{

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
			//System.out.println("라인" + line);
		}
		JsonNode nood = mapper.readTree(sb.toString());
		String userID = nood.get("userID").asText();
		String userPW = nood.get("userPW").asText();
		//System.out.println(userID);
		//System.out.println(userPW);
	
	 	UserRepository repo = new UserRepository();
	 	
	 	int result = 0;
	 	try {
			result = repo.loginUser(userID, userPW);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	 	//System.out.println(result);
	 	PrintWriter pw = resp.getWriter();
	 	//pw.print(result);
	 	
	 	if (result == 1) {
			HttpSession session = req.getSession(true);
			session.setAttribute("login", userID);
			session.setAttribute("password", userPW);
			session.setAttribute("result", result);
			
			JSONObject json = new JSONObject(sb.toString());
			json.put("result", result);
			
			pw.print(json.toString());
			
			//System.out.println("세션 생성, 로그인 완료");
		} else {
			JSONObject json = new JSONObject(sb.toString());
			json.put("result", result);
			
			pw.print(json.toString());
		}
		
	}	
	
}
