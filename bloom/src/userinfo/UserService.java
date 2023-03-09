package userinfo;
import java.sql.SQLException;
public class UserService implements IUserService {
	private IUserRepository repo;
	public UserService(IUserRepository repo) {
		this.repo = repo;
	}
	@Override
	public int addUser(String id, String pw, String name, String qna, String email) {
		try {
			return repo.addUser(id, pw, name, qna, email);
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
}