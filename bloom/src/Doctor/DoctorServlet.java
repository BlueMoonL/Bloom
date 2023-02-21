package Doctor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

@WebServlet("/finddoctor")
public class DoctorServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		HttpServletResponse resp = (HttpServletResponse) response;
		resp.setHeader("Access-Control-Allow-Origin", "*");
		resp.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
		resp.setHeader("Access-Control-Allow-Headers", "*");

		resp.setCharacterEncoding("UTF-8");
		resp.setHeader("Content-Type", "application/json; charset=utf-8");
		// req가 요청이고 resp응답이지
		DoctorRepository dt = new DoctorRepository();

		List<Doctors> drList = null;
		ObjectMapper mapper = new ObjectMapper();
		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
		//json의 빈공간 (pk어트리뷰트 빈공간인데 무시하게함.)
		try {
			drList = dt.select();
			String json = mapper.writeValueAsString(drList);
			// 리포지토리에서 받은 닥터의값 list에 넣는거 메서드 호출하고 list에 다 담아서json으로 변경하기

			System.out.println(json);
			
			
			PrintWriter pw = resp.getWriter();
			// PrintWriter는 화가 , getWriter는 연필이다. 화가가 그릴 연필을 resp응답에서 받아오기! 연필줘!의 단계
			pw.println(json);
			// 화가는 받아온 연필로 json을 그리자. 바디에 그림을그린다.

			pw.flush();

			// 자원해제

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}