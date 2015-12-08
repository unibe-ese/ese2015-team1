package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MessageTutorDao {
	
	public static int SaveTutorMessage (MessageTutorBean bean)
	{
		int success= 0;
		try
		{
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps= null;
			ps = con.prepareStatement("INSERT INTO tbltutormessage (`TutorId`,`Message`,`StudentId`) VALUES (? ,?, ?)");
			
			ps.setString(1, bean.getTutorid());
			ps.setString(2, bean.getMessages());
			ps.setInt(3, bean.getStudentid());
						
			success =	ps.executeUpdate();
		}
		catch (Exception e)
		{
			
		}
		return success;
	}
}
