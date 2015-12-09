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
										
					obj.setA69M(rs.getString("a69m"));
					obj.setA69t(rs.getString("a69t"));
					obj.setA69w(rs.getString("a69w"));
					obj.setA69w(rs.getString("a69w"));
					obj.setA69th(rs.getString("a69th"));
					obj.setA69f(rs.getString("a69f"));
					obj.setA69sa(rs.getString("a69sa"));
					obj.setA69su(rs.getString("a69su"));
					obj.setA912m(rs.getString("a912m"));
					obj.setA912t(rs.getString("a912t"));
					obj.setA912w(rs.getString("a912w"));
					obj.setA912th(rs.getString("a912th"));
					obj.setA912f(rs.getString("a912f"));
					
					obj.setA912sa(rs.getString("a912sa"));
					obj.setA912su(rs.getString("a912su"));
					
					obj.setP123m(rs.getString("p123m"));
					obj.setP123t(rs.getString("p123t"));
					obj.setP123w(rs.getString("p123w"));
					obj.setP123th(rs.getString("p123th"));
					obj.setP123f(rs.getString("p123f"));
					obj.setP123sa(rs.getString("p123sa"));
					obj.setP123su(rs.getString("p123su"));
					obj.setP36m(rs.getString("p36m"));
					obj.setP36t(rs.getString("p36t"));
					obj.setP36w(rs.getString("p36w"));
					obj.setP36th(rs.getString("p36th"));
					obj.setP36f(rs.getString("p36f"));
					obj.setP36sa(rs.getString("p36sa"));
					obj.setP36su(rs.getString("p36su"));
					obj.setP69m(rs.getString("p69m"));
					obj.setP69t(rs.getString("p69t"));
					obj.setP69w(rs.getString("p69w"));
					obj.setP69th(rs.getString("p69th"));
					obj.setP69f(rs.getString("p69f"));
					obj.setP69sa(rs.getString("p69sa"));
					obj.setP69su(rs.getString("p69su"));
					
					obj.setSubject(rs.getString("SubjectExperience"));
					obj.setSubjectoffered(rs.getString("SubjectsOffered"));
					obj.setLanguage(rs.getString("LanguageAbility"));
					obj.setRate(rs.getString("Rate"));
					
					
										
				}		
				
				PreparedStatement pt= null;
				pt = con.prepareStatement("SELECT * FROM tbltutorlanguage where TutorId =?");
				
				pt.setInt(1, TutorId);
				
				ResultSet rt=pt.executeQuery();
				
				while(rt.next())
				{
					obj.setGerman(rt.getString("German"));
					obj.setFrench(rt.getString("French"));
					obj.setItalian(rt.getString("Italian"));
					obj.setEnglish(rt.getString("English"));
					obj.setRomanic(rt.getString("Romanic"));
					obj.setSpanish(rt.getString("Spanish"));
					obj.setPortuguese(rt.getString("Portuguese"));
					obj.setSerbian(rt.getString("Serbian"));
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
		
		PreparedStatement pt= null;
		pt = con.prepareStatement("UPDATE tbltutorlanguage SET German=?,French=?,Italian=?,English=?,Romanic=?,Spanish=?,Portuguese=?,Serbian=? where TutorId=?");
		
		if(bean.getGerman() == null)
		{
			pt.setString(1, "0");
		}
		else
		{
			pt.setString(1, bean.getGerman());
		}
		if(bean.getFrench() == null)
		{
			pt.setString(2, "0");
		}
		else
		{
			pt.setString(2, bean.getFrench());
		}
		if(bean.getItalian() == null)
		{
			pt.setString(3, "0");
		}
		else
		{
			pt.setString(3, bean.getItalian());
		}
		if(bean.getEnglish() == null)
		{
			pt.setString(4, "0");
		}
		else
		{
			pt.setString(4, bean.getEnglish());
		}
		if(bean.getRomanic() == null)
		{
			pt.setString(5, "0");
		}
		else
		{
			pt.setString(5, bean.getRomanic());
		}
		if(bean.getSpanish() == null)
		{
			pt.setString(6, "0");
		}
		else
		{
			pt.setString(6, bean.getSpanish());
		}
		if(bean.getPortuguese() == null)
		{
			pt.setString(7, "0");
		}
		else
		{
			pt.setString(7, bean.getPortuguese());
		}
		if(bean.getSerbian() == null)
		{
			pt.setString(8, "0");
		}
		else
		{
			pt.setString(8, bean.getSerbian());
		}
		
		pt.setInt(9, TutorId);
		
		pt.executeUpdate();
				
		
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
		if(bean.getA69M() == null)
		{
			ps.setString(18, "0");
		}
		else
		{
			ps.setString(18, bean.getA69M());
		}
		if(bean.getA69t() == null)
		{
			ps.setString(19, "0");
		}
		else
		{
		ps.setString(19, bean.getA69t());
		}
		if(bean.getA69w() == null)
		{
			ps.setString(20, "0");
		}
		else
		{
			ps.setString(20, bean.getA69w());
		}
		if(bean.getA69th() == null)
		{
			ps.setString(21, "0");
		}
		else
		{
			ps.setString(21, bean.getA69th());
		}
		if(bean.getA69f() == null)
		{
			ps.setString(22, "0");
		}
		else
		{
			ps.setString(22, bean.getA69f());
		}
		if(bean.getA69sa() == null)
		{
			ps.setString(23, "0");
		}
		else
		{
			ps.setString(23, bean.getA69sa());
		}
		if(bean.getA69su() == null)
		{
			ps.setString(24, "0");
		}
		else
		{
			ps.setString(24, bean.getA69su());
		}
		if(bean.getA912m() == null)
		{
			ps.setString(25, "0");
		}
		else
		{
			ps.setString(25, bean.getA912m());
		}
		if(bean.getA912t() == null)
		{
			ps.setString(26, "0");
		}
		else
		{
			ps.setString(26, bean.getA912t());
		}
		if(bean.getA912w() == null)
		{
			ps.setString(27, "0");
		}
		else
		{
			ps.setString(27, bean.getA912w());
		}
		if(bean.getA912th() == null)
		{
			ps.setString(28, "0");
		}
		else
		{
			ps.setString(28, bean.getA912th());
		}
		if(bean.getA912f() == null)
		{
			ps.setString(29, "0");
		}
		else
		{
			ps.setString(29, bean.getA912f());
		}
		if(bean.getA912sa() == null)
		{
			ps.setString(30, "0");
		}
		else
		{
			ps.setString(30, bean.getA912sa());
		}
		if(bean.getA912su() == null)
		{
			ps.setString(31, "0");
		}
		else
		{
		ps.setString(31, bean.getA912su());}
		if(bean.getP123m() == null)
		{
			ps.setString(32, "0");
		}
		else
		{
		ps.setString(32, bean.getP123m());}
		if(bean.getP123t() == null)
		{
			ps.setString(33, "0");
		}
		else
		{
		ps.setString(33, bean.getP123t());}
		if(bean.getP123w() == null)
		{
			ps.setString(34, "0");
		}
		else
		{
		ps.setString(34, bean.getP123w());}
		if(bean.getP123th() == null)
		{
			ps.setString(35, "0");
		}
		else
		{
		ps.setString(35, bean.getP123th());}
		if(bean.getP123f() == null)
		{
			ps.setString(36, "0");
		}
		else
		{
		ps.setString(36, bean.getP123f());}
		if(bean.getP123sa() == null)
		{
			ps.setString(37, "0");
		}
		else
		{
		ps.setString(37, bean.getP123sa());}
		
		if(bean.getP123su() == null)
		{
			ps.setString(38, "0");
		}
		else
		{
		ps.setString(38, bean.getP123su());}
		
		if(bean.getP36m() == null)
		{
			ps.setString(39, "0");
		}
		else
		{
		ps.setString(39, bean.getP36m());}
		
		if(bean.getP36t() == null)
		{
			ps.setString(40, "0");
		}
		else
		{
		ps.setString(40, bean.getP36t());}
		
		if(bean.getP36w() == null)
		{
			ps.setString(41, "0");
		}
		else
		{
		ps.setString(41, bean.getP36w());}
		
		if(bean.getP36th() == null)
		{
			ps.setString(42, "0");
		}
		else
		{
		ps.setString(42, bean.getP36th());}
		
		if(bean.getP36f() == null)
		{
			ps.setString(43, "0");
		}
		else
		{
		ps.setString(43, bean.getP36f());}
		
		if(bean.getP36sa() == null)
		{
			ps.setString(44, "0");
		}
		else
		{
		ps.setString(44, bean.getP36sa());}
		
		if(bean.getP36su() == null)
		{
			ps.setString(45, "0");
		}
		else
		{
		ps.setString(45, bean.getP36su());}
		
		if(bean.getP69m() == null)
		{
			ps.setString(46, "0");
		}
		else
		{
		ps.setString(46, bean.getP69m());}
		
		if(bean.getP69t() == null)
		{
			ps.setString(47, "0");
		}
		else
		{
		ps.setString(47, bean.getP69t());}
		
		if(bean.getP69w() == null)
		{
			ps.setString(48, "0");
		}
		else
		{
		ps.setString(48, bean.getP69w());}
		
		if(bean.getP69th() == null)
		{
			ps.setString(49, "0");
		}
		else
		{
		ps.setString(49, bean.getP69th());}
		
		if(bean.getP69f() == null)
		{
			ps.setString(50, "0");
		}
		else
		{
		ps.setString(50, bean.getP69f());}
		
		if(bean.getP69sa() == null)
		{
			ps.setString(51, "0");
		}
		else
		{
		ps.setString(51, bean.getP69sa());}
		
		if(bean.getP69su() == null)
		{
			ps.setString(52, "0");
		}
		else
		{
		ps.setString(52, bean.getP69su());
		}
		
		ps.setInt(53, TutorId);
					
		success =	ps.executeUpdate();
	}
	catch (Exception e)
	{
		
	}
	return success;
}

}
