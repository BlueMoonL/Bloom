package selftest;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/BDI")
public class BDITestServlet extends HttpServlet {

	SelfTestServiceImpl repo;
	
	@Override
	public void init() throws ServletException {
		repo = new SelfTestServiceImpl(new SelfTestRepositoryImpl());
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		try {
			List<String> list;
			list = repo.showBDI();
			
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(list);
			
			PrintWriter pw = resp.getWriter();
			pw.print(json);
			pw.flush();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
