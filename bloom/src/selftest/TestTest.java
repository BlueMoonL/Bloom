package selftest;

import java.sql.SQLException;
import java.util.List;

public class TestTest {
	public static void main(String[] args) throws SQLException {
		
		TestRepositoryImpl repo = new TestRepositoryImpl();
		
		List<String> question = repo.selectBAI();
		System.out.println(question.get(12));
	}
}
