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
	
	public static int UpdateStudentProfile(StudentProfileBean bean, int StudentId)
	{
		int success= 0;
		try
		{
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps= null;
			ps = con.prepareStatement("UPDATE tblStudent SET Email=?,Password=?,FirstName=?,LastName=?,DateOfBirth=?,Sex=?,City=?,Address=?,PostalCode=?,Phone=?,StudentType=?,Subject=?,Class=?,LessonType=?,Description=?,Image=? where StudentId=?");
			
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
			ps.setInt(17, StudentId);
						
			success =	ps.executeUpdate();
		}
		catch (Exception e)
		{
			
		}
		return success;
	}
	
}
