<%@page import="bean.RegisterStudentDao"%>  
<jsp:useBean id="obj" class="bean.RegisterStudentBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterStudentDao.RegisterStudent(obj);  
if(status>0) 
{
	out.print("You registered successfully. Please Login now.");  
	response.sendRedirect("Login.jsp");
}
else
{
 	out.print("Unable to register. Please try again.");	
}
%> 