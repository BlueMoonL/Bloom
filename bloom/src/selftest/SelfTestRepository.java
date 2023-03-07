package selftest;

import java.sql.SQLException;
import java.util.List;

public interface SelfTestRepository {
	
	List<String> selectBDI() throws SQLException;
	List<String> selectBAI() throws SQLException;
	int insertUsersTest();
	int insertUserTestAnswer();
	int insertTestResult();
}
