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
		}
		JsonNode nood = mapper.readTree(sb.toString());
		String userID = nood.get("userID").asText();
		String userPW = nood.get("userPW").asText();
	
	 	UserRepository repo = new UserRepository();
	 	int userNo = repo.whatMyNo(userID);
	 	
	 	int result = 0;
	 	try {
			result = repo.loginUser(userID, userPW);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	 	PrintWriter pw = resp.getWriter();
	 	
	 	if (result == 1) {
			HttpSession session = req.getSession(true);
			session.setAttribute("login", userID);
			session.setAttribute("userNo", userNo);
			session.setAttribute("result", result);
			JSONObject json = new JSONObject(sb.toString());
			json.put("result", result);
			pw.print(json.toString());
		} else {
			JSONObject json = new JSONObject(sb.toString());
			json.put("result", result);
			
			
			pw.print(json.toString());
		}
		
	}	
	
}
