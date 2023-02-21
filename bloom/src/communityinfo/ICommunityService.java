package communityinfo;

import java.sql.Connection;
import java.util.List;

public interface ICommunityService {
	int addDetail(Connection conn, Community community);
	
	List<Community> select(Connection conn);
	
	Community selectByNo(Connection conn, int no);
	
	int update(Connection conn, Community community);
	
	int delete(Connection conn, int no);
}
