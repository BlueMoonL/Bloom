package userinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import dbutil.ConnectionProvider;

public class UserRepository implements IUserRepository {
	@Override
	public int addUser(String id, String pw, String name, String email) throws SQLException {
		String query = "INSERT INTO bloom.user (id, pw, name, email) VALUES (?, ?, ?, ?)";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, id);
			stmt.setString(2, pw);
			stmt.setString(3, name);
			stmt.setString(4, email);
			
			return stmt.executeUpdate();
		}
	}
	public int idDuplicateCheck(String id) throws SQLException {
		String query = "SELECT count(*) FROM bloom.user WHERE id = ?";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, id);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					int result  = rs.getInt("count(*)");
					return result;
				}
			}
		}
		return 0;
	}
	@Override
	public int loginUser(String id, String pw) throws SQLException {
		String query = "SELECT count(*) FROM bloom.user WHERE id = ? and pw = ?";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, id);
			stmt.setString(2, pw);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					int result  = rs.getInt("count(*)");
					return result;
				}
			}
		}
		return 0;
	}
	@Override
	public String findeUser(String id) throws SQLException {
		String query = "SELECT name FROM bloom.user WHERE id = ?";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, id);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					String result  = rs.getString("name");
					return result;
				}
			}
		}
		return null;
	}
	@Override
	public int changePw(String id, String pw) throws SQLException{
		String query = "UPDATE bloom.user set pw = ? where id = ?";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, pw);
			stmt.setString(2, id);
			return stmt.executeUpdate();
		}
	} 
}
















