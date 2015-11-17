package bean;

import java.sql.*;


public class RegisterStudentDao {

	public static int RegisterStudent (RegisterStudentBean bean)
	{
		int success= 0;
		try
		{
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps= null;
			ps = con.prepareStatement("INSERT INTO tblStudent (`Email`,`Password`,`FirstName`,`LastName`,`DateOfBirth`,`Sex`,`City`,`Address`,`PostalCode`,`Phone`,`StudentType`,`Subject`,`Class`,`LessonType`,`Description`,`Image`) VALUES (? ,?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, bean.getEmail());
			ps.setString(2, bean.getPassword());
			ps.setString(3, bean.getFirstname());
			ps.setString(4, bean.getLastname());
			ps.setString(5, bean.getBirthday());
			ps.setString(6, bean.getGender());
			ps.setString(7, bean.getCity());
			ps.setString(8, bean.getAddress());
			ps.setString(9, bean.getPostalcode());
			ps.setString(10, bean.getPhonenumber());
			ps.setString(11, bean.getStudenttype());
			ps.setString(12, bean.getSubject());
			ps.setString(13, bean.getClasss());
			ps.setString(14, bean.getLessontype());
			ps.setString(15, bean.getAdditionalinformation());
			ps.setString(16, bean.getPhotograph());
						
			success =	ps.executeUpdate();
		}
		catch (Exception e)
		{
			
		}
		return success;
	}
}
