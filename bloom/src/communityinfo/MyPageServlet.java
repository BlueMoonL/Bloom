package communityinfo;

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

import userinfo.UserRepository;

@WebServlet("/mypage/community")
public class MyPageServlet extends HttpServlet {
	private CommunityRepository cr;
	private UserRepository ur;
	@Override
	public void init() throws ServletException {
		cr = new CommunityRepository();
		ur = new UserRepository();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("login");
		System.out.println("마이페이지에서 id :" + userId);
		int userNo = ur.whatMyNo(userId);
		System.out.println(userNo);

		List<Community> list = cr.readWithMyNo(userNo);
		System.out.println("마이페이지에서 id로 자기가 쓴 커뮤니티 조회" + list);
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(list);
		
		PrintWriter pw = resp.getWriter();
		pw.print(json);
		pw.flush();
	}
	
	
}
