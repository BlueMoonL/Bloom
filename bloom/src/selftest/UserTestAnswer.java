package selftest;

public class UserTestAnswer {
	private int userNo;
	private int AnswerNo;
	private int score;
	
	public UserTestAnswer(int userNo, int answerNo, int score) {
		super();
		this.userNo = userNo;
		AnswerNo = answerNo;
		this.score = score;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getAnswerNo() {
		return AnswerNo;
	}

	public void setAnswerNo(int answerNo) {
		AnswerNo = answerNo;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "UserTestAnswerDAO [userNo=" + userNo + ", AnswerNo=" + AnswerNo + ", score=" + score + "]";
	}
}
