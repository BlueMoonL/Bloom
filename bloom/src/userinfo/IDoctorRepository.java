package userinfo;

import java.sql.SQLException;

import java.sql.Blob;

public interface IDoctorRepository {
	int adddoctor(String name, String comment, String career, String education, Blob image , int pk) throws SQLException;

}
