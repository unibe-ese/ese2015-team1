package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TutorProfileDao {
	
public static TutorProfileBean GetTutor(int TutorId){
		
		TutorProfileBean obj = new TutorProfileBean();
		try
			{
				Connection con = ConnectionProvider.getCon();
				PreparedStatement ps= null;
				ps = con.prepareStatement("SELECT * FROM tbltutor where TutorId =?");
				
				ps.setInt(1, TutorId);
				
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
					obj.setMembership(rs.getString("MembershipType"));
					obj.setEducation(rs.getInt("Education"));
					obj.setAdditionalinformation(rs.getString("Description"));
										
					obj.setA69M(rs.getBoolean("a69m"));
					obj.setA69t(rs.getBoolean("a69t"));
					obj.setA69w(rs.getBoolean("a69w"));
					obj.setA69w(rs.getBoolean("a69w"));
					obj.setA69th(rs.getBoolean("a69th"));
					obj.setA69f(rs.getBoolean("a69f"));
					obj.setA69sa(rs.getBoolean("a69sa"));
					obj.setA69su(rs.getBoolean("a69su"));
					obj.setA912m(rs.getBoolean("a912m"));
					obj.setA912t(rs.getBoolean("a912t"));
					obj.setA912w(rs.getBoolean("a912w"));
					obj.setA912th(rs.getBoolean("a912th"));
					obj.setA912f(rs.getBoolean("a912f"));
					
					obj.setA912sa(rs.getBoolean("a912sa"));
					obj.setA912su(rs.getBoolean("a912su"));
					
					obj.setP123m(rs.getBoolean("p123m"));
					obj.setP123t(rs.getBoolean("p123t"));
					obj.setP123w(rs.getBoolean("p123w"));
					obj.setP123w(rs.getBoolean("p123w"));
					obj.setP123f(rs.getBoolean("p123f"));
					obj.setP123sa(rs.getBoolean("p123sa"));
					obj.setP123su(rs.getBoolean("p123su"));
					obj.setP36m(rs.getBoolean("p36m"));
					obj.setP36t(rs.getBoolean("p36t"));
					obj.setP36w(rs.getBoolean("p36w"));
					obj.setP36th(rs.getBoolean("p36th"));
					obj.setP36f(rs.getBoolean("p36f"));
					obj.setP36sa(rs.getBoolean("p36sa"));
					obj.setP36su(rs.getBoolean("p36su"));
					obj.setP69m(rs.getBoolean("p69m"));
					obj.setP69t(rs.getBoolean("p69t"));
					obj.setP69w(rs.getBoolean("p69w"));
					obj.setP69th(rs.getBoolean("p69th"));
					obj.setP69f(rs.getBoolean("p69f"));
					obj.setP69sa(rs.getBoolean("p69sa"));
					obj.setP69su(rs.getBoolean("p69su"));
					
					obj.setSubject(rs.getString("SubjectExperience"));
					obj.setSubjectoffered(rs.getString("SubjectsOffered"));
					obj.setLanguage(rs.getString("LanguageAbility"));
					obj.setRate(rs.getString("Rate"));
										
				}		
			}
			catch(Exception e)
			{
				
			}
			
		return obj;	
				
	}

public static int UpdateTutorProfile(TutorProfileBean bean, int TutorId)
{
	int success= 0;
	try
	{
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps= null;
		ps = con.prepareStatement("UPDATE tbltutor SET Email=?,Password=?,FirstName=?,LastName=?,DateOfBirth=?,Sex=?,City=?,Address=?,PostalCode=?,Phone=?,MembershipType=?,Education=?,SubjectExperience=?,SubjectsOffered=?,LanguageAbility=?,Rate=?,Description=?,a69m=?,a69t=?,a69w=?,a69th=?,a69f=?,a69sa=?,a69su=?,a912m=?,a912t=?,a912w=?,a912th=?,a912f=?,a912sa=?,a912su=?,p123m=?,p123t=?,p123w=?,p123th=?,p123f=?,p123sa=?,p123su=?,p36m=?,p36t=?,p36w=?,p36th=?,p36f=?,p36sa=?,p36su=?,p69m=?,p69t=?,p69w=?,p69th=?,p69f=?,p69sa=?,p69su=? where TutorId=?");
		
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
		ps.setString(11, bean.getMembership());
		ps.setInt(12, bean.getEducation());
		ps.setString(13, bean.getSubject());
		ps.setString(14, bean.getSubjectoffered());
		ps.setString(15, bean.getLanguage());
		ps.setString(16, bean.getRate());
		ps.setString(17, bean.getAdditionalinformation());
		ps.setBoolean(18, bean.getA69M());
		ps.setBoolean(19, bean.getA69t());
		ps.setBoolean(20, bean.getA69w());
		ps.setBoolean(21, bean.getA69th());
		ps.setBoolean(22, bean.getA69f());
		ps.setBoolean(23, bean.getA69sa());
		ps.setBoolean(24, bean.getA69su());
		ps.setBoolean(25, bean.getA912m());
		ps.setBoolean(26, bean.getA912t());
		ps.setBoolean(27, bean.getA912w());
		ps.setBoolean(28, bean.getA912th());
		ps.setBoolean(29, bean.getA912f());
		ps.setBoolean(30, bean.getA912sa());
		ps.setBoolean(31, bean.getA912su());
		ps.setBoolean(32, bean.getP123m());
		ps.setBoolean(33, bean.getP123t());
		ps.setBoolean(34, bean.getP123w());
		ps.setBoolean(35, bean.getP123th());
		ps.setBoolean(36, bean.getP123f());
		ps.setBoolean(37, bean.getP123sa());
		ps.setBoolean(38, bean.getP123su());
		ps.setBoolean(39, bean.getP36m());
		ps.setBoolean(40, bean.getP36t());
		ps.setBoolean(41, bean.getP36w());
		ps.setBoolean(42, bean.getP36th());
		ps.setBoolean(43, bean.getP36f());
		ps.setBoolean(44, bean.getP36sa());
		ps.setBoolean(45, bean.getP36su());
		ps.setBoolean(46, bean.getP69m());
		ps.setBoolean(47, bean.getP69t());
		ps.setBoolean(48, bean.getP69w());
		ps.setBoolean(49, bean.getP69th());
		ps.setBoolean(50, bean.getP69f());
		ps.setBoolean(51, bean.getP69sa());
		ps.setBoolean(52, bean.getP69su());
		
		ps.setInt(53, TutorId);
					
		success =	ps.executeUpdate();
	}
	catch (Exception e)
	{
		
	}
	return success;
}

}
