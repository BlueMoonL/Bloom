package communityinfo;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dbutil.ConnectionProvider;

public class CommunityService implements ICommunityRepository {
	private ICommunityService service;

	public CommunityService(ICommunityService service) {
		super();
		this.service = service;
	}

	@Override
	public Community create(Community community) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			int key = service.addDetail(conn, community);
			conn.commit();
			
			community.setNo(key);
			return community;
		} catch (RuntimeException | SQLException e) {
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public List<Community> read() {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			return service.select(conn);
		} catch (RuntimeException | SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public Community update(Community community) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			service.update(conn, community);
			conn.commit();
			
			return community;
		} catch (RuntimeException | SQLException e) {
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public Community delete(int no) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			Community community = service.selectByNo(conn, no);
			if (community != null) {
			service.delete(conn, no);
			}
			conn.commit();
			
			return community;
				
		} catch (RuntimeException | SQLException e) {
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}







	
}
