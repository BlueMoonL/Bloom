package communityinfo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutil.ConnectionProvider;

@WebServlet("/communitywrite")
public class InsertWriterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		int userNo = (int) session.getAttribute("userNo");
		System.out.println("인서트 유져 노 " + userNo);
		String title = req.getParameter("title");
		String detail = req.getParameter("detail");
		
		System.out.println("제목 : " + title);
		System.out.println("내용 : " + detail);
		
		CommunityRepository repo = new CommunityRepository();
		
		Community community = new Community();
		community.setUserNo(userNo);
		community.setTitle(title);
		community.setDetail(detail);
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			int result = repo.addDetail(conn, community);
			System.out.println("AutoNo값 : " + result);
			
			resp.sendRedirect("./community.jsp");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
			conn.close();
			} catch (SQLException e) {
				e.getMessage();
			}
		}
		
		
	}
}
