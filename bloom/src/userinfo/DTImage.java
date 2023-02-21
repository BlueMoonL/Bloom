package userinfo;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.StringTokenizer;

import javax.imageio.ImageIO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dtimage/*")
public class DTImage extends HttpServlet {
//쿼리파라미터로 주소값 다 다르게 설정하기 .. 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// 세부경로를 찾아주는 메서드
		
		String uri = req.getRequestURI();
		/// bloom/dtimage/1 뒤의 숫자를 기준으로 새로운 주소와 이미지를 설정하면 되나 ?
		String[] split = uri.split("/");
		// "/" 을 기준으로 마지막의 숫자만 뽑았다.
		String dbName = split[split.length - 1];
		System.out.println(dbName);

		String url = "jdbc:mysql://localhost:3306/bloom";

		String user = "root";
		String password = "root";
		Connection conn = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			String sql = "SELECT image FROM doctor WHERE pk = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, Integer.parseInt(dbName));
			ResultSet rs = stmt.executeQuery();
			byte[] imgBytes = null;

			if (rs.next()) {
				Blob blob = rs.getBlob("image");
				imgBytes = blob.getBytes(1, (int) blob.length());

				InputStream in = new ByteArrayInputStream(imgBytes);
				Image img = ImageIO.read(in);

				resp.setContentType("image/png");
				OutputStream out = resp.getOutputStream();
				ImageIO.write((BufferedImage) img, "png", out);
				out.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
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
	}
}