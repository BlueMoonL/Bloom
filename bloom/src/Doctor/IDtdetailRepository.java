package Doctor;

import java.sql.SQLException;
import java.util.List;

public interface IDtdetailRepository {

	List<Dtdetail> showDetail(int pk) throws SQLException;
}
