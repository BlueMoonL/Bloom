package communityinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.ConnectionProvider;

public class CommunityRepository implements ICommunityService {

	@Override
	public int addDetail(Connection conn, Community community) {
		String sql = "INSERT INTO bloom.community (title, detail) VALUES (?, ?);";
		try (PreparedStatement pstmt = conn.prepareStatement
				(sql, Statement.RETURN_GENERATED_KEYS)) {
			
			pstmt.setString(1, community.getTitle());
			pstmt.setString(2, community.getDetail());

			int result = pstmt.executeUpdate();
			if (result == 1) {
				try (ResultSet rs = pstmt.getGeneratedKeys()) {
					// 컬럼이 하나밖에 없을꺼라서 getInt(1)을 반환한다.
					rs.next();
					return rs.getInt(1);
				}
			} else {
				throw new RuntimeException("행이 생성되지 않았습니다.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("추가 작업 중 예외 발생", e);
		}
	}

	@Override
	public List<Community> select(Connection conn) {
		String sql = "SELECT * FROM bloom.community;";
		try (PreparedStatement pstmt = conn.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();) {
			List<Community> list = new ArrayList<>();
			while (rs.next()) {
				list.add(resultMapping(rs));
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("조회 작업 중 예외 발생", e);
		}
	}

	private Community resultMapping(ResultSet rs) throws SQLException {
		Community community = new Community();
		community.setTitle(rs.getString("title"));
		community.setDetail(rs.getString("detail"));
		return community;
	}

	@Override
	public Community selectByNo(Connection conn, int no) {
		String sql = "SELECT * FROM bloom.community WHERE no = ?;";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, no);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return resultMapping(rs);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("조회 작업 중 예외 발생", e);
		}
		return null;
	}

	@Override
	public int update(Connection conn, Community community) {
		String sql = "UPDATE bloom.community SET title = ?, detail = ? WHERE no = ?;";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, community.getTitle());
			pstmt.setString(2, community.getTitle());
			pstmt.setInt(3, community.getNo());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("수정 작업 중 예외 발생", e);
		}
	}

	@Override
	public int delete(Connection conn, int no) {
		String sql = "DELETE FROM bloom.community WHERE no = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, no);
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("삭제 작업 중 예외 발생", e);
		}
	}



}
