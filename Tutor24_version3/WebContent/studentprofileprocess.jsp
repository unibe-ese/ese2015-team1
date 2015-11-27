<%@ page session="true" %>
<%@page import="bean.StudentProfileDao" %>
<jsp:useBean id="obj" class="bean.StudentProfileBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = StudentProfileDao.UpdateStudentProfile(obj, (Integer)session.getAttribute("userid")); 
if(status > 0){
	out.print("Student profile updated successfully.");
	//response.sendRedirect("StudentProfile.jsp");
	//session.setAttribute("session","TRUE");

}
else
{
	out.print("Unable to Update Student profile. Pease, try again.");
}
%>