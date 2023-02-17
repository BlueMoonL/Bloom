package userinfo;

import java.sql.SQLException;
public interface IUserRepository {
	int addUser(String id, String pw, String name, String email) throws SQLException;
	int idDuplicateCheck(String id) throws SQLException;
	int loginUser(String id, String pw) throws SQLException;
}