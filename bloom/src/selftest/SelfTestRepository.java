package selftest;

import java.sql.SQLException;
import java.util.List;

public interface SelfTestRepository {
	
	int selectUserNo(String userId);
	List<String> selectBDI();
	List<String> selectBAI();
	int insertUsersTest(UsersTest user);
	int[] insertUserTestAnswer(List<UserTestAnswer> testList);
	int insertTestResult(TestResult result);
}
