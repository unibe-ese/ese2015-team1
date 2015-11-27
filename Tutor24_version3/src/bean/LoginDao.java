package bean;
import java.sql.*;

public class LoginDao {

	public static int validate(LoginBean bean){
		//boolean status=false;
		int type =0;
		try{
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps= null;
			if(bean.getUsertype().equals("S"))
			{
				ps = con.prepareStatement("select StudentId from tblStudent where Email=? and Password=?");
			}
			else
			{
				ps = con.prepareStatement("select TutorId from tbltutor where Email=? and Password=?");
			}
			ps.setString(1,bean.getEmail());
			ps.setString(2, bean.getPassword());
			
			ResultSet rs=ps.executeQuery();
			
					
			while(rs.next())
			{
				
				if(bean.getUsertype().equals("S"))
				{
					
					type = rs.getInt("StudentId");
				}
				else
				{
					
					type = rs.getInt("TutorId");
				}
			}
			
			
		}
		catch(Exception e){}
		
		return type;
	}
	
}
