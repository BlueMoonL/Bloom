package userinfo;

public class TestResult {
	private int no;
	private int userNo;
	private int testNo;
	private int score;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public TestResult(int no, int userNo, int testNo, int score) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.testNo = testNo;
		this.score = score;
	}
	@Override
	public String toString() {
		return "TestResult [no=" + no + ", userNo=" + userNo + ", testNo=" + testNo + ", score=" + score + "]";
	}
	
	
}
