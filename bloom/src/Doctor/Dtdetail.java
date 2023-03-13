package Doctor;

public class Dtdetail {
	int pk;
	String detail;

	public Dtdetail(int pk, String detail) {
		super();
		this.pk = pk;
		this.detail = detail;
	}

	public Dtdetail() {
	}

	public int getPk() {
		return pk;
	}

	public void setPk(int pk) {
		this.pk = pk;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String toString() {
		return "Dtdetail [pk=" + pk + ", detail=" + detail + "]";
	}
}
