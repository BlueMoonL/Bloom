
public class Flower {
	private String dataNo;
	private String flowNm;
	private String flowLang;
	private String imageUrl;
	
	public Flower() {}

	@Override
	public String toString() {
		return "Flower [dataNo=" + dataNo + ", flowNm=" + flowNm + ", flowLang=" + flowLang + ", imageUrl=" + imageUrl
				+ "]";
	}

	public Flower(String dataNo, String flowNm, String flowLang, String imageUrl) {
		super();
		this.dataNo = dataNo;
		this.flowNm = flowNm;
		this.flowLang = flowLang;
		this.imageUrl = imageUrl;
	}

	public String getDataNo() {
		return dataNo;
	}

	public void setDataNo(String dataNo) {
		this.dataNo = dataNo;
	}

	public String getFlowNm() {
		return flowNm;
	}

	public void setFlowNm(String flowNm) {
		this.flowNm = flowNm;
	}

	public String getFlowLang() {
		return flowLang;
	}

	public void setFlowLang(String flowLang) {
		this.flowLang = flowLang;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	
	
}
