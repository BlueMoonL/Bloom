package Doctor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/dtdetail/*")
public class DtdetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setHeader("Content-Type", "application/json; charset=utf-8");
		DtdetailRepository dt = new DtdetailRepository();
		List<Dtdetail> detaillist = null;
		ObjectMapper mapper = new ObjectMapper();
		Dtdetail d = new Dtdetail();

		try {

			detaillist = dt.showDetail(d.getPk());
			String json = mapper.writeValueAsString(detaillist);
			System.out.println(json);

			PrintWriter pw = resp.getWriter();
			pw.println(json);

			pw.flush();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
