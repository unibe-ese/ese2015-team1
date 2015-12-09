<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@page import="com.mysql.fabric.Response"%>
<%@ page session="true" %>
<%@page import="bean.StudentProfileDao" %>
<jsp:useBean id="obj" class="bean.StudentProfileBean" />

<jsp:setProperty property="*" name="obj"/>

<%
int status = StudentProfileDao.UpdateStudentProfile(obj, (Integer)session.getAttribute("userid")); 

/**
try
{
String photograph ="";
String itemName = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
String name = item.getFieldName();
String value = item.getString();
if(name.equals("photograph"))
{
	photograph = value;
}
 
}
else
{
try
{
itemName = item.getName();
String path = config.getServletContext().getRealPath("/") + "pic\\" + itemName;
File savedFile = new File(path);
item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}

}
}
catch (Exception e){
out.println(e.getMessage());
}

**/







if(status > 0){
	//response.sendRedirect("StudentProfile.jsp");
	//out.print("Student profile updated successfully.");
	%>
	<jsp:include page="StudentProfile.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Student profile updated successfully.";
	window.scrollTo(100, 0);
</script>
<%
	
}
else
{
	//response.sendRedirect("StudentProfile.jsp");
	//out.print("Unable to Update Student profile. Pease, try again.");
	%>
	<jsp:include page="StudentProfile.jsp"></jsp:include>
	<script type="text/javascript">
	document.getElementById("message").innerHTML = "Unable to Update Student profile. Pease, try again.";
	window.scrollTo(100, 0);
</script>
<%
}
%>