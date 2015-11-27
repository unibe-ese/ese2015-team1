package bean;
import java.sql.*;

public class ConnectionProvider {
	static Connection con=null;
	
	public static Connection getCon()
	{
		try
		{
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
			//String dbUrl = "jdbc:sqlserver://NOIBRKHP2480;databaseName=Tutor";//user=sa;password=braj";
			//String dbUrl = "jdbc:sqlserver://NOIBRKHP2480/Tutor;user=sa;password=braj";
			//con = DriverManager.getConnection(dbUrl,"sa","braj");
			//return con = DriverManager.getConnection("jdbc:sqlserver://NOIBRKHP2480/Tutor","sa","braj");
			
			Class.forName("com.mysql.jdbc.Driver");
			return	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tutor?"
              + "user=root&password=braj");
		}
		catch(Exception e)
		{
			
		}
		return con;
	}
}