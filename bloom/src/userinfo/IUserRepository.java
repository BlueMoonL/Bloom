package userinfo;

import java.sql.SQLException;
public interface IUserRepository {
	int addUser(String id, String pw, String name, String email) throws SQLException;
}