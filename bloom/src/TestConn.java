import java.sql.SQLException;

import userinfo.UserRepository;
import userinfo.UserService;

public class TestConn {

	public static void main(String[] args) throws SQLException {
		UserRepository ur = new UserRepository();
		try {
			int result = ur.idDuplicateCheck("ppp");
			System.out.println(result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		UserRepository ur = new UserRepository();
//		UserService us = new UserService(ur);
//		
//		int result = us.addUser("qqq", "asdf", "asdf", "asdf@asdf");
//		System.out.println(result);

	}

}
