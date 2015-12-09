
<%@ page session="true" %>
<%@page import="bean.MessageTutorDao" %>
<jsp:useBean id="obj" class="bean.MessageTutorBean" />

<jsp:setProperty property="*" name="obj"/>

<%
//session.setAttribute("tutorid",request.getParameter("tutorid"));
int status = MessageTutorDao.SaveTutorMessage(obj); 
if(status > 0)
{
	%>
	<jsp:include page="MessageTutor.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Message sent successfully.";
	</script>
<%
}
else
{
	%>
	<jsp:include page="MessageTutor.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Message sent successfully.";
	</script>
<%
}
%>