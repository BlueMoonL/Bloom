package selftest;

import java.sql.SQLException;
import java.util.List;

public class SelfTestServiceImpl implements SelfTestService{

	private SelfTestRepository repo;
	
	public SelfTestServiceImpl(SelfTestRepositoryImpl repo) {
		this.repo = repo;
	}
	
	@Override
	public List<String> showBDI() throws SQLException {

		return repo.selectBDI();
	}
}
