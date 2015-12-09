<%@ page session="true" %>
<%@page import="bean.RegisterTutorDao"%>  
<jsp:useBean id="obj" class="bean.RegisterTutorbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterTutorDao.RegisterTutor(obj);  
if(status>0) 
{
	%>
	<jsp:include page="RegisterTutor.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "You registered successfully. <a href='Login.jsp' style='font-style:italic'>  Login Now</a>";
	window.scrollTo(100, 0);
</script>
<%
}
else if(status == -1)
{
	%>
	<jsp:include page="RegisterTutor.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Email entered is already registered.";
	window.scrollTo(100, 0);
</script>
<%
}
else
{
 	%>
	<jsp:include page="RegisterTutor.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Unable to register. Please try again.";
	window.scrollTo(100, 0);
</script>
<%
}
%> 