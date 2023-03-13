package Doctor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.ConnectionProvider;

public class DtdetailRepository implements IDtdetailRepository {

	@Override
	public List<Dtdetail> showDetail(int pk) throws SQLException {
		ArrayList<Dtdetail> list = new ArrayList<Dtdetail>();
		String querys = "select detail FROM bloom.dtdetail where pk = ? ";
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement stmt = conn.prepareStatement(querys);) {
			stmt.setInt(1, pk);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				Dtdetail dt = new Dtdetail();
				dt.setPk(pk);
				dt.setDetail(rs.getString("detail"));
				list.add(dt);
				return list;
			} else {
				return null;
			}

		}
	}
}