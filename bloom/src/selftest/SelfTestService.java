package selftest;

import java.sql.SQLException;
import java.util.List;

public interface SelfTestService {
	
	int findUserNo(String userId);
	List<String> showBDI();
	int inputUsersTest(int userNo,int  testNo);
	int[] inputUserTestAnswer(int userNo, List<Integer> BDIScore);
	int inputTestResult(int userNo, int testNo, List<Integer> BDIScore);
	
}
