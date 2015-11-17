<%@ page session="true" %>
<%@page import="bean.LoginDao" %>
<jsp:useBean id="obj" class="bean.LoginBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = LoginDao.validate(obj); 
if(status > 0)
{
	session.setAttribute("session","TRUE");
	session.setAttribute("userid",status);
	if(obj.getUsertype().equals("S"))
	{
		response.sendRedirect("StudentProfile.jsp");
	}
	else
	{
		response.sendRedirect("TutorProfile.jsp");
	}
}
else
{
	
	out.print("Unable to login. Pease, try again.");
	%>
		<jsp:include page="Login.jsp"></jsp:include>
	<%
	}
	%>

