<%@page import="bean.RegisterTutorDao"%>  
<jsp:useBean id="obj" class="bean.RegisterTutorbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterTutorDao.RegisterTutor(obj);  
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