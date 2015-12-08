
<%@ page session="true" %>
<%@page import="bean.MessageStudentDao" %>
<jsp:useBean id="obj" class="bean.MessageStudentBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = MessageStudentDao.SaveStudentMessage(obj); 
if(status > 0)
{
	%>
	<jsp:include page="ReplyStudent.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Message sent successfully.";
	</script>
<%
}
else
{
	%>
	<jsp:include page="ReplyStudent.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Unable to send message. Pease, try again.";
	</script>
<%
}
%>