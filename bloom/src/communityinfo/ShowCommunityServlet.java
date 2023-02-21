package communityinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/community")
public class ShowCommunityServlet extends HttpServlet{
	private ICommunityRepository repo;
	
	@Override
	public void init() throws ServletException {
		repo = new CommunityService(new CommunityRepository());
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			List<Community> list = repo.read();
			
			System.out.println(list);
			
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(list);
			
			PrintWriter pw = resp.getWriter();
			pw.print(json);
			pw.flush();
		
	}
	
}
