package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MessageStudentDao {
	public static int SaveStudentMessage (MessageStudentBean bean)
	{
		int success= 0;
		try
		{
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps= null;
			ps = con.prepareStatement("INSERT INTO tblstudentmessage (`StudentId`,`Message`,`TutorId`) VALUES (? ,?,?)");
			
			ps.setString(1, bean.getStudentid());
			ps.setString(2, bean.getMessages());
			ps.setInt(3, bean.getTutorid());
						
			success =	ps.executeUpdate();
		}
		catch (Exception e)
		{
			
		}
		return success;
	}
}
