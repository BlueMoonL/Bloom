package selftest;

public class UsersTest {
	private int userNo;
	private int testNo;
	
	public UsersTest(int userNo, int testNo) {
		super();
		this.userNo = userNo;
		this.testNo = testNo;
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

	@Override
	public String toString() {
		return "UsersTestDAO [userNo=" + userNo + ", testNo=" + testNo + "]";
	}
}
