package selftest;

import java.sql.SQLException;
import java.util.List;

public interface SelfTestService {
	
	List<String> showBDI() throws SQLException;
}
