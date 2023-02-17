import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/flower")
public class FlowerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ApiExplorer a = new ApiExplorer();
		Random random = new Random();
		int r = random.nextInt(366) + 1;
		Flower f = a.RandomFlower(r);

		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(f);
		
		resp.setContentType("application/json");
		PrintWriter pw = resp.getWriter();
        pw.println(json);
        pw.flush();
	}

}
