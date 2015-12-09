<%@page import="java.sql.*" %>
<%@page import="bean.ConnectionProvider" %>

<%@ page session="true" %>
<%@page import="bean.LoginDao" %>
<jsp:useBean id="obj" class="bean.LoginBean" />

<jsp:setProperty property="*" name="obj"/>

<%
Integer id =0;
try
	{
		Connection con = ConnectionProvider.getCon();
		 		
		PreparedStatement ps = con.prepareStatement("select StudentId from tblStudent where Email=? and Password=?");
		
		ps.setString(1, obj.getEmail());
		ps.setString(2, obj.getPassword());
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			id = rs.getInt("StudentId");
			session.setAttribute("session","TRUE");
			session.setAttribute("userid",id);
			session.setAttribute("type","Student");
			response.sendRedirect("StudentProfile.jsp");
		}
		if(id.equals(0))
		{
			Connection connect = ConnectionProvider.getCon();
			PreparedStatement pt = connect.prepareStatement("select TutorId from tbltutor where Email=? and Password=?");
			pt.setString(1, obj.getEmail());
			pt.setString(2, obj.getPassword());
			
			ResultSet rt = pt.executeQuery();
			while(rt.next())
			{
				id = rt.getInt("TutorId");
				session.setAttribute("session","TRUE");
				session.setAttribute("userid",id);
				session.setAttribute("type","Tutor");
				response.sendRedirect("TutorProfile.jsp");
			}
		}
		else if(id.equals(0))
		{
			%>
			<jsp:include page="Login.jsp"></jsp:include>
			<script type="text/javascript">
			 	document.getElementById("message").innerHTML = "Unable to login. Pease, try again.";
			</script>
		<%
		}
		
	}
catch(Exception e){}
%>




