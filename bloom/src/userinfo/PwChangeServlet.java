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

@WebServlet("/pwChange")
public class PwChangeServlet extends HttpServlet {

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
			System.out.println("라인" + line);
		}
		JsonNode nood = mapper.readTree(sb.toString());
		String originalPw = nood.get("pw1").asText();
		String pwChange1 = nood.get("pw2").asText();
		String pwChange2 = nood.get("pw3").asText();
		
		HttpSession session = req.getSession();
		PrintWriter pw = resp.getWriter();
		String userId = (String) session.getAttribute("login");
		
		UserRepository ur = new UserRepository();
		try {
			int result = ur.loginUser(userId, originalPw);
			if (result == 1) {
				if(pwChange1.equals(pwChange2)) {
					int changeResult = ur.changePw(userId, pwChange1);
					System.out.println(changeResult);
					JSONObject json = new JSONObject(sb.toString());
					json.put("changeResult", changeResult);					
					pw.print(json.toString());					
				} else {
					JSONObject json = new JSONObject(sb.toString());
					json.put("changeResult", 0);					
					pw.print(json.toString());				
				}
			} else {
				JSONObject json = new JSONObject(sb.toString());
				json.put("changeResult",-1);					
				pw.print(json.toString());	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}