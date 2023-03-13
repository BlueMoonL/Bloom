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
	public int selectUserNo(String userId) {

		String sql = "SELECT no FROM bloom.user WHERE id = ?";
		int userNo = 0;

		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setString(1, userId);

			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					userNo = rs.getInt("no");
				}
			}
			return userNo;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return -1;
	}

	@Override
	public List<String> selectBDI() {

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
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<String> selectBAI() {
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
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int insertUsersTest(UsersTest user) {

		String sql = "INSERT INTO bloom.userstest (userNo, testNo) VALUES (?, ?)";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, user.getUserNo());
			stmt.setInt(2, user.getTestNo());

			return stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;

	}

	@Override
	public int[] insertUserTestAnswer(List<UserTestAnswer> testList) {

		String sql = "INSERT INTO bloom.usertestanswer (userNo, AnswerNo, score) VALUES (?, ?, ?)";
		Connection conn;
		try {
			conn = ConnectionProvider.getConnection();
			try (PreparedStatement stmt = conn.prepareStatement(sql)) {

				conn.setAutoCommit(false);

				for (UserTestAnswer answer : testList) {
					stmt.setInt(1, answer.getUserNo());
					stmt.setInt(2, answer.getAnswerNo());
					stmt.setInt(3, answer.getScore());

					stmt.addBatch();
				}

				int[] result = stmt.executeBatch();
				conn.commit();

				return result;
			} catch (SQLException e) {
				e.printStackTrace();
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			} finally {
				ConnectionProvider.closeConnection(conn);
			}
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
		return null;
	}

	@Override
	public int insertTestResult(TestResult result) {

		String sql = "INSERT INTO bloom.testresult (userNo, testNo, score) VALUES (?, ?, ?)";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, result.getUserNo());
			stmt.setInt(2, result.getTestNo());
			stmt.setInt(3, result.getScore());

			return stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return -1;
	}
}
