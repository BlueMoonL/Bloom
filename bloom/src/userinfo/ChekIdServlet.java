package userinfo;

import java.awt.Window;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.w3c.dom.Document;

@WebServlet("/signUp")
public class ChekIdServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
	 	UserRepository repo = new UserRepository();
	 	IUserService service = new UserService(repo);
		
	 	String userid = req.getParameter("userid");
	 	System.out.println(userid);
		int result = -1;
		try {
			result = repo.idDuplicateCheck(userid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(result);
		PrintWriter pw = resp.getWriter();
		pw.print(result);
			
	}
}
