package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterTutorDao {

	public static int RegisterTutor (RegisterTutorbean bean)
	{
		Integer success= 0;
		try
		{
			Connection con = ConnectionProvider.getCon();
			
			PreparedStatement pt = con.prepareStatement("SELECT StudentId as id FROM tutor.tblstudent where email =? union SELECT TutorId as id FROM tutor.tbltutor where email =?");
			pt.setString(1, bean.getEmail());
			pt.setString(2, bean.getEmail());
			
			ResultSet rt=pt.executeQuery();
			while(rt.next())
			{
				success = -1;
			}
			
			if(success.equals(0))
				{
				
				PreparedStatement ps = con.prepareStatement("INSERT INTO tblTutor (Email,Password,FirstName,LastName,DateOfBirth,Sex,City,Address,PostalCode,Phone,MembershipType,Education,SubjectExperience,SubjectsOffered,LanguageAbility,Rate,Description,a69m,a69t,a69w,a69th,a69f,a69sa,a69su,a912m,a912t,a912w,a912th,a912f,a912sa,a912su,p123m,p123t,p123w,p123th,p123f,p123sa,p123su,p36m,p36t,p36w,p36th,p36f,p36sa,p36su,p69m,p69t,p69w,p69th,p69f,p69sa,p69su) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				
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
				
				
				success =	ps.executeUpdate();
				if(success > 0)
				{
					PreparedStatement pq = con.prepareStatement("INSERT INTO tbltutorlanguage (German,French,Italian,English,Romanic,Spanish,Portuguese,Serbian,TutorId) VALUES (?,?,?,?,?,?,?,?,?)");
					
					
					if(bean.getGerman() == null)
					{
						pq.setString(1, "0");
					}
					else
					{
						pq.setString(1, bean.getGerman());
					}
					if(bean.getFrench() == null)
					{
						pq.setString(2, "0");
					}
					else
					{
						pq.setString(2, bean.getFrench());
					}
					if(bean.getItalian() == null)
					{
						pq.setString(3, "0");
					}
					else
					{
						pq.setString(3, bean.getItalian());
					}
					if(bean.getEnglish() == null)
					{
						pq.setString(4, "0");
					}
					else
					{
						pq.setString(4, bean.getEnglish());
					}
					if(bean.getRomanic() == null)
					{
						pq.setString(5, "0");
					}
					else
					{
						pq.setString(5, bean.getRomanic());
					}
					if(bean.getSpanish() == null)
					{
						pq.setString(6, "0");
					}
					else
					{
						pq.setString(6, bean.getSpanish());
					}
					if(bean.getPortuguese() == null)
					{
						pq.setString(7, "0");
					}
					else
					{
						pq.setString(7, bean.getPortuguese());
					}
					if(bean.getSerbian() == null)
					{
						pq.setString(8, "0");
					}
					else
					{
						pq.setString(8, bean.getSerbian());
					}
					
					PreparedStatement pa = con.prepareStatement("SELECT TutorId FROM tutor.tbltutor ORDER BY TutorId DESC LIMIT 0, 1");
					
					ResultSet ra=pa.executeQuery();
					Integer id = 0;
					while(ra.next())
					{
						id = ra.getInt("TutorId");
					}
								
					
					pq.setInt(9, id);
					pq.executeUpdate();
				}
			}
		}
		catch (Exception e)
		{
			
		}
		return success;
	}
}
