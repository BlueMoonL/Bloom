package selftest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.ConnectionProvider;

public class SelfTestRepositoryImpl implements SelfTestRepository {

	@Override
	public List<String> selectBDI() throws SQLException {
		
		String sql = "SELECT question FROM bloom.bdi";
		List<String> question = new ArrayList<>();
		
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					question.add(rs.getString("question"));
				}
			}
			
			return question;
		}
	}

	@Override
	public List<String> selectBAI() throws SQLException {
		String sql = "SELECT question FROM bloom.bai";
		List<String> question = new ArrayList<>();
		
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					question.add(rs.getString("question"));
				}
			}
			
			return question;
		}
	}

	@Override
	public int insertUsersTest() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertUserTestAnswer() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertTestResult() {
		// TODO Auto-generated method stub
		return 0;
	}

}
