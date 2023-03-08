package selftest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/BDIComplete")
public class BDICompleteServlet extends HttpServlet {

	SelfTestServiceImpl service;

	@Override
	public void init() throws ServletException {
		service = new SelfTestServiceImpl(new SelfTestRepositoryImpl());
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		BufferedReader reader = req.getReader();
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(reader);

		int testNo = Integer.parseInt(node.get("testNo").asText());

		JsonNode bdiScoreNode = node.get("BDIScore");
		List<Integer> BDIScore = new ArrayList<>();
		Iterator iter = bdiScoreNode.elements();
		while (iter.hasNext()) {

			String elem = iter.next().toString();
			char num = elem.charAt(1);

			System.out.println(elem);
			if (num == 0) {
				BDIScore.add(-1);
			} else {
				BDIScore.add(Character.getNumericValue(num));
			}
		}

		System.out.println(testNo);
		for (int i : BDIScore) {
			System.out.println(i);
		}

		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("login");
		int userNo = service.findUserNo(userId);

		int inputTest = service.inputUsersTest(userNo, testNo);

		int[] inputAnswer = service.inputUserTestAnswer(userNo, BDIScore);

		int inputResult = service.inputTestResult(userNo, testNo, BDIScore);
		
		PrintWriter pw = resp.getWriter();
		pw.println(inputTest);
		pw.println(inputAnswer);
		pw.println(inputResult);
		pw.flush();
	}
}
