package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentProfileDao {

	public static StudentProfileBean GetStudent(int StudentId){
		
		StudentProfileBean obj = new StudentProfileBean();
		try
			{
				Connection con = ConnectionProvider.getCon();
				PreparedStatement ps= null;
				ps = con.prepareStatement("SELECT * FROM tblstudent where StudentId =?");
				
				ps.setInt(1, StudentId);
				
				ResultSet rs=ps.executeQuery();
				
				while(rs.next())
				{
					obj.setEmail(rs.getString("Email"));
					obj.setPassword(rs.getString("Password"));
					obj.setFirstname(rs.getString("FirstName"));
					obj.setLastname(rs.getString("LastName"));
					obj.setBirthday(rs.getString("DateOfBirth"));
					obj.setGender(rs.getString("Sex"));
					obj.setCity(rs.getString("City"));
					obj.setAddress(rs.getString("Address"));
					obj.setPostalcode(rs.getString("PostalCode"));
					obj.setPhonenumber(rs.getString("Phone"));
					obj.setStudenttype(rs.getString("StudentType"));
					obj.setSubject(rs.getString("Subject"));
					obj.setClasss(rs.getString("Class"));
					obj.setLessontype(rs.getString("LessonType"));
					obj.setAdditionalinformation(rs.getString("Description"));
					obj.setPhotograph(rs.getString("Image"));
					
				}		
			}
			catch(Exception e)
			{
				
			}
			
		return obj;	
				
	}
	
	public static boolean UpdateStudentProfile(StudentProfileBean bean)
	{
		boolean status= false;
		try
		{
			
		}
		catch(Exception e)
		{}
		
		return status;
	}
	
}
