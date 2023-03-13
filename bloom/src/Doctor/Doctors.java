package Doctor;

import java.sql.Blob;

public class Doctors {
	String name;
	String comment;
	String career;
	String education;
	Blob image;
	int pk;

	public Doctors(String name, String comment, String career, String education, Blob image, int pk) {
		super();
		this.name = name;
		this.comment = comment;
		this.career = career;
		this.education = education;
		this.image = image;
		this.pk = pk;
	}

	public int getPk() {
		return pk;
	}

	public void setPk(int pk) {
		this.pk = pk;
	}

	public Doctors() {
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String geteducation() {
		return education;
	}

	public void seteducation(String education) {
		this.education = education;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

}
