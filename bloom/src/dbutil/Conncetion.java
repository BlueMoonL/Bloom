package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conncetion {
	public static void main(String[] args) {
		// 데이터베이스 서버에 접속(연결)을 원함.
		// 주소
		String url = "jdbc:mysql://192.168.0.113/bloom";
		// 아이디
		String id = "team2";
		// 비밀번호
		String password = "team2";
		
		// 드라이버 적재(클래스 로드)
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이버 적재 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 찾을 수 없습니다.");
		}
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, id, password);
			System.out.println("데이터베이스 연결 성공");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("접속(연결)에 실패하였습니다.");
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}