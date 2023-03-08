package selftest;

public class TestResult {
	private int userNo;
	private int testNo;
	private int score;
	
	public TestResult(int userNo, int testNo, int score) {
		super();
		this.userNo = userNo;
		this.testNo = testNo;
		this.score = score;
	}
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getTestNo() {
		return testNo;
	}
	public void setTestNo(int testNo) {
		this.testNo = testNo;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "TestResultDAO [userNo=" + userNo + ", testNo=" + testNo + ", score=" + score + "]";
	}
}
