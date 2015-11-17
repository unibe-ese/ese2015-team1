<%@page import="bean.StudentProfileDao" %>
<jsp:useBean id="obj" class="bean.StudentProfileBean" />

<jsp:setProperty property="*" name="obj"/>

<%
boolean status = StudentProfileDao.UpdateStudentProfile(obj); 
if(status== true){
	out.print("Student profile updated successfully.");
	//response.sendRedirect("StudentProfile.jsp");
	//session.setAttribute("session","TRUE");

}
else
{
	out.print("Unable to Update Student profile. Pease, try again.");
}
%>