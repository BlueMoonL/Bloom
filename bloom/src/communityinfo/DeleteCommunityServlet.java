package communityinfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbutil.ConnectionProvider;

@WebServlet("/showcommunitydelete")
public class DeleteCommunityServlet extends HttpServlet {
	private ICommunityRepository irepo;
	private CommunityRepository repo;
	private int a;

	@Override
	public void init() throws ServletException { 
		irepo = new CommunityService(new CommunityRepository());
		repo = new CommunityRepository();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Connection conn = null;
		List<Integer> noList = new ArrayList<Integer>();
		List<Community> list = irepo.read();
		for (Community community : list) {
			noList.add(community.getNo());
		}
		for (int i = 0; i < list.size(); i++) {
			a = noList.get(i);
		}
		int no = a;
		System.out.println(no);
		try {
			conn = ConnectionProvider.getConnection();
			int result = repo.delete(conn, no);
			System.out.println("AutoNo값 : " + result);
			irepo.delete(no);
			
			resp.sendRedirect("./community.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
