package selftest;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SelfTestServiceImpl implements SelfTestService{

	private SelfTestRepository repo;
	
	public SelfTestServiceImpl(SelfTestRepositoryImpl repo) {
		this.repo = repo;
	}
	
	@Override
	public List<String> showBDI() {

		return repo.selectBDI();
	}
	
	public int findUserNo(String userId) {
		
		return repo.selectUserNo(userId);
	}

	@Override
	public int inputUsersTest(int userNo,int  testNo) {
		
		UsersTest user = new UsersTest(userNo, testNo);
		return repo.insertUsersTest(user);
	}

	@Override
	public int[] inputUserTestAnswer(int userNo, List<Integer> BDIScore){

		List<UserTestAnswer> answerList = new ArrayList<>();
		
		for (int i = 0; i < BDIScore.size(); i++) {
			
			answerList.add(new UserTestAnswer(userNo, (i + 1), BDIScore.get(i)));
		}
		
		return repo.insertUserTestAnswer(answerList);
	}

	@Override
	public int inputTestResult(int userNo, int testNo, List<Integer> BDIScore) {
		
		int totalScore = 0;
		
		for (int elem : BDIScore) {
			if (elem == -1) continue;
			else {
				totalScore += elem;
			}
		}
		TestResult result = new TestResult(userNo, testNo, totalScore);
		
		return repo.insertTestResult(result);
	}
}
