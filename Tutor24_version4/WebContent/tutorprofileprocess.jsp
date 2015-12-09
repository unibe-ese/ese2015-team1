<%@ page session="true" %>
<%@page import="bean.TutorProfileDao" %>
<jsp:useBean id="obj" class="bean.TutorProfileBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = TutorProfileDao.UpdateTutorProfile(obj, (Integer)session.getAttribute("userid")); 
if(status > 0){
	//out.print("Tutor profile updated successfully.");
	%>
	<jsp:include page="TutorProfile.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Tutor profile updated successfully.";
	window.scrollTo(100, 0);
</script>
<%

}
else
{
	//out.print("Unable to Update Tutor profile. Pease, try again.");
	%>
	<jsp:include page="TutorProfile.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Unable to Update Tutor profile. Pease, try again.";
	window.scrollTo(100, 0);
</script>
<%

}
%>