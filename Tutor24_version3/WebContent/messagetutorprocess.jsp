
<%@ page session="true" %>
<%@page import="bean.MessageTutorDao" %>
<jsp:useBean id="obj" class="bean.MessageTutorBean" />

<jsp:setProperty property="*" name="obj"/>

<%
//session.setAttribute("tutorid",request.getParameter("tutorid"));
int status = MessageTutorDao.SaveTutorMessage(obj); 
if(status > 0)
{
	response.sendRedirect("SearchTutor.jsp");
}
else
{
	out.print("Unable to send message. Pease, try again.");
}
%>