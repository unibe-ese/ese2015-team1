package bean;
import java.sql.*;

public class ConnectionProvider {
	static Connection con=null;
	
	public static Connection getCon()
	{
		try
		{
						Class.forName("com.mysql.jdbc.Driver");
			return	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutor?"
					+ "user=root&password=maik756016");
					
		}
		catch(Exception e)
		{
			
		}
		return con;
	}
}