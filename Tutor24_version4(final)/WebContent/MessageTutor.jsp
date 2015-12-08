<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message Tutor</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript">
        function Redirect() {
            window.location.href = "Login.jsp";
        }
        function Validate(student)
        {
        	var error="";
        	
        	if(student.messages.value.length == 0)
    		{
    			error += "Message is required. </br>" 
    		}
        	
        	if(error.length > 0)
        		{
        		message.innerHTML = error;
        		return false;
        		}
        	else
        		{
        		return true;
        		}
        }
    </script>
</head>
<body>
<%
 session.setAttribute("tutorid", request.getParameter("tutorid")) ;
%>
<form action="messagetutorprocess.jsp" method="post" onSubmit="return Validate(this)">
    <h1>
    </h1>
    <div class="singup">
        <h4>
            <ul id="menu">
                <li><a href="StudentProfile.jsp">My Student Profile</a></li>
                <li><a href="SearchTutor.jsp">Search Tutor</a></li>
                <li><a href="StudentMessage.jsp">Messages</a></li>
                <li><a href="Payment.jsp">Payment</a></li>
            </ul>
        </h4>
        <div class="logout">
            <a href="Login.jsp">Log Out</a></div>
        <div class="signup-main">
            <h5>
                Message Tutor</h5>
            <table style="width: 100%; margin-left: 20px; margin-right: 20px;">
                 <tr>
		            <td colspan="3" style="padding-bottom:15px;">
		            	<span id="message" class="message"></span>
		            </td>
	            </tr>
                <tr>
                    <td style="width: 25%;">
                        Message :
                    </td>
                    <td style="width: 60%;">
                        <input id="messages" name="messages" type="text" value="" />
                    </td>
                    <td style="width: 30%;">
                    </td>
                </tr>
                 <tr>
                    <td style="width: 25%;">
                        
                    </td>
                    <td style="width: 60%;">
                        <input id="tutorid" name="tutorid" type="hidden" value= '<%=request.getParameter("tutorid") %>' />
                    </td>
                    <td style="width: 30%;">
                    </td>
                </tr>
                 <tr>
                    <td style="width: 25%;">
                        
                    </td>
                    <td style="width: 60%;">
                        <input id="studentid" name="studentid" type="hidden" value= '<%= session.getAttribute("userid") %>' />
                    </td>
                    <td style="width: 30%;">
                    </td>
                </tr>
                
                
            </table>
            <div class="send-button">
                <input type="submit" value="Send" />
            </div>
        </div>
    </div>
    <br/>
    </form>
</body>
</html>