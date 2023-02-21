package Doctor;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.ConnectionProvider;

public class DoctorRepository implements IDoctorRepository {

	@Override
	// 닥터 추가하기
	public int adddoctor(String name, String comment, String career, String education, Blob image, int pk) throws SQLException {
		String query = "INSERT INTO bloom.user (name, comment, career, education,image,pk) VALUES (?, ?, ?, ?, ?,?)";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, name);
			stmt.setString(2, comment);
			stmt.setString(3, career);
			stmt.setString(4, education);
			stmt.setBlob(5, image);
			stmt.setInt(6, pk);

			return stmt.executeUpdate();
		}

	}

	public List<Doctors> select() throws SQLException {
		ArrayList<Doctors> list = new ArrayList<Doctors>();
		// 닥터의 값 가져오기
		String querys = "SELECT * FROM bloom.doctor";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(querys);) {
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Doctors d = new Doctors();
				d.setName(rs.getString(1));
				d.setComment(rs.getString(2));
				d.setCareer(rs.getString(3));
				d.setEsducation(rs.getString(4));
				d.setImage(rs.getBlob(5));
				d.setPk(rs.getInt(6));
				list.add(d);

			}
		}
		return list;
	}

}
