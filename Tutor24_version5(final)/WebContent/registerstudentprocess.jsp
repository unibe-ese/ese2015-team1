<%@ page session="true" %>
<%@page import="bean.RegisterStudentDao"%>  
<jsp:useBean id="obj" class="bean.RegisterStudentBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterStudentDao.RegisterStudent(obj);  
if(status>0) 
{
	%>
	<jsp:include page="RegisterStudent.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "You registered successfully. <a href='Login.jsp' style='font-style:italic'>  Login Now</a>";
	window.scrollTo(100, 0);
</script>
<%
}
else if(status == -1)
{
	%>
	<jsp:include page="RegisterStudent.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Email entered is already registered.";
	window.scrollTo(100, 0);
</script>
<%
}
else
{
 	%>
	<jsp:include page="RegisterStudent.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Unable to register. Please try again.";
	window.scrollTo(100, 0);
</script>
<%
}
%> 