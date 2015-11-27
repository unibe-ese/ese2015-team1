<%@ page session="true" %>
<%@page import="bean.TutorProfileDao" %>
<jsp:useBean id="obj" class="bean.TutorProfileBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = TutorProfileDao.UpdateTutorProfile(obj, (Integer)session.getAttribute("userid")); 
if(status > 0){
	out.print("Tutor profile updated successfully.");
	//response.sendRedirect("StudentProfile.jsp");
	//session.setAttribute("session","TRUE");

}
else
{
	out.print("Unable to Update Tutor profile. Pease, try again.");
}
%>