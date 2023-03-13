package userinfo;

import java.sql.SQLException;
import java.util.List;
public interface IUserRepository {
	int addUser(String id, String pw, String name, String qna, String email) throws SQLException;
	int idDuplicateCheck(String id) throws SQLException;
	int loginUser(String id, String pw) throws SQLException;
	String findeUser(String id) throws SQLException;
	int changePw(String id, String pw) throws SQLException;
	List<TestResult> testResult(String id, String pw) throws SQLException;
	int whatMyNo(String id);
}