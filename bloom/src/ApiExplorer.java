import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Blob;
import java.util.Random;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;

import java.io.BufferedReader;
import java.io.IOException;

public class ApiExplorer {
	public Flower RandomFlower(int r) throws IOException { // r : 1부터 366까지 중 랜덤 수
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/1390804/NihhsTodayFlowerInfo01/selectTodayFlowerView01"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8")
				+ "=AspkMne7vEk%2BWJQ5WiMkA9zS3ldH89v5JEGeBkRKomgpUwsmO%2FSx0DKepJ%2FcvJlCABj4UylR8G%2B%2FENW0N0dJ6Q%3D%3D"); //서비스 키
		urlBuilder.append(															// String으로 변환(오늘의 꽃 인덱스)
				"&" + URLEncoder.encode("dataNo", "UTF-8") + "=" + URLEncoder.encode(String.valueOf(r), "UTF-8"));
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		BufferedReader rd;
		
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();

		
		// xml 텍스트 양식 받아온거 json으로 변환
		XmlMapper xmlMapper = new XmlMapper();
		ObjectMapper mapper = new ObjectMapper();
		Object obj = xmlMapper.readValue(sb.toString(), Object.class);
		String json = mapper.writeValueAsString(obj);
		
		JsonNode rootNode = mapper.readTree(json);
	
		// json 텍스트에서 원하는 값만 가져와서 객체로 만들기
		String dataNo = rootNode.get("root").get("result").get("dataNo").asText();
		String flowNm = rootNode.get("root").get("result").get("flowNm").asText();
		String flowLang = rootNode.get("root").get("result").get("flowLang").asText();
		String imageUrl = rootNode.get("root").get("result").get("imgUrl1").asText();
		
		return new Flower(dataNo, flowNm, flowLang, imageUrl);
	}
}
