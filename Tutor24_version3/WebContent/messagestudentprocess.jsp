
<%@ page session="true" %>
<%@page import="bean.MessageStudentDao" %>
<jsp:useBean id="obj" class="bean.MessageStudentBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = MessageStudentDao.SaveStudentMessage(obj); 
if(status > 0)
{
	response.sendRedirect("SearchStudent.jsp");
}
else
{
	out.print("Unable to send message. Pease, try again.");
}
%>