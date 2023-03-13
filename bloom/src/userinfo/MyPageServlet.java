package userinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.Session;

@WebServlet("/mypage")
public class MyPageServlet extends HttpServlet {
	UserRepository ur = new UserRepository();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		String id = (String) session.getAttribute("login");
		
		ObjectMapper mapper = new ObjectMapper();
		
		PrintWriter print = resp.getWriter();
		try {
			List<TestResult> list = ur.testResult(id);
			System.out.println("리스트 " + list.toString());
			String json = mapper.writeValueAsString(list);
			print.print(json);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
