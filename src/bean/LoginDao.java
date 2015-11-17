package bean;
import java.sql.*;

import javax.servlet.http.HttpSession;

public class LoginDao {

	@SuppressWarnings("null")
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
			
			//HttpSession session= null;
			
			while(rs.next())
			{
				//status = true;
				if(bean.getUsertype().equals("S"))
				{
					//session.setAttribute("userid",rs.getInt("StudentId"));
					type = rs.getInt("StudentId");
				}
				else
				{
					//session.setAttribute("userid",rs.getInt("TutorId"));
					type = rs.getInt("TutorId");
				}
			}
			//status=rs.next();
			//if(status == true)
			//{
								
				//if(bean.getUsertype().equals("S"))
				//{
					//type=1;
				//}
				//else
				//{
					//type=2;
				//}
				
			//}
			
		}
		catch(Exception e){}
		
		return type;
	}
	
}
